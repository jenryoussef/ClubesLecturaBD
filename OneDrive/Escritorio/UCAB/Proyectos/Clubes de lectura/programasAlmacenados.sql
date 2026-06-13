CREATE OR REPLACE PROCEDURE ADFJ_P_REGISTRAR_INASISTENCIA (
    p_id_club_cal  IN NUMBER,
    p_id_grupo_cal IN NUMBER,
    p_isbn         IN NUMBER,
    p_f_reunion    IN DATE,
    p_id_lector    IN NUMBER,
    p_operacion    IN VARCHAR2 -- 'FALTO' o 'ASISTIO'
) AS
    v_fecha_reunion DATE;
    v_existe_falta  NUMBER;
    -- Variables para capturar la clave compuesta de la asignación del miembro
    v_id_club_grupo  NUMBER;
    v_id_club_memb   NUMBER;
    v_id_grupo_asig  NUMBER;
    v_f_ing_club     DATE;
    v_f_ing_grupo    DATE;
BEGIN
    -- 1. Validar integridad de la reunión en el calendario
    SELECT f_reunion INTO v_fecha_reunion 
    FROM ADFJ_CAL_REUNIONES 
    WHERE id_club = p_id_club_cal 
      AND id_grupo = p_id_grupo_cal 
      AND isbn = p_isbn 
      AND f_reunion = p_f_reunion;

    -- 2. Regla de negocio: No se puede modificar asistencia de reuniones en el futuro
    IF v_fecha_reunion > TRUNC(SYSDATE) THEN
        RAISE_APPLICATION_ERROR(-20001, 'ERROR: No se puede tomar asistencia para una reunión futura.');
    END IF;

    -- 3. Extraer la asignación histórica activa usando Joins Implícitos conceptuales si aplicara,
    --    en este caso es una consulta directa con filtros de validez de fecha.
    SELECT id_club_grupo, id_club_memb, id_grupo, f_ing_club, f_ing_grupo
    INTO v_id_club_grupo, v_id_club_memb, v_id_grupo_asig, v_f_ing_club, v_f_ing_grupo
    FROM ADFJ_HIST_ASIGNACIONES
    WHERE id_club_grupo = p_id_club_cal 
      AND id_grupo = p_id_grupo_cal 
      AND id_lector = p_id_lector
      AND f_ing_grupo <= p_f_reunion
      AND (f_fin_grupo IS NULL OR f_fin_grupo >= p_f_reunion);

    -- 4. Verificar si ya existe previamente reportada la inasistencia
    SELECT COUNT(*) INTO v_existe_falta 
    FROM ADFJ_INASISTENCIAS 
    WHERE id_club_cal = p_id_club_cal 
      AND id_grupo_cal = p_id_grupo_cal 
      AND isbn = p_isbn 
      AND f_reunion = p_f_reunion 
      AND id_lector = p_id_lector;

    -- 5. Bifurcación de acciones
    IF UPPER(p_operacion) = 'FALTO' THEN
        IF v_existe_falta = 0 THEN
            INSERT INTO ADFJ_INASISTENCIAS (
                id_club_grupo, id_club_memb, id_grupo_asig, id_lector, f_ing_club, f_ing_grupo,
                id_club_cal, id_grupo_cal, isbn, f_reunion
            ) VALUES (
                v_id_club_grupo, v_id_club_memb, v_id_grupo_asig, p_id_lector, v_f_ing_club, v_f_ing_grupo,
                p_id_club_cal, p_id_grupo_cal, p_isbn, p_f_reunion
            );
        END IF;
    ELSIF UPPER(p_operacion) = 'ASISTIO' THEN
        IF v_existe_falta > 0 THEN
            DELETE FROM ADFJ_INASISTENCIAS 
            WHERE id_club_cal = p_id_club_cal 
              AND id_grupo_cal = p_id_grupo_cal 
              AND isbn = p_isbn 
              AND f_reunion = p_f_reunion 
              AND id_lector = p_id_lector;
        END IF;
    ELSE
        RAISE_APPLICATION_ERROR(-20002, 'ERROR: Operación no válida. Use "FALTO" o "ASISTIO".');
    END IF;
    
    COMMIT;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20003, 'ERROR: Los parámetros ingresados no corresponden a una reunión válida o el lector no pertenece al grupo.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;



CREATE OR REPLACE PROCEDURE ADFJ_P_MODIFICAR_MODERADOR (
    p_id_club    IN NUMBER,
    p_id_grupo   IN NUMBER,
    p_isbn       IN NUMBER,
    p_f_reunion  IN DATE,
    p_id_lector  IN NUMBER
) AS
    v_realizada      VARCHAR2(1);
    v_id_club_memb   NUMBER;
    v_id_club_grupo  NUMBER;
    v_id_grupo       NUMBER;
    v_f_ing_club     DATE;
    v_f_ing_grupo    DATE;
BEGIN
    -- 1. Validar que la reunión no se encuentre cerrada
    SELECT realizada INTO v_realizada
    FROM ADFJ_CAL_REUNIONES
    WHERE id_club = p_id_club 
      AND id_grupo = p_id_grupo 
      AND isbn = p_isbn 
      AND f_reunion = p_f_reunion;

    IF v_realizada = 'S' THEN
        RAISE_APPLICATION_ERROR(-20004, 'ERROR: No es posible cambiar el moderador de una reunión que ya fue realizada.');
    END IF;

    -- 2. Asegurar que el nuevo moderador pertenezca activamente al grupo histórico de asignación
    SELECT id_club_memb, id_club_grupo, id_grupo, f_ing_club, f_ing_grupo
    INTO v_id_club_memb, v_id_club_grupo, v_id_grupo, v_f_ing_club, v_f_ing_grupo
    FROM ADFJ_HIST_ASIGNACIONES
    WHERE id_club_grupo = p_id_club 
      AND id_grupo = p_id_grupo 
      AND id_lector = p_id_lector
      AND f_ing_grupo <= p_f_reunion 
      AND (f_fin_grupo IS NULL OR f_fin_grupo >= p_f_reunion);

    -- 3. Actualizar la clave compuesta exigida por la restricción FK_MODERADOR
    UPDATE ADFJ_CAL_REUNIONES
    SET id_moderador = p_id_lector,
        id_club_memb_mod = v_id_club_memb,
        id_club_grupo_mod = v_id_club_grupo,
        id_grupo_mod = v_id_grupo,
        f_ing_club_mod = v_f_ing_club,
        f_ing_grupo_mod = v_f_ing_grupo
    WHERE id_club = p_id_club 
      AND id_grupo = p_id_grupo 
      AND isbn = p_isbn 
      AND f_reunion = p_f_reunion;

    COMMIT;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20005, 'ERROR: El lector no puede ser moderador debido a que no está registrado en este grupo.');
END;


CREATE OR REPLACE PROCEDURE ADFJ_P_CIERRE_DISCUSION (
    p_id_club       IN NUMBER,
    p_id_grupo      IN NUMBER,
    p_isbn          IN NUMBER,
    p_f_reunion     IN DATE,
    p_conclusiones  IN VARCHAR2,
    p_valoracion    IN NUMBER, 
    p_es_ultima     IN VARCHAR2 DEFAULT 'N' 
) AS
    v_realizada VARCHAR2(1);
BEGIN
    -- 1. Validar si ya está cerrada
    SELECT realizada INTO v_realizada
    FROM ADFJ_CAL_REUNIONES
    WHERE id_club = p_id_club 
      AND id_grupo = p_id_grupo 
      AND isbn = p_isbn 
      AND f_reunion = p_f_reunion;

    IF v_realizada = 'S' THEN
        RAISE_APPLICATION_ERROR(-20006, 'ERROR: Esta reunión ya fue completada y cerrada previamente.');
    END IF;

    -- 2. Validar restricciones del dominio de datos de los CHECKS de la tabla
    IF p_valoracion NOT BETWEEN 1 AND 5 THEN
        RAISE_APPLICATION_ERROR(-20007, 'ERROR: La valoración debe estar comprendida obligatoriamente en el rango del 1 al 5.');
    END IF;

    IF p_conclusiones IS NULL OR LENGTH(TRIM(p_conclusiones)) = 0 THEN
        RAISE_APPLICATION_ERROR(-20008, 'ERROR: No puede cerrar una discusión sin ingresar una minuta de conclusiones válida.');
    END IF;
    
    IF p_es_ultima NOT IN ('S', 'N') THEN
        RAISE_APPLICATION_ERROR(-20009, 'ERROR: El indicador de última reunión solo acepta los caracteres "S" o "N".');
    END IF;

    -- 3. Modificar la tupla de la reunión marcándola como realizada
    UPDATE ADFJ_CAL_REUNIONES
    SET realizada = 'S',
        conclusiones = p_conclusiones,
        valoracion = p_valoracion,
        ultima_reunion = p_es_ultima
    WHERE id_club = p_id_club 
      AND id_grupo = p_id_grupo 
      AND isbn = p_isbn 
      AND f_reunion = p_f_reunion;

    COMMIT;
END;
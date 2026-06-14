CREATE OR REPLACE PROCEDURE ADFJ_AGENDAR_REUNIONES (
    p_id_club       IN NUMBER,
    p_id_grupo      IN NUMBER,
    p_isbn          IN NUMBER,
    p_cant_reuniones IN NUMBER
) IS
   
    v_tipo_grupo       VARCHAR2(1);
    v_dia_semana_grupo NUMBER; 
    v_hora_grupo       VARCHAR2(5);
    v_id_mod           NUMBER;
    v_id_club_memb_mod NUMBER;
    v_id_club_g_mod    NUMBER;
    v_id_grupo_mod     NUMBER;
    v_f_ing_club_mod   DATE;
    v_f_ing_grupo_mod  DATE;
    v_fecha_base       DATE;
    v_fecha_reunion    DATE;
    v_ultima_reunion   VARCHAR2(1);
    v_count_dias       NUMBER := 0;
    v_existisbn        NUMBER;
BEGIN
    
    IF p_cant_reuniones NOT BETWEEN 1 AND 3 THEN
        RAISE_APPLICATION_ERROR(-20001, 'ERROR: Solo se pueden asignar entre 1 y 3 reuniones.');
    END IF;
    
    BEGIN
        SELECT 1 
        INTO v_existisbn
        FROM adfj_libros l
        WHERE l.isbn = p_isbn;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20004, 'ERROR: El ISBN ingresado no se encuentra en la base de datos.');
    
    END;
    
    -- con esto guardamos todos los datos necesarios del grupo
    BEGIN
        SELECT TIPO, DIA, TO_CHAR(HORA, 'HH24:MI')
        INTO v_tipo_grupo, v_dia_semana_grupo, v_hora_grupo
        FROM ADFJ_GRUPOS_LECTURA
        WHERE ID_CLUB = p_id_club AND ID_GRUPO = p_id_grupo;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20002, 'ERROR: El grupo o club especificado no existe.');
    END;

-- Busca moderadores que no esten ocupados
    BEGIN
        SELECT ID_LECTOR, ID_CLUB_MEMB, ID_CLUB_GRUPO, ID_GRUPO, F_ING_CLUB, F_ING_GRUPO
        INTO v_id_mod, v_id_club_memb_mod, v_id_club_g_mod, v_id_grupo_mod, v_f_ing_club_mod, v_f_ing_grupo_mod
        FROM (
            SELECT ha.ID_LECTOR, ha.ID_CLUB_MEMB, ha.ID_CLUB_GRUPO, ha.ID_GRUPO, ha.F_ING_CLUB, ha.F_ING_GRUPO
            FROM ADFJ_HIST_ASIGNACIONES ha , ADFJ_GRUPOS_LECTURA gl, ADFJ_HIST_MEMBRESIAS hm
            WHERE (ha.ID_CLUB_MEMB = hm.ID_CLUB AND ha.ID_LECTOR = hm.ID_LECTOR AND ha.F_ING_CLUB = hm.F_ING_CLUB) AND
                  (ha.ID_CLUB_GRUPO = gl.ID_CLUB AND ha.ID_GRUPO = gl.ID_GRUPO)AND
                  ha.ID_CLUB_GRUPO = p_id_club AND
                  ha.F_FIN_GRUPO IS NULL  
              AND hm.F_RETIRO IS NULL AND    
                 (  (v_tipo_grupo IN ('A', 'J') AND ha.ID_GRUPO = p_id_grupo) OR
                   (v_tipo_grupo = 'N' AND gl.TIPO = 'A')
                 )
             
              AND NOT EXISTS (
                  SELECT 1 
                  FROM ADFJ_CAL_REUNIONES cr_vistas
                  WHERE cr_vistas.ID_MODERADOR = ha.ID_LECTOR
                    AND cr_vistas.ULTIMA_REUNION = 'S'
                    AND cr_vistas.REALIZADA = 'N'
              )
              
              AND NOT EXISTS (
                  SELECT 1
                  FROM ADFJ_CAL_REUNIONES cr_en_curso
                  WHERE cr_en_curso.ID_MODERADOR = ha.ID_LECTOR
                    AND cr_en_curso.REALIZADA = 'N'
              )
            ORDER BY ha.F_ING_GRUPO ASC 
        )
        WHERE ROWNUM = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20003, 'ERROR: No hay ningún moderador disponible que no esté asignado a otro grupo actualmente.');
    END;

    
    -- Valida si el grupo ya tiene reuniones agendadas
    SELECT TRUNC(GREATEST(NVL(MAX(R_AGEN.F_REUNION), SYSDATE), SYSDATE))
    INTO v_fecha_base
    FROM ADFJ_CAL_REUNIONES R_AGEN
    WHERE R_AGEN.ID_CLUB = p_id_club AND R_AGEN.ID_GRUPO = p_id_grupo;

    --se encarga de encontrar el primer dia que el grupo puede tener la reunion
    v_count_dias := 1;
    LOOP
         v_fecha_reunion := v_fecha_base + v_count_dias;
            
    
         IF (TRUNC(v_fecha_reunion) - TRUNC(v_fecha_reunion, 'IW') + 2) = v_dia_semana_grupo THEN
             EXIT; 
         END IF;
         v_count_dias := v_count_dias + 1;
    END LOOP;

    -- Insercion de reuniones
    FOR i IN 1..p_cant_reuniones LOOP
        
        IF i > 1 THEN
            v_fecha_reunion := v_fecha_base + 7;
        END IF; 

        -- esto es para unir la hora del grupo con la fecha 
        v_fecha_reunion := TO_DATE(TO_CHAR(v_fecha_reunion, 'DD/MM/YYYY') || ' ' || v_hora_grupo, 'DD/MM/YYYY HH24:MI');

        IF i = p_cant_reuniones THEN
            v_ultima_reunion := 'S';
        ELSE
            v_ultima_reunion := 'N';
        END IF;

        INSERT INTO ADFJ_CAL_REUNIONES (
            id_club,
            id_grupo,
            isbn,
            f_reunion,
            realizada,
            id_club_memb_mod,
            id_club_grupo_mod,
            id_grupo_mod,
            id_moderador,
            f_ing_club_mod,
            f_ing_grupo_mod,
            conclusiones,
            valoracion,
            ultima_reunion
        ) VALUES (
            p_id_club,
            p_id_grupo,
            p_isbn,
            v_fecha_reunion,
            'N', 
            v_id_club_memb_mod,
            v_id_club_g_mod,
            v_id_grupo_mod,
            v_id_mod,
            v_f_ing_club_mod,
            v_f_ing_grupo_mod,
            NULL,
            NULL, 
            v_ultima_reunion
        );

        
        v_fecha_base := TRUNC(v_fecha_reunion);
        
    END LOOP;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE(' Se agendaron ' || p_cant_reuniones || ' reuniones con éxito.');
    
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20999, 'Error importante al ejecutar el programa: ' || SQLERRM);
END ADFJ_AGENDAR_REUNIONES;




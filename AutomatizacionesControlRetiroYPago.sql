CREATE OR REPLACE PROCEDURE ADFJ_PRC_REGISTRAR_PAGO (v_id_club IN NUMBER, v_id_lector IN NUMBER, v_f_ing IN DATE) IS
    v_cuota VARCHAR2(1);
    v_proximo_id NUMBER;
BEGIN
    --valida que el club cobre membresia
    SELECT cuota_membr INTO v_cuota 
    FROM ADFJ_CLUBES 
    WHERE id_club = v_id_club;

    IF v_cuota = 'N' THEN
        RAISE_APPLICATION_ERROR(-20010, 'Este club no cobra cuotas de membresía.');
    END IF;

    -- obtener el id_pago siguiente de ese lector
    SELECT NVL(MAX(id_pago), 0) + 1 INTO v_proximo_id 
    FROM ADFJ_PAGOS_MEMBRESIA
    WHERE id_club = v_id_club AND id_lector = v_id_lector AND f_ing_club = v_f_ing;

    -- insertar el pago 
    INSERT INTO ADFJ_PAGOS_MEMBRESIA (id_club, id_lector, f_ing_club, id_pago, f_pago)
    VALUES (v_id_club, v_id_lector, v_f_ing, v_proximo_id, SYSDATE);

    COMMIT;
END;
/






















CREATE OR REPLACE TRIGGER ADFJ_TRG_RETIRO_VOLUNTARIO
BEFORE UPDATE OF F_SOL_RETIRO ON ADFJ_HIST_MEMBRESIAS
FOR EACH ROW
WHEN (NEW.F_SOL_RETIRO IS NOT NULL)
DECLARE
    v_proximo_aniversario DATE;
    v_meses_antelacion NUMBER;
BEGIN
    --calcular el proximo aniversario basado en la fecha de ingreso
    v_proximo_aniversario := ADD_MONTHS(:NEW.F_ING_CLUB, 
                             CEIL(MONTHS_BETWEEN(:NEW.F_SOL_RETIRO, :NEW.F_ING_CLUB) / 12) * 12);

    --calcular cuantos meses hay entre la solicitud y el aniversario
    v_meses_antelacion := MONTHS_BETWEEN(v_proximo_aniversario, :NEW.F_SOL_RETIRO);

    --si es < 1 mes se retira el proximo año (se cobra uno mas)
    IF v_meses_antelacion < 1 THEN
        :NEW.F_RETIRO := ADD_MONTHS(v_proximo_aniversario, 12);
    ELSE
        :NEW.F_RETIRO := v_proximo_aniversario;
    END IF;
    
    :NEW.MOTIVO_RETIRO := 'VO'; --retiro voluntario
END;
/









CREATE OR REPLACE PROCEDURE ADFJ_PRC_CONTROL_INASISTENCIA (
    p_id_lector IN NUMBER,
    p_id_club   IN NUMBER
) IS
    v_participacion NUMBER;
BEGIN
    --invocar la funcion de participacion bimestral
    v_participacion := ADFJ_PARTICIPACION_BIMESTRAL(p_id_lector, p_id_club);

    -- si la participacion es menor al 70% (falto a más del 30%)
    IF v_participacion < 70 THEN
        UPDATE ADFJ_HIST_MEMBRESIAS
        SET F_RETIRO = SYSDATE,
            MOTIVO_RETIRO = 'IN'
        WHERE ID_LECTOR = p_id_lector 
          AND ID_CLUB = p_id_club 
          AND F_RETIRO IS NULL;
          
        DBMS_OUTPUT.PUT_LINE('Lector retirado por inasistencia superior al 30%.');
    END IF;
END;
/








CREATE OR REPLACE PROCEDURE ADFJ_PRC_INSCRIBIR_LECTOR (p_id_lector IN NUMBER, p_id_club IN NUMBER) IS
    v_conteo_inasistencias NUMBER;
BEGIN
    --verificar si el lector fue retirado previamente por inasistencia
    SELECT COUNT(*) INTO v_conteo_inasistencias
    FROM ADFJ_HIST_MEMBRESIAS
    WHERE id_lector = p_id_lector 
      AND id_club = p_id_club 
      AND motivo_retiro = 'IN';

    IF v_conteo_inasistencias > 0 THEN
        RAISE_APPLICATION_ERROR(-20015, 'el lector tiene prohibido el reingreso por inasistencias previas.');
    END IF;

    --si pasa la validacion, se procede con la inscripcion
    INSERT INTO ADFJ_HIST_MEMBRESIAS (id_club, id_lector, f_ing_club)
    VALUES (p_id_club, p_id_lector, SYSDATE);
    
    COMMIT;
END;
/





--  trigger para prohibir la insercion manual de miembros expulsados por inasistencia

CREATE OR REPLACE TRIGGER ADFJ_TRG_BLOQUEO_POR_INASISTENCIA
BEFORE INSERT ON ADFJ_HIST_MEMBRESIAS
FOR EACH ROW
DECLARE
    v_bloqueado NUMBER;
BEGIN
    --buscar registros con motivo de retiro 'IN' para este lector en este club
    SELECT COUNT(*) INTO v_bloqueado
    FROM ADFJ_HIST_MEMBRESIAS
    WHERE id_lector = :NEW.id_lector 
      AND id_club = :NEW.id_club 
      AND motivo_retiro = 'IN';

    IF v_bloqueado > 0 THEN
        RAISE_APPLICATION_ERROR(-20016, 'inscripcion rechazada: el historial registra retiro por inasistencia en este club.');
    END IF;
END;
/





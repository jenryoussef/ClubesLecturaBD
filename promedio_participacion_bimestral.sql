

CREATE OR REPLACE FUNCTION F_PROMEDIO_PARTICIPACION(
    p_idlector IN NUMBER,
    p_anio     IN NUMBER,
    p_bimestre IN NUMBER
) RETURN NUMBER IS
    v_total_reuniones       NUMBER := 0;
    v_total_inasistencias   NUMBER := 0;
    v_porcentaje            NUMBER(5,2) := 0; 
BEGIN
    -- 1. Obtener el total de reuniones programadas para el lector en ese bimestre
    BEGIN
        SELECT TOTAL_REUNIONES
        INTO v_total_reuniones
        FROM V_REUNIONES_BIMESTRE
        WHERE ID_LECTOR = p_idlector
          AND ANIO      = p_anio
          AND BIMESTRE  = p_bimestre;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_total_reuniones := 0;
    END;

    
    IF v_total_reuniones = 0 THEN
        RETURN 0;
    END IF;

   
    BEGIN
        SELECT TOTAL_INASISTENCIAS
        INTO v_total_inasistencias
        FROM V_INASISTENCIAS_BIMESTRE
        WHERE ID_LECTOR = p_idlector
          AND ANIO      = p_anio
          AND BIMESTRE  = p_bimestre;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_total_inasistencias := 0;
    END;

    
    v_porcentaje := ((v_total_reuniones - v_total_inasistencias) / v_total_reuniones) * 100;

    
    IF v_porcentaje < 0 THEN 
        v_porcentaje := 0;
    END IF;

    RETURN v_porcentaje;
END;

SELECT primer_nombre, primer_apellido, 
       f_promedio_participacion(id_lector, 2026, 3) AS porc_participacion
FROM lectores
WHERE id_lector = 34;
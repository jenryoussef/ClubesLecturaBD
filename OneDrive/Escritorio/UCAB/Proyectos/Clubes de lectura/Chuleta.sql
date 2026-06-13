--Calcular edad--
SELECT ADFJ_CALCULAR_EDAD_ANTIGUEDAD(TO_DATE('2005-05-15', 'YYYY-MM-DD')) AS EDAD 
FROM DUAL;

--Calcular Antiguedad--
SELECT ADFJ_CALCULAR_EDAD_ANTIGUEDAD(
    TO_DATE('2020-01-01', 'YYYY-MM-DD'), 
    TO_DATE('2026-06-01', 'YYYY-MM-DD')
) AS ANTIGUEDAD 
FROM DUAL;

--Conversión de Bolivares a Dolares--
SELECT ADFJ_CONVERSION_MONETARIA(15489785, 567.68, 'VES') AS MONTO_EN_USD 
FROM DUAL;

--Participacion de miembro en un bimestre--
SELECT ADFJ_PARTICIPACION_BIMESTRAL(1, 1, 2024, 1) AS PORCENTAJE_HISTORICO
FROM DUAL;

SELECT id_lector, id_club, 
       ADFJ_PARTICIPACION_BIMESTRAL(id_lector, id_club, &anio, &bimestre) AS porc_participacion
FROM adfj_hist_membresias
WHERE id_club = &id_club AND id_lector = &id_lector;

--Participacion mensual de un club--
SELECT ADFJ_PCT_PARTICIPACION_MENSUAL_TIPO(1, 'A', 1, 2024) AS PCT_ASISTENCIA_HISTORICA
FROM DUAL;

SELECT ADFJ_PCT_PARTICIPACION_MENSUAL_TIPO(4, 'A', 2, 2024) AS PCT_ASISTENCIA_HISTORICA
FROM DUAL;

--Asignar inasistencia a una reunion realizada--
EXEC ADFJ_P_REGISTRAR_INASISTENCIA(1, 2, 4581417235066, TO_DATE('09/06/2026', 'DD/MM/YYYY'), 37, 'FALTO');
EXEC ADFJ_P_REGISTRAR_INASISTENCIA(1, 2, 4581417235066, TO_DATE('09/06/2026', 'DD/MM/YYYY'), 37, 'ASISTIO');

--Asignar Nuevo moderador--
  EXEC ADFJ_P_MODIFICAR_MODERADOR(1, 2, 4581417235066, TO_DATE('16/06/2026', 'DD/MM/YYYY'), 34);

--Cerrar discusion y asignar valoracion de libro--
  EXEC ADFJ_P_CIERRE_DISCUSION(1, 2, 4581417235066, TO_DATE('16/06/2026', 'DD/MM/YYYY'), 'Se hizo un breve detabate sobre la situación socioecónomica actual de Japón y sus implicaciones para los jóvenes japoneses.', 4, 'S');
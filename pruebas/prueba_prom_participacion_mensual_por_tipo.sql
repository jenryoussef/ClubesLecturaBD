SELECT * FROM ADFJ_v_inasistencias_mes /*where id_club = 1*/;
SELECT * FROM ADFJ_v_reuniones_realizadas_mes /*where id_club = 1*/;
SELECT * FROM ADFJ_v_miembros_grupos /*where id_club = 1*/;

SELECT ADFJ_PCT_PARTICIPACION_MENSUAL_TIPO(&id_grupo, '&tipo', &mes) FROM DUAL;

--SELECT ADFJ_PCT_PARTICIPACION_MENSUAL_TIPO(1, 'A', 5) FROM DUAL;
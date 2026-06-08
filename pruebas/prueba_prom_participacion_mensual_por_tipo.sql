SELECT * FROM ADFJ_v_inasistencias_mes /*where id_club = 1*/;
SELECT * FROM ADFJ_v_reuniones_realizadas_mes /*where id_club = 1*/;
SELECT * FROM ADFJ_v_miembros_grupos /*where id_club = 1*/;

SELECT ADFJ_PCT_PARTICIPACION_MENSUAL_TIPO(&id_club, '&tipo', &mes) FROM DUAL;

--SELECT ADFJ_PCT_PARTICIPACION_MENSUAL_TIPO(1, 'A', 5) FROM DUAL;

/* Datos de Grupos de adultos del club 1 para mayo de 2026
                 Grupo 1         Grupo 4           Grupo 5
Reuniones           4               4                 4
Inasistencias       3               2                 1
Lectores            5               2                 3
*/
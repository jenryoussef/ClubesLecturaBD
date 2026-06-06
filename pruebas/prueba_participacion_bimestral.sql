/*SELECT id_lector, id_club, 
       adfj_f_promedio_participacion(id_lector, id_club) AS porc_participacion
FROM adfj_hist_membresias
WHERE id_club = 1 AND id_lector = 34;*/

SELECT * FROM adfj_v_inasistencias_bimestre;

SELECT * FROM adfj_v_reuniones_bimestre;

SELECT id_lector, id_club, 
       adfj_f_promedio_participacion(id_lector, id_club) AS porc_participacion
FROM adfj_hist_membresias
WHERE id_club = &id_club AND id_lector = &id_lector;
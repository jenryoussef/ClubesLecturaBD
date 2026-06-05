/*SELECT id_lector, id_club, 
       f_promedio_participacion(id_lector, id_club) AS porc_participacion
FROM hist_membresias
WHERE id_club = 1 AND id_lector = 34;*/

SELECT * FROM v_inasistencias_bimestre;

SELECT * FROM v_reuniones_bimestre;

SELECT id_lector, id_club, 
       f_promedio_participacion(id_lector, id_club) AS porc_participacion
FROM hist_membresias
WHERE id_club = &id_club AND id_lector = &id_lector;
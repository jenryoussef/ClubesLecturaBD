/*
Vistas útiles:
I) V_Lectores_Sin_Club (elección de lector)
II) V_Tamano_Grupos_Disponibles (elección de club)
III) V_Lectores_Grupos (ver cierres (splits) y aperturas de hist_asignaciones). Preferiblemente filtrar por club y tipo de grupo
*/

--Tamaño máximo = 4
--Probar inscribiendo lectores Adultos en Club 1

--Inscripción normal
Execute adfj_inscribir_lector(&id_club, &id_lector);

--Inscripción con split
--día entre 2 y 6. Hora de reunión entre 17:00 y 19:00 y 17:00 exacto para grupos de niños
Execute adfj_inscribir_lector(&id_club, &id_lector, &dia, TO_DATE('&hora_militar', 'HH24:MI'));
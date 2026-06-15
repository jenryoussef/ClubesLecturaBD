/*
Vistas útiles:
I) V_Lectores_Sin_Club (elección de lector)
II) V_Tamano_Grupos_Disponibles (elección de club)
III) V_Lectores_Grupos (ver cierres (splits) y aperturas de hist_asignaciones). Preferiblemente filtrar por club y tipo de grupo
*/

--Inscripción normal
Execute adfj_inscribir_lector(&id_lector, &id_club);

--Inscripción con split
Execute adfj_inscribir_lector(&id_lector, &id_club, &dia, TO_DATE('&hora_militar', 'HH24:MI'));
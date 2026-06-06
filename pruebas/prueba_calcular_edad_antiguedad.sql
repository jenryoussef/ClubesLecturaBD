SELECT L.ID_LECTOR, L.F_NACIMIENTO, ADFJ_calcular_edad_antiguedad(L.F_NACIMIENTO) EDAD
FROM ADFJ_LECTORES L
WHERE L.ID_LECTOR = &id_lector;

SELECT * FROM ADFJ_vista_miembros_activos;

SELECT * FROM ADFJ_vista_miembros_retirados; 

SELECT L.ID_LECTOR, L.ID_CLUB, L.F_ING_CLUB, L.F_RETIRO, ADFJ_calcular_edad_antiguedad(L.F_ING_CLUB, L.F_RETIRO) ANTIGUEDAD 
FROM ADFJ_HIST_MEMBRESIAS L 
WHERE L.id_club = &id_club AND L.ID_LECTOR = &id_lector;
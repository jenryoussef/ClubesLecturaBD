SELECT L.ID_LECTOR, L.F_NACIMIENTO, calcular_edad_antiguedad(L.F_NACIMIENTO) EDAD
FROM LECTORES L
WHERE L.ID_LECTOR = &id_lector;

SELECT * FROM vista_miembros_activos;

SELECT * FROM vista_miembros_retirados; 

SELECT L.ID_LECTOR, L.ID_CLUB, L.F_ING_CLUB, L.F_RETIRO, calcular_edad_antiguedad(L.F_ING_CLUB, L.F_RETIRO) ANTIGUEDAD 
FROM HIST_MEMBRESIAS L 
WHERE L.ID_LECTOR = &id_lector;
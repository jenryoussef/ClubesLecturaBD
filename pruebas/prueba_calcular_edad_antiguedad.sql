--Calculo de edad

SELECT L.ID_LECTOR, to_char(L.F_NACIMIENTO, 'dd/mm/yyyy') fecha_nacimiento, ADFJ_calcular_edad_antiguedad(L.F_NACIMIENTO) EDAD
FROM ADFJ_LECTORES L
WHERE L.ID_LECTOR = &id_lector;

--Calculo de antiguedad

SELECT * FROM ADFJ_vista_miembros_activos;

SELECT * FROM ADFJ_vista_miembros_retirados; 

SELECT L.ID_LECTOR, L.ID_CLUB, To_char(L.F_ING_CLUB, 'dd/mm/yyyy') fecha_ingreso, To_char(L.F_RETIRO, 'dd/mm/yyyy') fecha_retiro, ADFJ_calcular_edad_antiguedad(L.F_ING_CLUB, L.F_RETIRO) ANTIGUEDAD 
FROM ADFJ_HIST_MEMBRESIAS L 
WHERE L.id_club = &id_club AND L.ID_LECTOR = &id_lector;

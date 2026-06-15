/*
Vistas importantes
CAL_REUNIONES (tabla) para elegir club, grupo y día
LECTORES_GRUPOS para elegir id del lector
INASISTENCIAS (tabla) para ver registro
LECTORES_INASISTENCIA_RETIRO para ver lector que ha superado el máximo de inasistencias
*/
--probar con (1, 5, 18) y varias fechas
set serveroutput on;
execute ADFJ_REGISTRAR_INASISTENCIA(&id_club, &id_grupo, &id_lector, TO_DATE('&fecha_reunion', 'dd/mm/yyyy'));
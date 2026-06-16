/*
Vistas importantes
CAL_REUNIONES (tabla) para elegir club, grupo y día
V_LECTORES_GRUPOS para elegir id del lector
INASISTENCIAS (tabla) para ver registro
V_LECTORES_INASISTENCIA_RETIRO para ver lector que ha superado el máximo de inasistencias
*/

--Vista de Freddy: ADFJ_V_CONTROL_ASISTENCIA

--probar con (1, 5, 18) y varias fechas (15/05/2026 , 22/05/2026 , 29/05/2026)
set serveroutput on;
execute ADFJ_REGISTRAR_INASISTENCIA(&id_club, &id_grupo, &id_lector, TO_DATE('&fecha_reunion', 'dd/mm/yyyy'));
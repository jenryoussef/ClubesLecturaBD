/*
Vistas importantes
CAL_REUNIONES (tabla) para elegir club, grupo y día. También para ver cambios
*/

--sólo marcar como realizada (no es última)
--probar  con (1, 5, 05/06/2026)
set serveroutput on;
execute adfj_actualizar_estado_reunion(&id_club, &id_grupo, TO_DATE('&fecha_reunion', 'dd/mm/yyyy'));

--hacer cierre de discusión (es última)
--probar  con (1, 5, 12/06/2026)
set serveroutput on;
execute adfj_actualizar_estado_reunion(&id_club, &id_grupo, TO_DATE('&fecha_reunion', 'dd/mm/yyyy'), '&conclusion', &valoracion);
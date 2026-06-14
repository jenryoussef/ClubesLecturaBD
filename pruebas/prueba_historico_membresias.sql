/*
Vistas útiles
I) V_LECTORES_PUEDEN_PAGAR (seleccionar parámetro)
II) PAGOS_MEMBRESIA (tabla) para ver resultados
*/

Execute adfj_registrar_pago(&id_club, &id_lector);

/*
Vistas útiles
I) V_LECTORES_DEUDORES_RETIRO (elegir parámetros para motivo = 'DE')
II) V_LECTORES_INASISTENCIA_RETIRO (elegir parámetros para motivo = 'IN')
III) V_Lectores_ACTIVOS (elegir parámetro para retiro voluntario)
IV) V_Lectores_GRUPOS para ver cierre del histórico del grupo
V) V_Lectores_RETIRADOS para ver cierre del histórico del club
*/

--retiro por deuda o por inasistencia; 
set serveroutput on;
EXECUTE adfj_retirar_lector(&id_club, &id_lector); 

/*
retiro voluntario   
usar club = 2; lector = 7; f_sol = 01/06/2026 para validar aviso tardío (revisar aniversario en HIST_MEMBRESIAS)
usar algún otro lector activo con la misma fecha que no esté en las vistas V_LECTORES_DEUDORES_RETIRO O V_LECTORES_INASISTENCIA_RETIRO para retiro exitoso
*/      
set serveroutput on;
EXECUTE adfj_retirar_lector(&id_club, &id_lector, TO_DATE('&f_solicitud_retiro', 'dd/mm/yyyy')); 

--retiro por motivo otro (usar cualquier lector activo que no esté en las vistas V_LECTORES_DEUDORES_RETIRO O V_LECTORES_INASISTENCIA_RETIRO)
set serveroutput on;
EXECUTE adfj_retirar_lector(&id_club, &id_lector, NULL, '&motivo'); 
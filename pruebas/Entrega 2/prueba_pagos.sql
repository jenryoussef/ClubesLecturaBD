/*
Vistas útiles
I) V_LECTORES_PUEDEN_PAGAR (seleccionar parámetro)
II) PAGOS_MEMBRESIA (tabla) para ver resultados
III) V_LECTORES_DEUDA_RETIRO (para validar que los deudores de más de un año no puedan pagar)
*/

Execute adfj_registrar_pago(&id_club, &id_lector);
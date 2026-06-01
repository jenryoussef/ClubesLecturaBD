CREATE OR REPLACE FUNCTION calcular_edad_antiguedad(
    fecha1 IN DATE, 
    fecha2 IN DATE DEFAULT SYSDATE
) RETURN NUMBER IS
BEGIN
    
    RETURN TRUNC(MONTHS_BETWEEN(fecha2, fecha1) / 12);
END calcular_edad_antiguedad;
/

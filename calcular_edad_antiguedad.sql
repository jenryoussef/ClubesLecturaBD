CREATE OR REPLACE FUNCTION calcular_edad_antiguedad(
    fecha1 IN DATE, 
    fecha2 IN DATE DEFAULT SYSDATE
) RETURN NUMBER IS
BEGIN
    RETURN FLOOR((fecha2 - fecha1) / 365);
END calcular_edad_antiguedad;
/
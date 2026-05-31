CREATE OR REPLACE FUNCTION Conversion_monetaria(
    monto IN NUMBER,                               
    tasa IN NUMBER       --tasa local/USD              
) RETURN NUMBER IS
BEGIN
    RETURN (monto / tasa);
END Conversion_monetaria;
/

SELECT Conversion_monetaria(&monto, &tasa_local_a_usd) from dual;
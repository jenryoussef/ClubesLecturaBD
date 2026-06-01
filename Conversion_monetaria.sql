CREATE OR REPLACE FUNCTION Conversion_monetaria(
    monto IN NUMBER,                               
    tasa IN NUMBER,       --tasa local/USD    
    sentido VARCHAR2 DEFAULT 'LOC/USD'
) RETURN NUMBER IS
BEGIN
    IF sentido = 'LOC/USD' THEN
        RETURN(monto / tasa);
    ELSIF sentido = 'USD/LOC' THEN
        RETURN(monto * tasa);
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'ERROR. El sentido sólo puede ser "LOC/USD" o "USD/LOC"');
    END IF;
END Conversion_monetaria;
/

SELECT Conversion_monetaria(&monto, &tasa_local_a_usd) "Conersión monetaria" from dual;
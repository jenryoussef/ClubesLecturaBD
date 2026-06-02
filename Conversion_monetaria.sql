CREATE OR REPLACE FUNCTION Conversion_a_dolar(
    monto_local IN NUMBER,                               
    tasa IN NUMBER,             ----tasa local -> USD
    moneda_local IN VARCHAR2
) RETURN NUMBER IS
BEGIN
    IF monto_local < 0 then
        raise_application_error(-20000, 'ERROR. El monto a convertir no debe ser negativo');
    end if;
    IF tasa <= 0 then
        raise_application_error(-20000, 'ERROR. La tasa de conversión debe ser positiva');
    end if;
    IF moneda_local = '$' OR moneda_local = 'USD' then
        DBMS_OUTPUT.PUT_LINE('La moneda local ya esta en dolares, la conversion retorna el mismo monto');
        RETURN(monto_local);
    ELSE
        RETURN(monto_local / tasa);
    END IF;
END Conversion_a_dolar;
/

CREATE OR REPLACE FUNCTION Conversion_a_local(
    monto_dolar IN NUMBER,                               
    tasa IN NUMBER,             ----tasa USD -> local
    moneda_local IN VARCHAR2
) RETURN NUMBER IS
BEGIN
    IF monto_dolar < 0 then
        raise_application_error(-20000, 'ERROR. El monto a convertir no debe ser negativo');
    end if;
    IF tasa <= 0 then
        raise_application_error(-20000, 'ERROR. La tasa de conversión debe ser positiva');
    end if;
    IF moneda_local = '$' OR moneda_local = 'USD' then
        DBMS_OUTPUT.PUT_LINE('La moneda local ya esta en dolares, la conversion retorna el mismo monto');
        RETURN(monto_dolar);
    ELSE
        RETURN(monto_dolar * tasa);
    END IF;
END Conversion_a_local;
/

SELECT Conversion_a_dolar(&monto, &tasa_local_a_usd, '&siglas_moneda_local') "Conersión a $" from dual;
  
SELECT Conversion_a_local(&monto, &tasa_local_a_usd, '&siglas_moneda_local') "Conersión a local" from dual;
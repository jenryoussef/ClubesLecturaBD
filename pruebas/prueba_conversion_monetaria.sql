SET SERVEROUTPUT ON;

SELECT ADFJ_Conversion_monetaria(&monto, &tasa_local_a_usd, '&siglas_moneda_local') "Conersión a $" from dual;

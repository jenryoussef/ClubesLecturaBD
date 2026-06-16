SELECT * FROM ADFJ_v_inasistencias_mes /*where id_club = 1*/;
SELECT * FROM ADFJ_v_reuniones_realizadas_mes /*where id_club = 1*/;
SELECT * FROM ADFJ_v_lectores_grupos /*where id_club = 1*/;

SELECT ADFJ_PCT_PARTICIPACION_MENSUAL_TIPO(&id_club, '&tipo', &mes) FROM DUAL;

SELECT ADFJ_PCT_PARTICIPACION_MENSUAL_TIPO(4, 'N', 2, 2024) FROM DUAL;

WITH clubes AS (
    SELECT DISTINCT id_club
    FROM ADFJ_GRUPOS_LECTURA
    WHERE id_club = 1  -- Opcional: filtrar clubes
),
tipos AS (
    SELECT 'A' AS tipo FROM DUAL UNION ALL
    SELECT 'J' FROM DUAL UNION ALL
    SELECT 'N' FROM DUAL
),
meses AS (
    SELECT LEVEL AS mes
    FROM DUAL
    CONNECT BY LEVEL <= 12
),
anios AS (
    SELECT LEVEL + 2020 AS anio
    FROM DUAL
    CONNECT BY LEVEL <= 10  -- 2021 a 2030
)
SELECT 
    c.id_club,
    t.tipo,
    m.mes,
    a.anio,
    ADFJ_PCT_PARTICIPACION_MENSUAL_TIPO(c.id_club, t.tipo, m.mes, a.anio) AS participacion
FROM clubes c
CROSS JOIN tipos t
CROSS JOIN meses m
CROSS JOIN anios a
WHERE a.anio <= EXTRACT(YEAR FROM SYSDATE)  -- Solo años hasta el actual
  AND NOT (t.tipo = 'N' AND m.mes IS NOT NULL)  -- Si aplica alguna regla especial
ORDER BY c.id_club, t.tipo, a.anio, m.mes;

SELECT * FROM ADFJ_HIST_MEMBRESIAS order by id_club, f_ing_club;

SELECT * FROM ADFJ_PAGOS_MEMBRESIA order by id_club, f_pago;
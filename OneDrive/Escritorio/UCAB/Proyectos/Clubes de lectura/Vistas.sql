CREATE OR REPLACE VIEW ADFJ_V_CONTROL_ASISTENCIA AS
SELECT 
    cr.id_club,
    cr.id_grupo,
    cr.isbn,
    cr.f_reunion,
    ha.id_lector,
    (SELECT l.primer_nombre || ' ' || l.primer_apellido FROM ADFJ_LECTORES l WHERE l.id_lector = ha.id_lector) AS nombre_lector,
    CASE 
        WHEN i.id_lector IS NOT NULL THEN 'Inasistente'
        WHEN cr.realizada = 'S' THEN 'Asistió'
        ELSE 'Pendiente por Realizar'
    END AS estatus_asistencia
FROM 
    ADFJ_CAL_REUNIONES cr, 
    ADFJ_HIST_ASIGNACIONES ha, 
    ADFJ_INASISTENCIAS i
WHERE 
    cr.id_club   = ha.id_club_grupo 
    AND cr.id_grupo  = ha.id_grupo
    AND ha.f_ing_grupo <= cr.f_reunion 
    AND (ha.f_fin_grupo IS NULL OR ha.f_fin_grupo >= cr.f_reunion)
    AND cr.id_club   = i.id_club_cal (+)
    AND cr.id_grupo  = i.id_grupo_cal (+)
    AND cr.isbn      = i.isbn (+)
    AND cr.f_reunion = i.f_reunion (+)
    AND ha.id_lector = i.id_lector (+);

CREATE OR REPLACE VIEW ADFJ_V_REUNIONES_CERRADAS AS
SELECT 
    cr.id_club,
    cr.id_grupo,
    cr.f_reunion,
    lib.titulo AS libro_analizado,
    cr.conclusiones,
    cr.valoracion AS valoracion_final
FROM 
    ADFJ_CAL_REUNIONES cr, 
    ADFJ_LIBROS lib
WHERE 
    cr.isbn = lib.isbn
    AND cr.realizada = 'S';
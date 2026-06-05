CREATE OR REPLACE VIEW VISTA_MIEMBROS_ACTIVOS_PERIODO AS
SELECT 
    ha.id_club_grupo,
    ha.id_grupo,
    gl.tipo AS tipo_grupo,
    l.id_lector,
    l.primer_nombre || ' ' || l.primer_apellido AS nombre_completo,
    ha.f_ing_grupo,
    ha.f_fin_grupo
FROM Hist_Asignaciones ha
JOIN Hist_Membresias hm 
    ON ha.id_lector = hm.id_lector 
    AND ha.id_club_grupo = hm.id_club 
    AND ha.f_ing_club = hm.f_ing_club
JOIN Lectores l 
    ON ha.id_lector = l.id_lector
JOIN Grupos_Lectura gl 
    ON ha.id_club_grupo = gl.id_club 
    AND ha.id_grupo = gl.id_grupo
WHERE ha.f_fin_grupo IS NULL 
  AND hm.f_retiro IS NULL;

  CREATE OR REPLACE VIEW VISTA_INASISTENCIAS_GRUPO_PERIODO AS
SELECT 
    i.id_club_grupo,
    i.id_grupo_asig,
    gl.tipo AS tipo_grupo,                
    i.ISBN,                               
    i.F_reunion,                          
    COUNT(i.id_lector) AS cantidad_inasistencias
FROM Inasistencias i
JOIN Grupos_Lectura gl 
    ON i.id_club_grupo = gl.id_club 
    AND i.id_grupo_asig = gl.id_grupo
GROUP BY i.id_club_grupo, i.id_grupo_asig, gl.tipo, i.ISBN, i.F_reunion;

CREATE OR REPLACE VIEW VISTA_REUNIONES_GRUPO_PERIODO AS
SELECT 
    cr.id_club,
    cr.id_grupo,
    cr.F_reunion,
    COUNT(1) AS cantidad_reuniones
FROM Cal_Reuniones cr
GROUP BY cr.id_club, cr.id_grupo, cr.F_reunion;
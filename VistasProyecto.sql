CREATE OR REPLACE VIEW vista_miembros_activos (
    id_club, 
    nombre_club, 
    id_lector, 
    primer_nombre, 
    segundo_nombre, 
    primer_apellido, 
    segundo_apellido, 
    doc_identidad, 
    f_ing_club
) AS
SELECT 
    c.id_club,
    c.nombre,
    l.id_lector,
    l.primer_nombre,
    l.segundo_nombre,
    l.primer_apellido,
    l.segundo_apellido,
    l.doc_identidad,
    h.f_ing_club
FROM hist_membresias h, lectores l, clubes c
WHERE h.id_lector = l.id_lector 
  AND h.id_club = c.id_club 
  AND h.f_retiro IS NULL;
  
  
  
  
  
  CREATE OR REPLACE VIEW vista_miembros_retirados (
    id_club, 
    nombre_club, 
    id_lector, 
    primer_nombre, 
    segundo_nombre, 
    primer_apellido, 
    segundo_apellido, 
    doc_identidad, 
    f_ing_club,
    f_sol_retiro,
    f_retiro,
    motivo_retiro
) AS
SELECT 
    c.id_club,
    c.nombre,
    l.id_lector,
    l.primer_nombre,
    l.segundo_nombre,
    l.primer_apellido,
    l.segundo_apellido,
    l.doc_identidad,
    h.f_ing_club,
    h.f_sol_retiro,
    h.f_retiro,
    h.motivo_retiro
FROM hist_membresias h, lectores l, clubes c
WHERE h.id_lector = l.id_lector 
  AND h.id_club = c.id_club 
  AND h.f_retiro IS NOT NULL;
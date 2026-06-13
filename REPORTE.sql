-- caso prueba

-- Lector ID 500 
INSERT INTO ADFJ_LECTORES(id_lector, primer_nombre, primer_apellido, segundo_apellido, f_nacimiento, email, doc_identidad, id_pais)
VALUES(500, 'CARLOS', 'VETERANO', 'PRUEBA', TO_DATE('10-10-1980','DD-MM-YYYY'), 'carlos@reporte.com', 8888888, 1);

-- Idiomas
INSERT INTO ADFJ_HABLA(id_idioma, id_habla, id_lector) VALUES (1, 80, 500); -- Español
INSERT INTO ADFJ_HABLA(id_idioma, id_habla, id_lector) VALUES (3, 81, 500); -- Inglés

-- Top 3 Preferencias Personales 
INSERT INTO ADFJ_PREFERENCIAS(id_lector, ISBN, orden) VALUES (500, 4617417231313, 1);
INSERT INTO ADFJ_PREFERENCIAS(id_lector, ISBN, orden) VALUES (500, 7805341235044, 2);
INSERT INTO ADFJ_PREFERENCIAS(id_lector, ISBN, orden) VALUES (500, 3783353412011, 3);

-- Club 1 (2010-2012) retiro voluntario
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club, id_lector, f_ing_club, f_retiro, motivo_retiro) 
VALUES (1, 500, TO_DATE('01-01-2010','DD-MM-YYYY'), TO_DATE('01-01-2012','DD-MM-YYYY'), 'VO');

-- Club 2 (2013-2015) Retiro por Inasistencia
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club, id_lector, f_ing_club, f_retiro, motivo_retiro) 
VALUES (2, 500, TO_DATE('01-01-2013','DD-MM-YYYY'), TO_DATE('01-01-2015','DD-MM-YYYY'), 'IN');

-- Club 3 (2016-2018) Retiro por Deuda
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club, id_lector, f_ing_club, f_retiro, motivo_retiro) 
VALUES (3, 500, TO_DATE('01-01-2016','DD-MM-YYYY'), TO_DATE('01-01-2018','DD-MM-YYYY'), 'DE');

-- Club 4 (2019-2022) Retiro por Otros
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club, id_lector, f_ing_club, f_retiro, motivo_retiro) 
VALUES (4, 500, TO_DATE('01-01-2019','DD-MM-YYYY'), TO_DATE('01-01-2022','DD-MM-YYYY'), 'OT');

-- Club 5 (2023-Actual) Activo
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club, id_lector, f_ing_club) 
VALUES (5, 500, TO_DATE('01-01-2023','DD-MM-YYYY'));

INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo, id_grupo, id_club_memb, id_lector, f_ing_club, f_ing_grupo)
VALUES (1, 1, 1, 500, TO_DATE('01-01-2010','DD-MM-YYYY'), TO_DATE('01-01-2010','DD-MM-YYYY'));

INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo, id_grupo, id_club_memb, id_lector, f_ing_club, f_ing_grupo)
VALUES (2, 1, 2, 500, TO_DATE('01-01-2013','DD-MM-YYYY'), TO_DATE('01-01-2013','DD-MM-YYYY'));

INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo, id_grupo, id_club_memb, id_lector, f_ing_club, f_ing_grupo)
VALUES (3, 1, 3, 500, TO_DATE('01-01-2016','DD-MM-YYYY'), TO_DATE('01-01-2016','DD-MM-YYYY'));

INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo, id_grupo, id_club_memb, id_lector, f_ing_club, f_ing_grupo)
VALUES (4, 1, 4, 500, TO_DATE('01-01-2019','DD-MM-YYYY'), TO_DATE('01-01-2019','DD-MM-YYYY'));

INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo, id_grupo, id_club_memb, id_lector, f_ing_club, f_ing_grupo)
VALUES (5, 1, 5, 500, TO_DATE('01-01-2023','DD-MM-YYYY'), TO_DATE('01-01-2023','DD-MM-YYYY'));










INSERT INTO ADFJ_CAL_REUNIONES VALUES (2, 1, 1301534123033, TO_DATE('10-01-2014','DD-MM-YYYY'), 'S', 2, 2, 1, 500, TO_DATE('01-01-2013','DD-MM-YYYY'), TO_DATE('01-01-2013','DD-MM-YYYY'), 'Concl.', 5, 'S');
INSERT INTO ADFJ_CAL_REUNIONES VALUES (2, 1, 1301534748055, TO_DATE('10-02-2014','DD-MM-YYYY'), 'S', 2, 2, 1, 500, TO_DATE('01-01-2013','DD-MM-YYYY'), TO_DATE('01-01-2013','DD-MM-YYYY'), 'Concl.', 4, 'S');
INSERT INTO ADFJ_CAL_REUNIONES VALUES (2, 1, 5024441735066, TO_DATE('10-03-2014','DD-MM-YYYY'), 'S', 2, 2, 1, 500, TO_DATE('01-01-2013','DD-MM-YYYY'), TO_DATE('01-01-2013','DD-MM-YYYY'), 'Concl.', 5, 'S');
INSERT INTO ADFJ_CAL_REUNIONES VALUES (2, 1, 1301417235077, TO_DATE('10-04-2014','DD-MM-YYYY'), 'S', 2, 2, 1, 500, TO_DATE('01-01-2013','DD-MM-YYYY'), TO_DATE('01-01-2013','DD-MM-YYYY'), 'Concl.', 4, 'S');

INSERT INTO ADFJ_CAL_REUNIONES VALUES (3, 1, 4581417235088, TO_DATE('10-01-2017','DD-MM-YYYY'), 'S', 3, 3, 1, 500, TO_DATE('01-01-2016','DD-MM-YYYY'), TO_DATE('01-01-2016','DD-MM-YYYY'), 'Concl.', 5, 'S');
INSERT INTO ADFJ_CAL_REUNIONES VALUES (3, 1, 4581414095099, TO_DATE('10-02-2017','DD-MM-YYYY'), 'S', 3, 3, 1, 500, TO_DATE('01-01-2016','DD-MM-YYYY'), TO_DATE('01-01-2016','DD-MM-YYYY'), 'Concl.', 4, 'S');
INSERT INTO ADFJ_CAL_REUNIONES VALUES (3, 1, 5944012351010, TO_DATE('10-03-2017','DD-MM-YYYY'), 'S', 3, 3, 1, 500, TO_DATE('01-01-2016','DD-MM-YYYY'), TO_DATE('01-01-2016','DD-MM-YYYY'), 'Concl.', 5, 'S');
INSERT INTO ADFJ_CAL_REUNIONES VALUES (3, 1, 4581417251111, TO_DATE('10-04-2017','DD-MM-YYYY'), 'S', 3, 3, 1, 500, TO_DATE('01-01-2016','DD-MM-YYYY'), TO_DATE('01-01-2016','DD-MM-YYYY'), 'Concl.', 4, 'S');

INSERT INTO ADFJ_CAL_REUNIONES VALUES (4, 1, 1301417231212, TO_DATE('10-01-2020','DD-MM-YYYY'), 'S', 4, 4, 1, 500, TO_DATE('01-01-2019','DD-MM-YYYY'), TO_DATE('01-01-2019','DD-MM-YYYY'), 'Concl.', 5, 'S');
INSERT INTO ADFJ_CAL_REUNIONES VALUES (4, 1, 4617417231313, TO_DATE('10-02-2020','DD-MM-YYYY'), 'S', 4, 4, 1, 500, TO_DATE('01-01-2019','DD-MM-YYYY'), TO_DATE('01-01-2019','DD-MM-YYYY'), 'Concl.', 5, 'S');
INSERT INTO ADFJ_CAL_REUNIONES VALUES (4, 1, 1301417231414, TO_DATE('10-03-2020','DD-MM-YYYY'), 'S', 4, 4, 1, 500, TO_DATE('01-01-2019','DD-MM-YYYY'), TO_DATE('01-01-2019','DD-MM-YYYY'), 'Concl.', 4, 'S');
INSERT INTO ADFJ_CAL_REUNIONES VALUES (4, 1, 1301417231515, TO_DATE('10-04-2020','DD-MM-YYYY'), 'S', 4, 4, 1, 500, TO_DATE('01-01-2019','DD-MM-YYYY'), TO_DATE('01-01-2019','DD-MM-YYYY'), 'Concl.', 4, 'S');

INSERT INTO ADFJ_CAL_REUNIONES VALUES (5, 1, 3783353412011, TO_DATE('10-01-2023','DD-MM-YYYY'), 'S', 5, 5, 1, 500, TO_DATE('01-01-2023','DD-MM-YYYY'), TO_DATE('01-01-2023','DD-MM-YYYY'), 'Concl.', 5, 'S');
INSERT INTO ADFJ_CAL_REUNIONES VALUES (5, 1, 7805341235044, TO_DATE('10-02-2023','DD-MM-YYYY'), 'S', 5, 5, 1, 500, TO_DATE('01-01-2023','DD-MM-YYYY'), TO_DATE('01-01-2023','DD-MM-YYYY'), 'Concl.', 5, 'S');
INSERT INTO ADFJ_CAL_REUNIONES VALUES (5, 1, 1301534123022, TO_DATE('10-03-2023','DD-MM-YYYY'), 'S', 5, 5, 1, 500, TO_DATE('01-01-2023','DD-MM-YYYY'), TO_DATE('01-01-2023','DD-MM-YYYY'), 'Concl.', 4, 'S');
INSERT INTO ADFJ_CAL_REUNIONES VALUES (5, 1, 4581417235066, TO_DATE('10-04-2023','DD-MM-YYYY'), 'S', 5, 5, 1, 500, TO_DATE('01-01-2023','DD-MM-YYYY'), TO_DATE('01-01-2023','DD-MM-YYYY'), 'Concl.', 5, 'S');


COMMIT;

--********************************************************************

-- vista informacion base lector y representantes
CREATE OR REPLACE VIEW V_Lector_Base AS
SELECT 
  l.id_lector,
  l.primer_nombre || ' ' || l.primer_apellido lector,
  ADFJ_CALCULAR_EDAD_ANTIGUEDAD(l.f_nacimiento) edad,
  NVL(ext.nombre, inter.nombre) representante,
  l.email gmail,
  p.NACIONALIDAD nacionalidad,
  habla.nombre_idioma habla
FROM 
  ADFJ_LECTORES l,
  ADFJ_PAISES p,
  
  (SELECT id_representante id_rep_ext, primer_nombre nombre 
  FROM ADFJ_REPRESENTANTES) ext,
  (SELECT id_lector id_rep_int, primer_nombre nombre 
  FROM ADFJ_LECTORES) inter,
(SELECT h.id_lector, d.nombre nombre_idioma
 FROM ADFJ_HABLA h, ADFJ_IDIOMAS d
 WHERE h.id_idioma = d.id_idioma AND h.id_lector IS NOT NULL) habla

WHERE 
  l.id_pais = p.id_pais AND
  l.id_rep_ex = ext.id_rep_ext(+) AND
  l.id_rep_in = inter.id_rep_int(+) AND
   l.id_lector = habla.id_lector(+);


--vista club actual
CREATE OR REPLACE VIEW V_Club_Actual AS
SELECT h.id_lector, h.id_club, c.nombre club_actual, ADFJ_CALCULAR_EDAD_ANTIGUEDAD(h.f_ing_club, h.f_retiro) antiguedad_club_actual ,DECODE(t.tipo, 'A', 'adultos', 'J', 'jovenes', 'N', 'niños', t.tipo) tipo_grupo
FROM ADFJ_HIST_MEMBRESIAS h, ADFJ_CLUBES c, ADFJ_V_MIEMBROS_GRUPOS t
WHERE h.id_club = c.id_club AND 
h.f_retiro IS NULL AND 
t.id_club = c.id_club AND 
t.id_lector = h.id_lector;

--vista clubes anteriores y libros analizados
CREATE OR REPLACE VIEW V_Club_Anterior AS
SELECT DISTINCT 
  h.id_lector, 
  h.id_club, 
  c.nombre club_anterior, 
  ADFJ_CALCULAR_EDAD_ANTIGUEDAD(h.f_ing_club, h.f_retiro) antiguedad, 
  DECODE(h.motivo_retiro, 'VO', 'voluntario', 'IN', 'inasistencia', 'DE', 'deuda', 'OT', 'otros', h.motivo_retiro) motivo_retiro,
  la.libros_analizados libros_analizados
FROM ADFJ_HIST_MEMBRESIAS h, ADFJ_CLUBES c, V_Libros_Analizados la
WHERE h.id_club = c.id_club 
  AND h.f_retiro IS NOT NULL
  AND h.id_lector = la.id_lector(+)
  AND h.id_club = la.id_club(+);

--vista libros preferidos
CREATE OR REPLACE VIEW V_Libros_Preferidos AS
SELECT p.id_lector, p.ORDEN orden_preferencia, t.titulo libros_preferidos
FROM ADFJ_PREFERENCIAS p, ADFJ_LIBROS t 
WHERE p.isbn = t.isbn;

--vista libros analizados
CREATE OR REPLACE VIEW V_Libros_Analizados AS
SELECT DISTINCT ha.id_lector, ha.id_club_grupo id_club, lib.titulo libros_analizados
FROM ADFJ_HIST_ASIGNACIONES ha, ADFJ_CAL_REUNIONES cr, ADFJ_LIBROS lib
WHERE ha.id_club_grupo = cr.id_club 
  AND ha.id_grupo = cr.id_grupo 
  AND cr.isbn = lib.isbn
  AND cr.realizada = 'S' 
  AND cr.f_reunion >= ha.f_ing_grupo 
  AND (ha.f_fin_grupo IS NULL OR cr.f_reunion <= ha.f_fin_grupo)
  AND NOT EXISTS (
      SELECT 1 FROM ADFJ_INASISTENCIAS i
      WHERE i.id_lector = ha.id_lector
        AND i.id_club_cal = cr.id_club
        AND i.id_grupo_cal = cr.id_grupo
        AND i.isbn = cr.isbn
        AND i.f_reunion = cr.f_reunion
  );
  
  
  
CREATE OR REPLACE VIEW V_FichaLector_Final AS
--solo clubes anteriores
SELECT vista1.id_lector, vista1.lector, vista1.edad, vista1.habla, vista1.representante, vista1.gmail, vista1.NACIONALIDAD, vista2.club_actual, vista2.antiguedad_club_actual, vista2.tipo_grupo,
  vista3.club_anterior, vista3.antiguedad, vista3.motivo_retiro, NULL AS orden_preferencia, NULL AS libros_preferido, vista3.libros_analizados
FROM V_Lector_Base vista1, V_Club_Actual vista2, V_Club_Anterior vista3
WHERE vista1.id_lector = vista2.id_lector(+) AND
      vista1.id_lector = vista3.id_lector(+)

UNION

--solo libros preferidos
SELECT vista1.id_lector, vista1.lector, vista1.edad, vista1.habla, vista1.representante, vista1.gmail, vista1.NACIONALIDAD, vista2.club_actual, vista2.antiguedad_club_actual, vista2.tipo_grupo,
  NULL, NULL, NULL, vista4.orden_preferencia, vista4.libros_preferidos, NULL
FROM V_Lector_Base vista1, V_Club_Actual vista2, V_Libros_Preferidos vista4
WHERE vista1.id_lector = vista2.id_lector(+) AND 
       vista1.id_lector = vista4.id_lector(+)

UNION

--solo libros analizados
SELECT vista1.id_lector, vista1.lector, vista1.edad, vista1.habla, vista1.representante, vista1.gmail, vista1.NACIONALIDAD, vista2.club_actual, vista2.antiguedad_club_actual, vista2.tipo_grupo,
  NULL, NULL, NULL, NULL, NULL, vista5.libros_analizados
FROM V_Lector_Base vista1, V_Club_Actual vista2, V_Libros_Analizados vista5
WHERE vista1.id_lector = vista2.id_lector(+)  AND 
       vista1.id_lector = vista5.id_lector(+) AND
       vista2.id_club = vista5.id_club(+);



SELECT * FROM V_FichaLector_Final 
WHERE id_lector = 6;
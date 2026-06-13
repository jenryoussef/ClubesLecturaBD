--funcion que calcula el puntaje promedio de un los libros
CREATE OR REPLACE FUNCTION ADFJ_CALIFICACION_AVGLIBRO(
    R_ISBN number
)RETURN NUMBER IS
    promedio_cali NUMBER(5,2):= 0;
BEGIN

    SELECT AVG(cal.valoracion)
    INTO promedio_cali
    FROM ADFJ_CAL_REUNIONES cal
    WHERE
        cal.ISBN = R_ISBN AND
        cal.ULTIMA_REUNION = 'S' AND
        cal.f_reunion = (
        SELECT MAX(sub_cal.f_reunion)
        FROM adfj_cal_reuniones sub_cal
        WHERE sub_cal.id_club = cal.id_club AND
              sub_cal.id_grupo = cal.id_grupo AND
              sub_cal.isbn = cal.isbn AND
              sub_cal.realizada = 'S' AND
              sub_cal.ultima_reunion = 'S'
        );
    
    RETURN NVL(promedio_cali,0);
    
EXCEPTION
    WHEN OTHERS THEN
        RETURN 0;
END ADFJ_CALIFICACION_AVGLIBRO;

--No se usa, pero es un buen select para mostrar todos los datos de cada libro
SELECT l.titulo AS "TITULO",
       TO_CHAR(l.ano_publicacion,'YYYY') AS "AÑO DE PUBLICACION",
       l.isbn AS "ISBN",
       NVL(a.nombre || ' ' || a.apellido, a.seudonimo) AS AUTOR,
       l.tema AS "GENERO",
       l.sinopsis AS "SIPNOPSIS",
       CASE 
           WHEN adfj_calificacion_avglibro(l.isbn) = 0 THEN 'Sin leer'
           ELSE TO_CHAR(adfj_calificacion_avglibro(l.isbn), '9D99') 
       END AS "CALIFICACION"
       
FROM adfj_libros l, adfj_autores a, adfj_autorias au
WHERE l.isbn = au.isbn AND
      au.id_autor = a.id_autor AND
      EXISTS(
      SELECT 1 
      FROM adfj_cal_reuniones cal
      WHERE cal.isbn = l.isbn
        AND cal.realizada = 'S'
        AND cal.ultima_reunion = 'S'
      )
ORDER BY 
      l.titulo ASC, "CALIFICACION" desc;
 --Vista hecha mas que nada para ver los libros analizados       
CREATE OR REPLACE VIEW adfj_vista_grupos_librosanalizados AS
SELECT 
      c.nombre AS "NOMBRE DEL CLUB",
      g.id_grupo AS "ID DEL GRUPO",
      DECODE(g.tipo, 'N','Niños', 'J','Jóvenes','A','Adultos') AS "TIPO DE GRUPOS",
      TO_CHAR(cal.f_reunion, 'DD-MM-YYYY') AS "FECHA DE REUNION",
      cal.isbn AS "ISBN",
      cal.conclusiones AS "CONCLUSIONES",
      cal.valoracion AS "PUNTUACION"
FROM  adfj_clubes c, adfj_grupos_lectura g, adfj_cal_reuniones cal
WHERE c.id_club = g.id_club AND
      g.id_club = cal.id_club AND
      g.id_grupo = cal.id_grupo AND
     
      cal.ultima_reunion = 'S' AND
      cal.f_reunion = (
      SELECT MAX(sub_cal.f_reunion)
      FROM adfj_cal_reuniones sub_cal
      WHERE sub_cal.id_club = cal.id_club
        AND sub_cal.id_grupo = cal.id_grupo
        AND sub_cal.isbn = cal.isbn
        AND sub_cal.ultima_reunion = 'S'
      )
ORDER BY 
      cal.f_reunion desc;
 --Vista principal y las mas importante     
CREATE OR REPLACE VIEW v_reporte_libros_grupos AS
SELECT l.isbn AS "ISBN",
       l.titulo AS "TITULO",
       l.n_paginas AS "NUMERO DE PAGINAS",
       p.nombre AS "PAIS",
       p.nombre ||','|| TO_CHAR(l.ano_publicacion,'YYYY') AS "PAIS Y AÑO PUBLICACION",
       TO_CHAR(l.ano_publicacion, 'YYYY') AS "AÑO DE PUBLICACION",
       NVL(a.nombre || ' ' || a.apellido, a.seudonimo) AS AUTOR,
       l.tema AS GENERO,
       l.sinopsis AS SINOPSIS,
       adfj_calificacion_avglibro(l.isbn)  AS "CALIFICACION", 
       c.nombre AS "NOMBRE CLUB",
       g.id_grupo AS "GRUPO",
       DECODE(g.tipo, 'N','Niños', 'J','Jóvenes','A','Adultos') AS "TIPO DE GRUPO",
       TO_CHAR(cal.f_reunion, 'DD-MM-YYYY') AS "FECHA DE REUNION",
       cal.conclusiones AS "CONCLUSIONES",
       cal.valoracion AS "PUNTUACION DE GRUPO" 
FROM adfj_paises p, adfj_libros l, adfj_autorias au, adfj_autores a, adfj_cal_reuniones cal, adfj_grupos_lectura g, adfj_clubes c
WHERE p.id_pais = l.id_pais AND
      l.isbn = au.isbn AND
      au.id_autor = a.id_autor AND
      l.isbn = cal.isbn AND
      g.id_club = cal.id_club AND
      g.id_grupo = cal.id_grupo AND
      g.id_club = c.id_club AND
      cal.realizada = 'S'
  AND cal.ultima_reunion = 'S'
  AND cal.f_reunion = (
      SELECT MAX(sub_cal.f_reunion)
      FROM adfj_cal_reuniones sub_cal
      WHERE sub_cal.id_club = cal.id_club
        AND sub_cal.id_grupo = cal.id_grupo
        AND sub_cal.isbn = cal.isbn
        AND sub_cal.ultima_reunion = 'S'
  )
  ORDER BY 
     l.titulo ASC, 9 desc, cal.f_reunion desc;
      
 -- Con esto quise mostrar los libros anteriores pero no corria en el query del dataset que traeria la tabla de libros por leer     
SELECT  l.titulo ||'-'|| TO_CHAR(l.ano_publicacion,'YYYY') AS "LIBROS ANTERIORES",
        LEVEL AS "NIVEL PREREQUISITO"
FROM adfj_libros l
START WITH l.isbn = :p_isbn
CONNECT BY PRIOR l.id_anterior = l.isbn
WHERE l.isbn <> :p_isbn
ORDER BY LEVEL DESC;
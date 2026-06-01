--NIVEL 2 

--libros

INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (3783353412011,'LAS FLORES DEL MAL',TO_DATE('1857','YYYY'),236,'Las flores del mal es una colección de poemas de Charles Baudelaire, considerada su obra magna. Abarca casi la totalidad de su producción poética desde 1840 hasta la publicación de la colección.','RELATOS CORTOS DE TIPO SICOLOGICO','CU',2, NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301534123022,'LOS LIMITES DE LA FUNDACION',TO_DATE('1982','YYYY'),536,'Los límites de la Fundación es una novela de la saga de la Fundación de Isaac Asimov. Es la primera de las dos secuelas de Fundación' ,'NOVELA DE CIENCIA FICCION','NO',4, NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301534123033,'FUNDACION Y TIERRA',TO_DATE('1986','YYYY'),528,'Fundación y Tierra es una novela de ciencia ficción y la quinta entrega de la serie de la Fundación. Continúa la historia donde concluye Los límites de la Fundación.','NOVELA DE CIENCIA FICCION','NO',4,1301534123022);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (7805341235044,'2666',TO_DATE('2004','YYYY'),1250, '2666 es una monumental novela póstuma del escritor chileno Roberto Bolaño. Narra la búsqueda de un escritor alemán y una serie de brutales asesinatos de mujeres.','NOVELA DE FICCION DETECTIVESCA','NO',5,NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301534748055,'EL TUNEL',TO_DATE('1995','YYYY'),652, 'La novela narra la historia de William Frederick Kohler, un misantrópico profesor de historia que, al terminar su brillante estudio sobre el nazismo, es incapaz de redactar la introducción y comienza a escribir sus memorias, revelando sus prejuicios y crueldades.','NOVELA POSTMODERNA, METAFICCIONAL Y EXPERIMENTAL','NO',4,NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (4581417235066,'SOLANIN',TO_DATE('2005','YYYY'),464,'Solanin es un manga escrito e ilustrado por Inio Asano. La historia sigue a Meiko y Taneda, dos jóvenes recién egresados de la universidad que luchan por adaptarse a la vida adulta y encontrar su propósito frente a una sociedad monótona y exigente.','NOVELA DRAMATICA','NO',6,NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (5024441735066,'PATOS, NEWBURYPORT',TO_DATE('2019','YYYY'),1030,'Ducks, Newburyport es una ambiciosa novela de la autora británica Lucy Ellmann. Retrata la mente hiperactiva y preocupada de una ama de casa estadounidense de mediana edad.','NOVELA EXPERIMENTAL DE FICCION LITERARIA','NO',7,NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301417235077,'RUIDO BLANCO',TO_DATE('1985','YYYY'),326,'Novela fundamental de la literatura posmoderna que satiriza la sociedad de consumo, el exceso de información y el miedo a la muerte.','NOVELA DE SATIRA ACADEMICA','NO',4,NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (4581417235088,'LOOK BACK',TO_DATE('2021','YYYY'),143,'Look Back sigue la historia de Fujino y Kyomoto, dos chicas de personalidades opuestas unidas por su pasión por dibujar manga.','NOVELA DRAMATICA','NO',6,NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (4581414095099,'SAUCE CIEGO, MUJER DORMIDAD',TO_DATE('2006','YYYY'),480,'Es una colección de 24 cuentos de Haruki Murakami que entrelaza lo cotidiano con elementos surrealistas.','FICCION CONTEMPORANEA Y REALISMO MAGICO','CU',6,NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (5944012351010,'SOLENOIDE',TO_DATE('2015','YYYY'),800,'Solenoide, escrita por el autor rumano Mircea Cărtărescu, es una novela monumental que funciona como el diario de un escritor frustrado.','NOVELA DE FILOSOFIA Y CIENCIA FICCION','NO',8,NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (4581417251111,'RIVERS EDGE',TO_DATE('1994','YYYY'),242,'Rivers Edge retrata las oscuras realidades de la juventud japonesa durante la década de 1990.','NOVELA JUVENIL Y DRAMATICA','NO',6,NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301417231212,'AL ESTE DEL EDEN',TO_DATE('1952','YYYY'),688,'Al este del Edén es una novela clásica de John Steinbeck que entrelaza las sagas de las familias Trask y Hamilton en el valle de Salinas, California, entre la Guerra de Secesión y la Primera Guerra Mundial.','NOVELA DRAMATICA Y PSICOLOGICA','NO',4,NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (4617417231313,'LOS HERMANOS KARAMAZOV',TO_DATE('1880','YYYY'),1232,'La obra cumbre de Fiódor Dostoyevski es una tragedia filosófica que gira en torno al asesinato del terrateniente Fiódor Karamázov.','NOVELA FILOSOFICA Y PSICOLOGICA','NO',9,NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301417231414,'SEÑORITA MACINTOSH, MI QUERIDA',TO_DATE('1965','YYYY'),1189,'Miss MacIntosh, My Darling es una novela de Marguerite Young. La autora la describió como una exploración de las ilusiones, las alucinaciones y los errores de juicio en las vidas individuales, teniendo como escenario central el paraíso de un adicto al opio.','NOVELA PSICOLIGICA Y UNA EPOPEYA PICARESCA','NO',4,NULL);
COMMIT;
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301417231515,'LA SEÑORA CALIBAN',TO_DATE('1982','YYYY'),128,'La señora Caliban es una novela corta de Rachel Ingalls que narra la historia de Dorothy, una ama de casa solitaria atrapada en un matrimonio infeliz tras la pérdida de un hijo.','NOVELA CORTA DE FANTASIA, SATIRA SOCIAL Y ROMANCE','NO',4,NULL);
COMMIT;

--Ciudades

INSERT INTO ciudades(id_pais,id_ciudad,nombre) VALUES (1,1,'CARACAS');
COMMIT;
INSERT INTO ciudades(id_pais,id_ciudad,nombre) VALUES (2,2,'PARIS');
COMMIT;
INSERT INTO ciudades(id_pais,id_ciudad,nombre) VALUES (2,3,'BURDEOS');
COMMIT;
INSERT INTO ciudades(id_pais,id_ciudad,nombre) VALUES (3,4,'MADRID');
COMMIT;
INSERT INTO ciudades(id_pais,id_ciudad,nombre) VALUES (3,5,'BARCELONA');
COMMIT;
INSERT INTO ciudades(id_pais,id_ciudad,nombre) VALUES (4,6,'NEW HAVEN');
COMMIT;
INSERT INTO ciudades(id_pais,id_ciudad,nombre) VALUES (4,7,'SAN FRANCISCO');
COMMIT;

--Nivel 3

--Clubes

INSERT INTO clubes(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(s_club.nextval,'SPOILERS ANONIMOS','SPOILERS ANONIMOS ES UN CLUB DE LECTURA PARA PERSONAS DE TODAS LAS EDADES E INTERESES LITERARIOS',1060,'ALTAMARIA 4TA TRANSVERSAL',1,1,'S',NULL);
COMMIT;
INSERT INTO clubes(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(s_club.nextval,'VIVIR ENTRE LINEAS','VIVIR ENTRE LINEAS EXISTE PARA CULTIVAR LA LECTURA EN LOS ESTUDIANTES DE LA UCAB',1020,'AV TEHERAN, MONTALBAN',1,1,'N',1);
COMMIT;
INSERT INTO clubes(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(s_club.nextval,'LOS TAPA DURA','UNA COMUNIDAD DE LECTORES DE BURDEOS QUE HABRE SUS PUERTAS A CUALQUIER INTERESADO',33000,'CA COUR DES AIDES',2,3,'S',NULL);
COMMIT;
INSERT INTO clubes(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(s_club.nextval,'PLUMA EN EL TINTERO','LA BNF PROVEE A LA COMUNIDA PARISIENSE CON UN CLUB DE LECTURA QUE HACE USO DE SU GRAN COLECCION DE LIBROS',75013,'QUAI FRANCOIS MAURIAC',2,2,'N',2);
COMMIT;
INSERT INTO clubes(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(s_club.nextval,'NO JUZGUES POR LA PORTADA','QUEREMOS PROMOVER LA LECTURA A CUALQUIER TIPO DE PERSONA',08001,'MUNICIPIO BARCELONA AV MANOLO',3,5,'S',NULL);
COMMIT;
INSERT INTO clubes(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(s_club.nextval,'LECTORES DESDE CERO','CLUB PATROCINADO POR LA RABASF PARA LA FOMENTACION DE LA LECTURA',28014,'CALLE DE ALCALA N13',3,4,'N',3);
COMMIT;
INSERT INTO clubes(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(s_club.nextval,'EFECTO PAPEL','YALE FORMO ESTE CLUB DE LECTURA PARA EL ALUMNADO Y GRADUADOS DE LA UNIVERSIDAD',06520,'149 ELM STREET',4,6,'N',4);
COMMIT;
INSERT INTO clubes(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(s_club.nextval,'LECTORES DE AYER','TRAYENDO LA LECTURA A DISTINTAS GENERACIONES EN SAN FRANCISCO',4004,'LOMBARD STREET 14ST VIEW',4,7,'N',NULL);
COMMIT;

--autorias

INSERT INTO autorias(id_autor,ISBN) VALUES (1,3783353412011);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (2,1301534123022);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (2,1301534123033);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (3,7805341235044);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (4,1301534748055);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (5,4581417235066);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (6,5024441735066);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (7,1301417235077);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (8,4581417235088);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (9,4581414095099);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (10,5944012351010);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (11,4581417251111);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (12,1301417231212);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (13,4617417231313);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (14,1301417231414);
COMMIT;
INSERT INTO autorias(id_autor,ISBN) VALUES (15,1301417231515);
COMMIT;
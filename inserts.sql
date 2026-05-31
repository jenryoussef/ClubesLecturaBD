--SCRIPS INSERTS NIVEL 1

--AutoreS
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (1,'CHARLES','BAUDELEIRE',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (2,'ISAAC','ASIMOV',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (3,'ROBERTO','BOLAÑO',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (4,'WILLIAM','GASS',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (5,'INIO','ASANO',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (6,'LUCY','ELLMAN',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (7,'DON','DELILO',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (8,'TATSUKI','FUJIMOTO',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (9,'HARUKI','MURAKAMI',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (10,'MIRCEA','CARTARESCU',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (11,'KYOKO','OKASAKI',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (12,'JOHN','STEINBACK',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (13,'FIODOR','DOSTOYEVSKI',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (14,'MARGUERITE','YOUNG',NULL);
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (15,'RACHEL','INGALLS',NULL);

--Paises
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (1,'VENEZUELA','BS','VENEZOLANO-NA');
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (2,'FRANCIA','EUR','FRANCES-SA');
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (3,'ESPAÑA','EUR','ESPAÑOL-LA');
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (4,'ESTADOS UNIDOS','USD','ESTADOUNIDENSE');
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (5,'CHILE','CLP','CHILENO-NA');
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (6,'JAPON','JPY','JAPONESA');
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (7,'REINO UNIDO','GBP','BRITANICO-CA');
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (8,'RUMANIA','RON','RUMANO-NA');
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (10,'RUSIA','RUB','RUSO-SA');

--Representantes

INSERT INTO representantes (id_representante, primer_nombre, primer_apellido, segundo_nombre, segundo_apellido, doc_identidad)
VALUES (1,'MARCO','SANTOS','ALFONZO','MANUEL',12120320);
INSERT INTO representantes (id_representante, primer_nombre, primer_apellido, segundo_nombre, segundo_apellido, doc_identidad)
VALUES (2,'MARIANNE','FELINI',NULL,'ROSTELLI',1200400);
INSERT INTO representantes (id_representante, primer_nombre, primer_apellido, segundo_nombre, segundo_apellido, doc_identidad)
VALUES (3,'FIONA','APPLE','MCAFFE','MAGGART',2030040);
INSERT INTO representantes (id_representante, primer_nombre, primer_apellido, segundo_nombre, segundo_apellido, doc_identidad)
VALUES (4,'SOFIA','CARMINA',NULL,'COPPOLA',12120320);

--Instituciones

INSERT INTO instituciones (id_institucion,nombre,tipo,descripcion) VALUES(1,'UCAB','UN','Es una universidad primera con sede en Caracas y Puerto Ordaz');
INSERT INTO instituciones (id_institucion,nombre,tipo,descripcion) VALUES(2,'BNF','BI','La Blibioteca Nacional de Francia es el deposito nacional de todo lo publicado en Francia');
INSERT INTO instituciones (id_institucion,nombre,tipo,descripcion) VALUES(3,'RABASF','BI','La Real Academia de las Bellas Artes de San Fernando es una institucion integrada en el instituto de España');
INSERT INTO instituciones (id_institucion,nombre,tipo,descripcion) VALUES(4,'Yale','UN','es una prestigiosa institución privada de investigación perteneciente a la Ivy League, ubicada en New Haven, Connecticut, Estados Unidos');

--idiomas

INSERT INTO idiomas (id_idioma,nombre) VALUES (1,'ESPAÑOL');
INSERT INTO idiomas (id_idioma,nombre) VALUES (2,'FRANCES');
INSERT INTO idiomas (id_idioma,nombre) VALUES (3,'INGLES');
INSERT INTO idiomas (id_idioma,nombre) VALUES (4,'JAPONES');
INSERT INTO idiomas (id_idioma,nombre) VALUES (5,'RUMANO');
INSERT INTO idiomas (id_idioma,nombre) VALUES (6,'RUSO');
INSERT INTO idiomas (id_idioma,nombre) VALUES (7,'ALEMAN');
INSERT INTO idiomas (id_idioma,nombre) VALUES (8,'CHINO');


--NIVEL 2 

--libros

INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (3783353412011,'LAS FLORES DEL MAL',TO_DATE('1857','YYYY'),236,'LAS FLORES DEL MAL ES UNA COLECCION DE CUENTOS DE CHARLES BAUDELAIRE, CONSIDERADA SU OBRA MAGNA, ABARCA CASI LA TOTALIDAD DE SU CUERPO POETICO DESDE 1840 HASTA LA SALIDA DE LA COLECCION','RELATOS CORTOS DE TIPO SICOLOGICO','CU',2, NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (1301534123022,'LOS LIMITES DE LA FUNDACION',TO_DATE('1982','YYYY'),536,'LOS LIMITES DE LA FUNDACION ES UNA NOVELA DE LA SAGA DE LA FUNDACION DE ISAAC ASIMOV, LA PRIMERA DE LAS DOS SECUELAS DE LA FUNDACION','NOVELA DE CIENCIA FICCION','NO',4, NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (1301534123033,'FUNDACION Y TIERRA',TO_DATE('1986','YYYY'),528,'FUNDACION Y TIERRA ES UNA NOVELA DE CIENCIA FICCION Y ES LA QUINTA PARTE DE LA SERIE DE LA FUNDACION, CONTINUA LA HISTORIA EN EL PUNTO EN EL QUE TERMINO LOS LIMITES DE LA FUNDACION','NOVELA DE CIENCIA FICCION','NO',4,1301534123022);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (7805341235044,'2666',TO_DATE('2004','YYYY'),1250,'2666 ES UNA MONUMENTAL NOVELA POSTUMA DEL ESCRITOR CHILENO ROBERTO BOLAÑO SOBRE LA BUSQUEDA DE UN ESCRITOR ALEMAN Y UNA SERIE DE BRUTALES ASESINATOS DE MUJERES','NOVELA DE FICCION DETECTIVESCA','NO',5,NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (1301534748055,'EL TUNEL',TO_DATE('1995','YYYY'),652,'NARRA LA HISTORIA DE WILLIAM FREDERICK KOHLER, UN MISANTROPICO PROFESOR DE HISTORIA QUE, AL TERMINAR SU BRILLANTE ESTUDIO SOBRE EL NAZISMO, ES INCAPAZ DE REDACTAR LA INTRODUCCION Y COMIENZA A ESCRIBIR SUS MEMORIAS,REVELANDO SUS PREJUCIOS Y CRUELDADES','NOVELA POSTMODERNA, METAFICCIONAL Y EXPERIMENTAL','NO',4,NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (4581417235066,'SOLANIN',TO_DATE('2005','YYYY'),464,'SOLANIN ES UN MANGA ESCRITO E ILUSTRADO POR INIO ASANO. LA HISTORIA SIGUE A MEIKO Y TANEDA, DOS JOVENES RECIEN EGRESADOS DE LA UNIVERSIDAD QUE LUCHAN POR ADAPTARSE A LA VIDA ADULTA Y ENCONTRAR SU PROPOSITO FRENTE A UNA SOCIEDAD MONOTONA Y EXIGENTE','NOVELA DRAMATICA','NO',6,NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (5024441735066,'PATOS, NEWBURYPORT',TO_DATE('2019','YYYY'),1030,'DUCKS, NEWBURYPORT ES UNA AMBICIOSA NOVELA DE LA AUTORA BRITANICA LUCY ELLMANN, RETRATA LA MENTE HIPERACTIVA Y PREOCUPADA DE UNA AMA DE CASA DE ESTADOUNIDENSE DE MEDIANA EDAD','NOVELA EXPERIMENTAL DE FICCION LITERARIA','NO',7,NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (1301417235077,'RUIDO BLANCO',TO_DATE('1985','YYYY'),326,'NOVELA FUNDAMENTAL DE LA LITERATURA POSTMODERNA QUE SATIRIZA LA SOCIEDAD DEL CONSUMO, EL EXCESO DE INFORMACION Y EL MIEDO A LA MUERTE','NOVELA DE SATIRA ACADEMICA','NO',4,NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (4581417235088,'LOOK BACK',TO_DATE('2021','YYYY'),143,'LOOK BACK SIGUE LA HISTORIA DE FUJINO Y KYOMOTO, DOS CHICAS DE PERSONALIDADES OPUESTAS UNIDAS POR SU PASION POR DIBUJAR MANGA','NOVELA DRAMATICA','NO',6,NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (4581414095099,'SAUCE CIEGO, MUJER DORMIDAD',TO_DATE('2006','YYYY'),480,'ES UNA COLECCION DE 24 CUENTOS DE HARUKI MURAKAMI QUE ENTRALAZA LO COTIDIANO Y SURREALISTA','FICCION CONTEMPORANEA Y REALISMO MAGICO','CU',6,NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (5944012351010,'SOLENOIDE',TO_DATE('2015','YYYY'),800,'SOLENOIDE ESCRITA POR EL AUTOR RUMANO MIRCEA CARTARESCU ES UNA NOVELA MONUMENTAL QUE FUNCIONA COMO EL DIARIO DE UN ESCRITOR FRUSTRADO','NOVELA DE FILOSOFIA Y CIENCIA FICCION','NO',8,NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (4581417251111,'RIVERS EDGE',TO_DATE('1994','YYYY'),242,'RIVERS EDGE RETRATA LAS OSCURAS REALIDADES DE LA JUVENTUD JAPONESA EN LOS AÑOS 90','NOVELA JUVENIL Y DRAMATICA','NO',6,NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (1301417231212,'AL ESTE DEL EDEN',TO_DATE('1952','YYYY'),688,'AL ESTE DEL EDEN ES UNA NOVELA CLASICA DE JOHN STEINBACK QUE ENTRALAZA LAS SAGAS DE LAS FAMILIAS TRASK Y HAMILTON EN EL VALLE DE SALINAS, CALIFORNIA, ENTRE LA GUERRA DE SECESION Y LA PRIMERA GUERRA MUNDIAL','NOVELA DRAMATICA Y PSICOLOGICA','NO',4,NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (4617417231313,'LOS HERMANOS KARAMAZOV',TO_DATE('1880','YYYY'),1232,'LA OBRA CUMBRE DE FIODOR DOSTOYEVSKI, ES UNA TRAGEDIA FILOSOFICA QUE GIRA EN TORNO AL ASESINATO DEL DEPRAVADO TERRATENIENTE FIODOR KARAMAZOV','NOVELA FILOSOFICA Y PSICOLOGICA','NO',10,NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (1301417231414,'SEÑORITA MACINTOSH, MI QUERIDA',TO_DATE('1965','YYYY'),1189,'MISS MACINTOSH, MY DARLING ES UNA NOVELA DE MARGUERITE YOUNG. ELLA LA HA DESCRITO COMO UNA EXPLORACION DE LAS ILUSIONES, LAS ALUCINACIONES Y LOS ERRORES DE JUICIO EN LAS VIDAS INDIVIDUALES,SIENDO EL ESCENARIO CENTRAL DE LA NOVELA EL PARAISO DE UN ADICTO AL OPIO','NOVELA PSICOLIGICA Y UNA EPOPEYA PICARESCA','NO',4,NULL);
INSERT INTO libros (ISBN,titulo,ano_publicacion,n_pagina,sipnopsis, tema,tipo_narrativa, id_paislibro,id_anterior) 
VALUES (1301417231515,'LA SEÑORA CALIBAN',TO_DATE('1982','YYYY'),128,'LA SEÑORA CALIBAN ES UNA NOVELA CORTA DE RACHEL INGALLS QUE NARRA LA HISTORIA DE DOROTHY, UN AMA DE CASA SOLITARIA ATRAPADA EN UN MATRIMONIO INFELIZ TRAS LA PERDIDA DE UN HIJO','NOVELA CORTA DE FANTASIA, SATIRA SOCIAL Y ROMANCE','NO',4,NULL);


--Ciudades

INSERT INTO ciudades(id_paisciudad,id_ciudad,nombre) VALUES (1,1,'CARACAS');
INSERT INTO ciudades(id_paisciudad,id_ciudad,nombre) VALUES (2,2,'PARIS');
INSERT INTO ciudades(id_paisciudad,id_ciudad,nombre) VALUES (2,3,'BURDEOS');
INSERT INTO ciudades(id_paisciudad,id_ciudad,nombre) VALUES (3,4,'MADRID');
INSERT INTO ciudades(id_paisciudad,id_ciudad,nombre) VALUES (3,5,'BARCELONA');
INSERT INTO ciudades(id_paisciudad,id_ciudad,nombre) VALUES (4,6,'NEW HAVEN');
INSERT INTO ciudades(id_paisciudad,id_ciudad,nombre) VALUES (4,7,'SAN FRANCISCO');

--Lectores

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(1,'FEDERICO','REFERONI','CATOLINI',TO_DATE('04-10-1985','DD-MM-YYYY'),'FEDECATO@GMAIL.COM',31202312,1,'CORTECIONI',NULL,NULL);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(2,'TERICO','SANTOS','TOMARDO',TO_DATE('21-01-2016','DD-MM-YYYY'),'SONSSANTOS@GMAIL.COM',34102312,1,'ALFONZO',NULL,1);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(3,'SPIKE','JONZE','SPIEGEL',TO_DATE('22-10-1969','DD-MM-YYYY'),'SJONZE@GMAIL.COM',10333212,1,'ADAM',NULL,NULL);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(4,'GUILLERMO','DEL TORO','GOMEZ',TO_DATE('09-10-1964','DD-MM-YYYY'),'LABERINTODEPAN@GMAIL.COM',23341456,1,NULL,NULL,NULL);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(5,'MICHAEL','HANEKE','DIREC',TO_DATE('23-03-1942','DD-MM-YYYY'),'FUNNYGAMES@GMAIL.COM',2202312,2,NULL,NULL,NULL);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(6,'JAKEY','NAKEY','GAMER',TO_DATE('12-06-2016','DD-MM-YYYY'),'NAKEYJAKEY@GMAIL.COM',1202312,2,NULL,NULL,5);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(7,'SANTIAGO','SANTOS','CANOLINI',TO_DATE('05-12-2017','DD-MM-YYYY'),'KIDSANTOS@GMAIL.COM',2230403,2,NULL,1,NULL);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(8,'JEAN','LUC','GODARD',TO_DATE('03-12-1930','DD-MM-YYYY'),'JEANLUCGOD@GMAIL.COM',1130403,2,NULL,NULL,NULL);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(9,'ALFONSO','CUARON','OROZCO',TO_DATE('28-11-1961','DD-MM-YYYY'),'CHILDRENOFMAN@GMAIL.COM',5550403,3,NULL,NULL,NULL);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(10,'ALEJANDRO','SANS','CANTANTE',TO_DATE('05-12-1924','DD-MM-YYYY'),'ALFONSO@GMAIL.COM',27102712,3,NULL,NULL,NULL);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(11,'MARIA','CARMEN','GARCIA',TO_DATE('15-09-1945','DD-MM-YYYY'),'MARIACARMEN@GMAIL.COM',22102712,3,'MAURA',NULL,NULL);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(12,'MANOLO','SANSFINAL','FANTASY',TO_DATE('31-01-1997','DD-MM-YYYY'),'FF7@GMAIL.COM',7777721,3,NULL,NULL,NULL);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(13,'PAUL','THOMAS','ANDERSON',TO_DATE('31-01-2016','DD-MM-YYYY'),'PUNCHDRUNKLOVE@GMAIL.COM',18982122,4,NULL,3,NULL);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(14,'QUENTIN','TARANTINO','SANTOS',TO_DATE('12-11-2017','DD-MM-YYYY'),'IDEATHIEF@GMAIL.COM',15968323,4,'MANBABY',3,NULL);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(15,'MARTIN','SCORCESE','MOVIEGUY',TO_DATE('01-03-2010','DD-MM-YYYY'),'TAXIDRIVER@GMAIL.COM',32203421,4,NULL,2,NULL);

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_paislector,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(16,'FRANCIS','FORD','COPPOLA',TO_DATE('09-03-2010','DD-MM-YYYY'),'APOCALYPSENOW@GMAIL.COM',2321456,4,NULL,4,NULL);
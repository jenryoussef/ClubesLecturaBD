INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'CHARLES','BAUDELEIRE',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'ISAAC','ASIMOV',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'ROBERTO','BOLAÑO',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'WILLIAM','GASS',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'INIO','ASANO',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'LUCY','ELLMAN',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'DON','DELILO',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'TATSUKI','FUJIMOTO',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'HARUKI','MURAKAMI',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'MIRCEA','CARTARESCU',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'KYOKO','OKASAKI',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'JOHN','STEINBACK',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'FIODOR','DOSTOYEVSKI',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'MARGUERITE','YOUNG',NULL);
COMMIT;
INSERT INTO ADFJ_AUTORES(id_autor,nombre,apellido,seudonimo) VALUES (ADFJ_S_AUTOR.nextval,'RACHEL','INGALLS',NULL);
COMMIT;

INSERT INTO ADFJ_PAISES(id_pais,nombre,moneda,nacionalidad) VALUES (ADFJ_S_PAIS.nextval,'VENEZUELA','BS','VENEZOLANO');
COMMIT;
INSERT INTO ADFJ_PAISES(id_pais,nombre,moneda,nacionalidad) VALUES (ADFJ_S_PAIS.nextval,'FRANCIA','EUR','FRANCES');
COMMIT;
INSERT INTO ADFJ_PAISES(id_pais,nombre,moneda,nacionalidad) VALUES (ADFJ_S_PAIS.nextval,'ESPAÑA','EUR','ESPAÑOL');
COMMIT;
INSERT INTO ADFJ_PAISES(id_pais,nombre,moneda,nacionalidad) VALUES (ADFJ_S_PAIS.nextval,'ESTADOS UNIDOS','USD','ESTADOUNIDENSE');
COMMIT;
INSERT INTO ADFJ_PAISES(id_pais,nombre,moneda,nacionalidad) VALUES (ADFJ_S_PAIS.nextval,'CHILE','CLP','CHILENO');
COMMIT;
INSERT INTO ADFJ_PAISES(id_pais,nombre,moneda,nacionalidad) VALUES (ADFJ_S_PAIS.nextval,'JAPON','JPY','JAPONES');
COMMIT;
INSERT INTO ADFJ_PAISES(id_pais,nombre,moneda,nacionalidad) VALUES (ADFJ_S_PAIS.nextval,'REINO UNIDO','GBP','BRITANICO');
COMMIT;
INSERT INTO ADFJ_PAISES(id_pais,nombre,moneda,nacionalidad) VALUES (ADFJ_S_PAIS.nextval,'RUMANIA','RON','RUMANO');
COMMIT;
INSERT INTO ADFJ_PAISES(id_pais,nombre,moneda,nacionalidad) VALUES (ADFJ_S_PAIS.nextval,'RUSIA','RUB','RUSO-SA');
COMMIT;

INSERT INTO ADFJ_REPRESENTANTES (id_representante, primer_nombre, primer_apellido, segundo_nombre, segundo_apellido, doc_identidad)
VALUES (ADFJ_S_REPRESENTANTE.nextval,'MARCO','SANTOS','ALFONZO','MANUEL',12120320);
COMMIT;
INSERT INTO ADFJ_REPRESENTANTES (id_representante, primer_nombre, primer_apellido, segundo_nombre, segundo_apellido, doc_identidad)
VALUES (ADFJ_S_REPRESENTANTE.nextval,'MARIANNE','FELINI',NULL,'ROSTELLI',1200400);
COMMIT;
INSERT INTO ADFJ_REPRESENTANTES (id_representante, primer_nombre, primer_apellido, segundo_nombre, segundo_apellido, doc_identidad)
VALUES (ADFJ_S_REPRESENTANTE.nextval,'FIONA','APPLE','MCAFFE','MAGGART',2030040);
COMMIT;
INSERT INTO ADFJ_REPRESENTANTES (id_representante, primer_nombre, primer_apellido, segundo_nombre, segundo_apellido, doc_identidad)
VALUES (ADFJ_S_REPRESENTANTE.nextval,'SOFIA','CARMINA',NULL,'COPPOLA',12120320);
COMMIT;
INSERT INTO ADFJ_REPRESENTANTES (id_representante, primer_nombre, primer_apellido, segundo_nombre, segundo_apellido, doc_identidad)
VALUES (ADFJ_S_REPRESENTANTE.nextval, 'ELENA', 'RUIZ', 'MARIA', 'PAREDES', 28450123);
COMMIT;

INSERT INTO ADFJ_INSTITUCIONES (id_institucion,nombre,tipo,descripcion) VALUES(ADFJ_S_INSTITUCION.nextval,'UCAB','UN','Es una universidad primera con sede en Caracas y Puerto Ordaz');
COMMIT;
INSERT INTO ADFJ_INSTITUCIONES (id_institucion,nombre,tipo,descripcion) VALUES(ADFJ_S_INSTITUCION.nextval,'BNF','BI','La Blibioteca Nacional de Francia es el deposito nacional de todo lo publicado en Francia');
COMMIT;
INSERT INTO ADFJ_INSTITUCIONES (id_institucion,nombre,tipo,descripcion) VALUES(ADFJ_S_INSTITUCION.nextval,'RABASF','BI','La Real Academia de las Bellas Artes de San Fernando es una institucion integrada en el instituto de España');
COMMIT;
INSERT INTO ADFJ_INSTITUCIONES (id_institucion,nombre,tipo,descripcion) VALUES(ADFJ_S_INSTITUCION.nextval,'Yale','UN','Es una prestigiosa institución privada de investigación perteneciente a la Ivy League, ubicada en New Haven, Connecticut, Estados Unidos');
COMMIT;

INSERT INTO ADFJ_IDIOMAS (id_idioma,nombre) VALUES (ADFJ_S_IDIOMA.nextval,'ESPAÑOL');
COMMIT;
INSERT INTO ADFJ_IDIOMAS (id_idioma,nombre) VALUES (ADFJ_S_IDIOMA.nextval,'FRANCES');
COMMIT;
INSERT INTO ADFJ_IDIOMAS (id_idioma,nombre) VALUES (ADFJ_S_IDIOMA.nextval,'INGLES');
COMMIT;
INSERT INTO ADFJ_IDIOMAS (id_idioma,nombre) VALUES (ADFJ_S_IDIOMA.nextval,'JAPONES');
COMMIT;
INSERT INTO ADFJ_IDIOMAS (id_idioma,nombre) VALUES (ADFJ_S_IDIOMA.nextval,'RUMANO');
COMMIT;
INSERT INTO ADFJ_IDIOMAS (id_idioma,nombre) VALUES (ADFJ_S_IDIOMA.nextval,'RUSO');
COMMIT;
INSERT INTO ADFJ_IDIOMAS (id_idioma,nombre) VALUES (ADFJ_S_IDIOMA.nextval,'ALEMAN');
COMMIT;
INSERT INTO ADFJ_IDIOMAS (id_idioma,nombre) VALUES (ADFJ_S_IDIOMA.nextval,'CHINO');
COMMIT;

INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'FEDERICO','REFERONI','CATOLINI',TO_DATE('04-10-1985','DD-MM-YYYY'),'FEDECATO@GMAIL.COM',31202312,1,'CORTECIONI',NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'TERICO','SANTOS','TOMARDO',TO_DATE('21-01-2016','DD-MM-YYYY'),'SONSSANTOS@GMAIL.COM',34102312,1,'ALFONZO',NULL,1);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'SPIKE','JONZE','SPIEGEL',TO_DATE('22-10-1969','DD-MM-YYYY'),'SJONZE@GMAIL.COM',10333212,1,'ADAM',NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'GUILLERMO','DEL TORO','GOMEZ',TO_DATE('09-10-1964','DD-MM-YYYY'),'LABERINTODEPAN@GMAIL.COM',23341456,1,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'MICHAEL','HANEKE','DIREC',TO_DATE('23-03-1942','DD-MM-YYYY'),'FUNNYGAMES@GMAIL.COM',2202312,2,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'JAKEY','NAKEY','GAMER',TO_DATE('12-06-2016','DD-MM-YYYY'),'NAKEYJAKEY@GMAIL.COM',1202312,2,NULL,NULL,5);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'SANTIAGO','SANTOS','CANOLINI',TO_DATE('05-12-2017','DD-MM-YYYY'),'KIDSANTOS@GMAIL.COM',2230403,2,NULL,1,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'JEAN','LUC','GODARD',TO_DATE('03-12-1930','DD-MM-YYYY'),'JEANLUCGOD@GMAIL.COM',1130403,2,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'ALFONSO','CUARON','OROZCO',TO_DATE('28-11-1961','DD-MM-YYYY'),'CHILDRENOFMAN@GMAIL.COM',5550403,3,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'ALEJANDRO','SANS','CANTANTE',TO_DATE('05-12-1924','DD-MM-YYYY'),'ALFONSO@GMAIL.COM',27102712,3,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'MARIA','CARMEN','GARCIA',TO_DATE('15-09-1945','DD-MM-YYYY'),'MARIACARMEN@GMAIL.COM',22102712,3,'MAURA',NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'MANOLO','SANSFINAL','FANTASY',TO_DATE('31-01-1997','DD-MM-YYYY'),'FF7@GMAIL.COM',7777721,3,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'PAUL','THOMAS','ANDERSON',TO_DATE('31-01-1999','DD-MM-YYYY'),'PUNCHDRUNKLOVE@GMAIL.COM',18982122,4,NULL,3,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'QUENTIN','TARANTINO','SANTOS',TO_DATE('12-11-2017','DD-MM-YYYY'),'IDEATHIEF@GMAIL.COM',15968323,4,'MANBABY',3,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'MARTIN','SCORCESE','MOVIEGUY',TO_DATE('01-03-1997','DD-MM-YYYY'),'TAXIDRIVER@GMAIL.COM',32203421,4,NULL,2,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'FRANCIS','FORD','COPPOLA',TO_DATE('09-03-1995','DD-MM-YYYY'),'APOCALYPSENOW@GMAIL.COM',2321456,4,NULL,4,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'ANDREI','TARKOVSKY','ARSENYEVICH',TO_DATE('04-04-1932','DD-MM-YYYY'),'ANDREI.TARKOVSKY@GMAIL.COM',44201312,9,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'INGMAR','BERGMAN','ERNST',TO_DATE('14-07-1918','DD-MM-YYYY'),'INGMAR.BERGMAN@GMAIL.COM',55301212,7,'ERNST',NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'CLAIRE','DENIS','MARIE',TO_DATE('21-04-1946','DD-MM-YYYY'),'CLAIRE.DENIS@GMAIL.COM',33401512,2,'MARIE',NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'HIROKAZU','KOREEDA','MASAO',TO_DATE('06-06-1962','DD-MM-YYYY'),'HIROKAZU.KOREEDA@GMAIL.COM',66501812,6,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'CARLOS','REYGADAS','BARQUIN',TO_DATE('10-10-1971','DD-MM-YYYY'),'CARLOS.REYGADAS@GMAIL.COM',77601912,3,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'APICHATPONG','WEERASETHAKUL','CHAI',TO_DATE('23-07-1970','DD-MM-YYYY'),'APICHAT.WEERASETHAKUL@GMAIL.COM',88702012,4,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'AGNES','VARDA','ARLETTE',TO_DATE('30-05-1928','DD-MM-YYYY'),'AGNES.VARDA@GMAIL.COM',99802112,2,'ARLETTE',NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'CHANTAL','AKERMAN','ANNE',TO_DATE('06-06-2005','DD-MM-YYYY'),'CHANTAL.AKERMAN@GMAIL.COM',11902212,2,'ANNE',NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'PEDRO','ALMODOVAR','CABALLERO',TO_DATE('25-09-1949','DD-MM-YYYY'),'PEDRO.ALMODOVAR@GMAIL.COM',22102312,3,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'VICTOR','ERICE','ARAS',TO_DATE('30-06-1940','DD-MM-YYYY'),'VICTOR.ERICE@GMAIL.COM',33202412,3,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'JOHN','CASSAVETES','NICHOLAS',TO_DATE('09-12-1929','DD-MM-YYYY'),'JOHN.CASSAVETES@GMAIL.COM',44302512,4,'NICHOLAS',NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'KELLY','REICHARDT','ANN',TO_DATE('05-09-1964','DD-MM-YYYY'),'KELLY.REICHARDT@GMAIL.COM',55402612,4,'ANN',NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'VALENTINA','RUIZ','PAREDES',TO_DATE('14/03/2016','DD/MM/YYYY'),'VALENTINA.RUIZ@CORREO.COM',40110001,1,'MARIA',1,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'MATEO','LINARES','GOMEZ',TO_DATE('22/07/2015','DD/MM/YYYY'),'MATEO.LINARES@CORREO.COM',40110002,1,NULL,1,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'ISABELLA','MENDOZA','SILVA',TO_DATE('05/11/2014','DD/MM/YYYY'),'ISABELLA.MENDOZA@CORREO.COM',40110003,1,NULL,2,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'DIEGO','SALAZAR','TORRES',TO_DATE('18/01/2017','DD/MM/YYYY'),'DIEGO.SALAZAR@CORREO.COM',40110004,1,'ANDRES',2,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'CAMILA','ORTEGA','VEGA',TO_DATE('30/08/2008','DD/MM/YYYY'),'CAMILA.ORTEGA@CORREO.COM',40110005,1,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'ANDRES','PEREZ','MOLINA',TO_DATE('12/04/2006','DD/MM/YYYY'),'ANDRES.PEREZ@CORREO.COM',40110006,1,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'LAURA','MOLINA','DIAZ',TO_DATE('25/09/2004','DD/MM/YYYY'),'LAURA.MOLINA@CORREO.COM',40110007,1,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'NICOLAS','VEGA','ROJAS',TO_DATE('03/02/2010','DD/MM/YYYY'),'NICOLAS.VEGA@CORREO.COM',40110008,1,NULL,5,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'SOFIA','HERRERA','CASTRO',TO_DATE('17/06/2009','DD/MM/YYYY'),'SOFIA.HERRERA@CORREO.COM',40110009,1,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'ROSA','MENDEZ','FLORES',TO_DATE('10/05/1978','DD/MM/YYYY'),'ROSA.MENDEZ@CORREO.COM',40110010,1,NULL,NULL,NULL);
COMMIT;
INSERT INTO ADFJ_LECTORES(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(ADFJ_S_LECTOR.nextval,'JORGE','CASTILLO','RAMIREZ',TO_DATE('28/12/1975','DD/MM/YYYY'),'JORGE.CASTILLO@CORREO.COM',40110011,1,'LUIS',NULL,NULL);
COMMIT;

INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (3783353412011,'LAS FLORES DEL MAL',TO_DATE('1857','YYYY'),236,'Las flores del mal es una colección de poemas de Charles Baudelaire, considerada su obra magna. Abarca casi la totalidad de su producción poética desde 1840 hasta la publicación de la colección.','RELATOS CORTOS DE TIPO SICOLOGICO','CU',2, NULL); 
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301534123022,'LOS LIMITES DE LA FUNDACION',TO_DATE('1982','YYYY'),536,'Los límites de la Fundación es una novela de la saga de la Fundación de Isaac Asimov. Es la primera de las dos secuelas de Fundación' ,'NOVELA DE CIENCIA FICCION','NO',4, NULL);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301534123033,'FUNDACION Y TIERRA',TO_DATE('1986','YYYY'),528,'Fundación y Tierra es una novela de ciencia ficción y la quinta entrega de la serie de la Fundación. Continúa la historia donde concluye Los límites de la Fundación.','NOVELA DE CIENCIA FICCION','NO',4,1301534123022);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (7805341235044,'2666',TO_DATE('2004','YYYY'),1250, '2666 es una monumental novela póstuma del escritor chileno Roberto Bolaño. Narra la búsqueda de un escritor alemán y una serie de brutales asesinatos de mujeres.','NOVELA DE FICCION DETECTIVESCA','NO',5,NULL);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301534748055,'EL TUNEL',TO_DATE('1995','YYYY'),652, 'La novela narra la historia de William Frederick Kohler, un misantrópico profesor de historia que, al terminar su brillante estudio sobre el nazismo, es incapaz de redactar la introducción y comienza a escribir sus memorias, revelando sus prejuicios y crueldades.','NOVELA POSTMODERNA, METAFICCIONAL Y EXPERIMENTAL','NO',4,NULL);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (4581417235066,'SOLANIN',TO_DATE('2005','YYYY'),464,'Solanin es un manga escrito e ilustrado por Inio Asano. La historia sigue a Meiko y Taneda, dos jóvenes recién egresados de la universidad que luchan por adaptarse a la vida adulta y encontrar su propósito frente a una sociedad monótona y exigente.','NOVELA DRAMATICA','NO',6,NULL);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (5024441735066,'PATOS, NEWBURYPORT',TO_DATE('2019','YYYY'),1030,'Ducks, Newburyport es una ambiciosa novela de la autora británica Lucy Ellmann. Retrata la mente hiperactiva y preocupada de una ama de casa estadounidense de mediana edad.','NOVELA EXPERIMENTAL DE FICCION LITERARIA','NO',7,NULL);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301417235077,'RUIDO BLANCO',TO_DATE('1985','YYYY'),326,'Novela fundamental de la literatura posmoderna que satiriza la sociedad de consumo, el exceso de información y el miedo a la muerte.','NOVELA DE SATIRA ACADEMICA','NO',4,NULL);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (4581417235088,'LOOK BACK',TO_DATE('2021','YYYY'),143,'Look Back sigue la historia de Fujino y Kyomoto, dos chicas de personalidades opuestas unidas por su pasión por dibujar manga.','NOVELA DRAMATICA','NO',6,NULL);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (4581414095099,'SAUCE CIEGO, MUJER DORMIDAD',TO_DATE('2006','YYYY'),480,'Es una colección de 24 cuentos de Haruki Murakami que entrelaza lo cotidiano con elementos surrealistas.','FICCION CONTEMPORANEA Y REALISMO MAGICO','CU',6,NULL);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (5944012351010,'SOLENOIDE',TO_DATE('2015','YYYY'),800,'Solenoide, escrita por el autor rumano Mircea Cărtărescu, es una novela monumental que funciona como el diario de un escritor frustrado.','NOVELA DE FILOSOFIA Y CIENCIA FICCION','NO',8,NULL);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (4581417251111,'RIVERS EDGE',TO_DATE('1994','YYYY'),242,'Rivers Edge retrata las oscuras realidades de la juventud japonesa durante la década de 1990.','NOVELA JUVENIL Y DRAMATICA','NO',6,NULL);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301417231212,'AL ESTE DEL EDEN',TO_DATE('1952','YYYY'),688,'Al este del Edén es una novela clásica de John Steinbeck que entrelaza las sagas de las familias Trask y Hamilton en el valle de Salinas, California, entre la Guerra de Secesión y la Primera Guerra Mundial.','NOVELA DRAMATICA Y PSICOLOGICA','NO',4,NULL);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (4617417231313,'LOS HERMANOS KARAMAZOV',TO_DATE('1880','YYYY'),1232,'La obra cumbre de Fiódor Dostoyevski es una tragedia filosófica que gira en torno al asesinato del terrateniente Fiódor Karamázov.','NOVELA FILOSOFICA Y PSICOLOGICA','NO',9,NULL);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301417231414,'SEÑORITA MACINTOSH, MI QUERIDA',TO_DATE('1965','YYYY'),1189,'Miss MacIntosh, My Darling es una novela de Marguerite Young. La autora la describió como una exploración de las ilusiones, las alucinaciones y los errores de juicio en las vidas individuales, teniendo como escenario central el paraíso de un adicto al opio.','NOVELA PSICOLIGICA Y UNA EPOPEYA PICARESCA','NO',4,NULL);
COMMIT;
INSERT INTO ADFJ_LIBROS (ISBN,titulo,ano_publicacion,n_paginas,sinopsis, tema,tipo_narrativa, id_pais,id_anterior) 
VALUES (1301417231515,'LA SEÑORA CALIBAN',TO_DATE('1982','YYYY'),128,'La señora Caliban es una novela corta de Rachel Ingalls que narra la historia de Dorothy, una ama de casa solitaria atrapada en un matrimonio infeliz tras la pérdida de un hijo.','NOVELA CORTA DE FANTASIA, SATIRA SOCIAL Y ROMANCE','NO',4,NULL);
COMMIT;

INSERT INTO ADFJ_CIUDADES(id_pais,id_ciudad,nombre) VALUES (1,1,'CARACAS'); COMMIT;
INSERT INTO ADFJ_CIUDADES(id_pais,id_ciudad,nombre) VALUES (2,1,'PARIS'); COMMIT;
INSERT INTO ADFJ_CIUDADES(id_pais,id_ciudad,nombre) VALUES (2,2,'BURDEOS'); COMMIT;
INSERT INTO ADFJ_CIUDADES(id_pais,id_ciudad,nombre) VALUES (3,1,'MADRID'); COMMIT;
INSERT INTO ADFJ_CIUDADES(id_pais,id_ciudad,nombre) VALUES (3,2,'BARCELONA'); COMMIT;
INSERT INTO ADFJ_CIUDADES(id_pais,id_ciudad,nombre) VALUES (4,1,'NEW HAVEN'); COMMIT;
INSERT INTO ADFJ_CIUDADES(id_pais,id_ciudad,nombre) VALUES (4,2,'SAN FRANCISCO'); COMMIT;

INSERT INTO ADFJ_CLUBES(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(ADFJ_S_CLUB.nextval,'SPOILERS ANONIMOS','Spoilers anónimos es un club para personas de todas las edades e intereses literarios',1060,'Altamira 4ta transversal',1,1,'S',NULL);
COMMIT;
INSERT INTO ADFJ_CLUBES(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(ADFJ_S_CLUB.nextval,'VIVIR ENTRE LINEAS','vivir entre líneas existe para fomentar la lectura de los estudiantes de la UCAB',1020,'Av. Teherán, Montalbán',1,1,'N',1);
COMMIT;
INSERT INTO ADFJ_CLUBES(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(ADFJ_S_CLUB.nextval,'LOS TAPA DURA','Una comunidad de lectores de Burdeos que abre sus puertas a cualquier interesado',33000,'Ca Cour des Aides',2,2,'S',NULL);
COMMIT;
INSERT INTO ADFJ_CLUBES(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(ADFJ_S_CLUB.nextval,'PLUMA EN EL TINTERO','La BNF provee a la comunidad parisense un club de lectura que hace uso de su gran colección de libros',75013,'Quai Francois Mauriac',2,1,'N',2);
COMMIT;
INSERT INTO ADFJ_CLUBES(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(ADFJ_S_CLUB.nextval,'NO JUZGUES POR LA PORTADA','Queremos promover la lectura a cualquier tipo de persona',08001,'Municipio Barcelona, Av. Manolo',3,2,'S',NULL);
COMMIT;
INSERT INTO ADFJ_CLUBES(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(ADFJ_S_CLUB.nextval,'LECTORES DESDE CERO','Club patrocinado por la RABASF para el fomento de la lectura',28014,'Calle de Alcalá N13',3,1,'N',3);
COMMIT;
INSERT INTO ADFJ_CLUBES(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(ADFJ_S_CLUB.nextval,'EFECTO PAPEL','Yale formó este club de lectura para el alumnado y graduados de la universidad',06520,'149 Elm Street',4,1,'N',4);
COMMIT;
INSERT INTO ADFJ_CLUBES(id_club,nombre,descripcion,cod_postal,direccion,id_pais,id_ciudad,cuota_membr,id_institucion)
VALUES(ADFJ_S_CLUB.nextval,'LECTORES DE AYER','Trayendo la lectura a distintas generaciones de San Francisco',4004,'Lombard Street 14th view',4,2,'N',NULL);
COMMIT;

INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (1,3783353412011); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (2,1301534123022); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (2,1301534123033); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (3,7805341235044); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (4,1301534748055); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (5,4581417235066); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (6,5024441735066); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (7,1301417235077); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (8,4581417235088); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (9,4581414095099); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (10,5944012351010); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (11,4581417251111); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (12,1301417231212); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (13,4617417231313); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (14,1301417231414); COMMIT;
INSERT INTO ADFJ_AUTORIAS(id_autor,ISBN) VALUES (15,1301417231515); COMMIT;

INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (1,4617417231313,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (1,7805341235044,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (1,5944012351010,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (2,4581417235088,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (2,4581414095099,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (2,4581417235066,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (3,1301417235077,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (3,1301534123022,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (3,1301534123033,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (4,7805341235044,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (4,4617417231313,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (4,1301417231212,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (5,3783353412011,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (5,5024441735066,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (5,1301534748055,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (6,4581417235088,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (6,4581417235066,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (6,4581414095099,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (7,4581417235088,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (7,4581417251111,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (7,4581414095099,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (8,3783353412011,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (8,1301534748055,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (8,5024441735066,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (9,7805341235044,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (9,1301417231212,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (9,4617417231313,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (10,1301417231414,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (10,1301417231515,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (10,5944012351010,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (11,1301417231212,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (11,4617417231313,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (11,1301417231414,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (12,1301534123022,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (12,1301534123033,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (12,5944012351010,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (13,4581417235088,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (13,1301417235077,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (13,1301534748055,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (14,4581417235066,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (14,4581414095099,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (14,4581417251111,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (15,7805341235044,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (15,1301417231212,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (15,4617417231313,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (16,1301417231515,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (16,1301417231414,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (16,5024441735066,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (17,4617417231313,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (17,5944012351010,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (17,1301417231414,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (18,5024441735066,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (18,1301534748055,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (18,4617417231313,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (19,3783353412011,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (19,7805341235044,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (19,1301417231515,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (20,4581414095099,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (20,4581417235066,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (20,4581417235088,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (21,1301417231212,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (21,7805341235044,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (21,4617417231313,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (22,1301534123022,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (22,1301534123033,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (22,1301417235077,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (23,3783353412011,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (23,5024441735066,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (23,1301417231414,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (24,3783353412011,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (24,5944012351010,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (24,7805341235044,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (25,1301417231212,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (25,4617417231313,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (25,1301417231515,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (26,1301417231212,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (26,1301417231414,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (26,5944012351010,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (27,1301534748055,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (27,1301417235077,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (27,1301417231212,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (28,4581417235088,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (28,4581414095099,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (28,1301417231515,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (29,4581417235088,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (29,4581417235066,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (29,4581414095099,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (30,4581417235088,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (30,4581417251111,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (30,4581417235066,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (31,4581417235066,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (31,4581414095099,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (31,4581417235088,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (32,4581417251111,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (32,4581417235088,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (32,4581417235066,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (33,4581417235066,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (33,4581414095099,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (33,4581417251111,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (34,4581414095099,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (34,4581417235066,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (34,1301534123022,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (35,7805341235044,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (35,4617417231313,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (35,1301417231212,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (36,4581417251111,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (36,4581417235066,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (36,4581414095099,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (37,4581417235066,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (37,4581414095099,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (37,4581417251111,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (38,1301417231212,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (38,4617417231313,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (38,3783353412011,3); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (39,1301417231212,1); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (39,5944012351010,2); COMMIT;
INSERT INTO ADFJ_PREFERENCIAS(id_lector,ISBN,orden) VALUES (39,5024441735066,3); COMMIT;

INSERT INTO ADFJ_ASOCIACIONES(id_club,id_socio,descripcion) VALUES (1,3,'Colaboración entre Spoilers Anónimos y Los Tapa Dura para intercambio de libros y lectores'); COMMIT;
INSERT INTO ADFJ_ASOCIACIONES(id_club,id_socio,descripcion) VALUES (1,5,'Alianza entre Spoilers Anónimos y No Juzgues por la Portada para fomentar la lectura en español'); COMMIT;
INSERT INTO ADFJ_ASOCIACIONES(id_club,id_socio,descripcion) VALUES (3,4,'Los Tapa Dura y Pluma en el Tintero comparten recursos y colecciones entre París y Burdeos'); COMMIT;
INSERT INTO ADFJ_ASOCIACIONES(id_club,id_socio,descripcion) VALUES (5,6,'No Juzgues por la Portada y Lectores Desde Cero promueven la lectura en toda España'); COMMIT;
INSERT INTO ADFJ_ASOCIACIONES(id_club,id_socio,descripcion) VALUES (7,8,'Efecto Papel y Lectores de Ayer colaboran en el ámbito angloparlante de Estados Unidos'); COMMIT;
INSERT INTO ADFJ_ASOCIACIONES(id_club,id_socio,descripcion) VALUES (2,6,'Vivir Ente Líneas y Lectores Desde Cero intercambian experiencias académicas en español'); COMMIT;
INSERT INTO ADFJ_ASOCIACIONES(id_club,id_socio,descripcion) VALUES (1,2,'Spoilers Anónimos y Vivir entre Líneas se apoyan mutuamente en Venezuela'); COMMIT;
INSERT INTO ADFJ_ASOCIACIONES(id_club,id_socio,descripcion) VALUES (4,8,'Pluma en el Tintero y Lectores de Ayer comparten obras en inglés y francés'); COMMIT;
INSERT INTO ADFJ_ASOCIACIONES(id_club,id_socio,descripcion) VALUES (6,7,'Lectores Desde Cero y Efecto Papel colaboran en intercambio académico internacional'); COMMIT;

INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,212,5551001,NULL,1); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,212,5551002,NULL,2); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (33,556,7771001,NULL,3); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (33,1,4441001,NULL,4); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (34,93,3331001,NULL,5); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (34,91,2221001,NULL,6); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (1,203,1111001,NULL,7); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (1,415,9991001,NULL,8); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,414,5552001,1,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,424,5552002,2,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,416,5552003,3,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,412,5552004,4,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (33,6,7772001,5,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (33,7,7772002,6,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (33,6,7772003,7,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (33,7,7772004,8,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (34,6,3332001,9,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (34,7,3332002,10,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (34,6,3332003,11,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (34,7,3332004,12,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (1,203,1112001,13,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (1,415,1112002,14,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (1,203,1112003,15,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (1,415,1112004,16,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (7,495,9993001,17,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (44,20,8883001,18,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (33,6,7773001,19,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (81,3,6663001,20,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (34,6,5553001,21,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (1,212,4443001,22,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (33,7,3333001,23,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (33,6,2223001,24,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (34,7,1113001,25,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (34,6,9994001,26,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (1,415,8884001,27,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (1,503,7774001,28,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,414,5555001,29,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,414,5555002,30,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,414,5555003,31,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,414,5555004,32,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,414,5555005,33,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,414,5555006,34,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,414,5555007,35,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,414,5555008,36,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,414,5555009,37,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,414,5555010,38,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,414,5555011,38,NULL); COMMIT;
INSERT INTO ADFJ_TELEFONOS(codigo_pais,codigo_area,numero,id_lector,id_club) VALUES (58,414,5555012,39,NULL); COMMIT;

INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,1,NULL,1); COMMIT;  -- SPOILERS: ESP
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,2,NULL,2); COMMIT;  -- VIVIR: ESP
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,3,NULL,3); COMMIT;  -- TAPA DURA: ESP
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,4,NULL,5); COMMIT;  -- NO JUZGUES: ESP
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,5,NULL,6); COMMIT;  -- LECTORES CERO: ESP
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,6,NULL,8); COMMIT; -- LECTORES AYER: ESP
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,7,1,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,8,2,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,9,3,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,10,4,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,11,7,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,12,9,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,13,10,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,14,11,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,15,12,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (2,1,NULL,3); COMMIT;  -- TAPA DURA: FRA
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (2,2,NULL,4); COMMIT;  -- PLUMA: FRA
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (2,3,6,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (2,4,6,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (2,5,5,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (2,6,7,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (2,7,8,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,1,NULL,7); COMMIT;  -- EFECTO PAPEL: ING
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,2,NULL,8); COMMIT;  -- LECTORES AYER: ING
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,3,1,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,4,3,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,5,4,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,6,5,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,7,8,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,8,9,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,9,11,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,10,13,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,11,14,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,12,15,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,13,16,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (6,35,17,NULL); COMMIT; -- ruso
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,36,17,NULL); COMMIT; -- ingles
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,37,18,NULL); COMMIT; -- ingles
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (2,38,19,NULL); COMMIT; -- frances
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,39,19,NULL); COMMIT; -- ingles
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (4,40,20,NULL); COMMIT; -- japones
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,41,20,NULL); COMMIT; -- ingles
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,42,21,NULL); COMMIT; -- español
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,43,22,NULL); COMMIT; -- ingles
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (2,44,23,NULL); COMMIT; -- frances
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (2,45,24,NULL); COMMIT; -- frances
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,46,25,NULL); COMMIT; -- español
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,47,26,NULL); COMMIT; -- español
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,48,27,NULL); COMMIT; -- ingles
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (3,49,28,NULL); COMMIT; -- ingles
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,50,29,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,51,30,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,52,31,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,53,32,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,54,33,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,55,34,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,56,35,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,57,36,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,58,37,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,59,38,NULL); COMMIT;
INSERT INTO ADFJ_HABLA(id_idioma,id_habla,id_lector,id_club) VALUES (1,60,39,NULL); COMMIT;

INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (1,1,'A',2,TO_DATE('18:00','HH24:MI'),TO_DATE('01/01/2020','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (1,2,'J',3,TO_DATE('17:30','HH24:MI'),TO_DATE('01/01/2020','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (1,3,'N',4,TO_DATE('17:00','HH24:MI'),TO_DATE('01/01/2020','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (2,1,'A',3,TO_DATE('18:00','HH24:MI'),TO_DATE('15/03/2019','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (2,2,'J',4,TO_DATE('17:00','HH24:MI'),TO_DATE('15/03/2019','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (2,3,'N',5,TO_DATE('17:00','HH24:MI'),TO_DATE('15/03/2019','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (3,1,'A',2,TO_DATE('17:00','HH24:MI'),TO_DATE('10/06/2018','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (3,2,'J',3,TO_DATE('18:00','HH24:MI'),TO_DATE('10/06/2018','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (3,3,'N',5,TO_DATE('17:00','HH24:MI'),TO_DATE('10/06/2018','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (4,1,'A',4,TO_DATE('18:30','HH24:MI'),TO_DATE('20/09/2017','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (4,2,'J',5,TO_DATE('17:00','HH24:MI'),TO_DATE('20/09/2017','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (4,3,'N',2,TO_DATE('17:00','HH24:MI'),TO_DATE('20/09/2017','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (5,1,'A',6,TO_DATE('17:30','HH24:MI'),TO_DATE('05/02/2021','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (5,2,'J',2,TO_DATE('18:00','HH24:MI'),TO_DATE('05/02/2021','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (5,3,'N',3,TO_DATE('17:00','HH24:MI'),TO_DATE('05/02/2021','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (6,1,'A',3,TO_DATE('18:00','HH24:MI'),TO_DATE('12/11/2016','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (6,2,'J',4,TO_DATE('17:30','HH24:MI'),TO_DATE('12/11/2016','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (6,3,'N',6,TO_DATE('17:00','HH24:MI'),TO_DATE('12/11/2016','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (7,1,'A',5,TO_DATE('17:00','HH24:MI'),TO_DATE('08/08/2015','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (7,2,'J',6,TO_DATE('18:00','HH24:MI'),TO_DATE('08/08/2015','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (7,3,'N',2,TO_DATE('17:00','HH24:MI'),TO_DATE('08/08/2015','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (8,1,'A',4,TO_DATE('18:00','HH24:MI'),TO_DATE('30/04/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (8,2,'J',5,TO_DATE('17:00','HH24:MI'),TO_DATE('30/04/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (8,3,'N',3,TO_DATE('17:00','HH24:MI'),TO_DATE('30/04/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (1,4,'A',5,TO_DATE('17:30','HH24:MI'),TO_DATE('10/03/2021','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (1,5,'A',6,TO_DATE('18:00','HH24:MI'),TO_DATE('15/06/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (1,6,'J',2,TO_DATE('17:00','HH24:MI'),TO_DATE('01/09/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (5,4,'A',4,TO_DATE('18:00','HH24:MI'),TO_DATE('20/01/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_GRUPOS_LECTURA(id_club,id_grupo,tipo,dia,hora,f_creacion) VALUES (5,5,'J',5,TO_DATE('17:30','HH24:MI'),TO_DATE('20/01/2022','DD/MM/YYYY')); COMMIT;

INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,2,TO_DATE('15/03/2020','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,3,TO_DATE('20/04/2020','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,4,TO_DATE('10/05/2020','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (2,3,TO_DATE('01/01/2019','DD/MM/YYYY'),TO_DATE('01/02/2019','DD/MM/YYYY'),TO_DATE('01/03/2019','DD/MM/YYYY'),'VO'); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (4,5,TO_DATE('05/06/2018','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (4,6,TO_DATE('10/06/2018','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (4,7,TO_DATE('15/07/2018','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (4,8,TO_DATE('20/08/2018','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (3,6,TO_DATE('01/01/2017','DD/MM/YYYY'),NULL,TO_DATE('01/06/2017','DD/MM/YYYY'),'IN'); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (5,9,TO_DATE('12/02/2021','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (5,11,TO_DATE('20/03/2021','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (5,12,TO_DATE('25/04/2021','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (6,10,TO_DATE('01/01/2019','DD/MM/YYYY'),NULL,TO_DATE('01/01/2021','DD/MM/YYYY'),'DE'); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (7,13,TO_DATE('01/09/2015','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (7,14,TO_DATE('10/09/2015','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (7,15,TO_DATE('15/10/2015','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (7,16,TO_DATE('20/11/2015','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (8,13,TO_DATE('01/01/2022','DD/MM/YYYY'),TO_DATE('01/07/2022','DD/MM/YYYY'),TO_DATE('01/08/2022','DD/MM/YYYY'),'VO'); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,17,TO_DATE('10/03/2021','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,18,TO_DATE('10/03/2021','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,19,TO_DATE('15/06/2022','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,23,TO_DATE('15/06/2022','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,24,TO_DATE('01/09/2022','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (5,20,TO_DATE('20/01/2022','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (5,21,TO_DATE('20/01/2022','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (5,25,TO_DATE('20/01/2022','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (5,26,TO_DATE('20/01/2022','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (7,22,TO_DATE('01/03/2016','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (7,27,TO_DATE('01/03/2016','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (7,28,TO_DATE('01/03/2016','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,29,TO_DATE('15/01/2025','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,30,TO_DATE('15/01/2025','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,31,TO_DATE('15/01/2025','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,32,TO_DATE('15/01/2025','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,33,TO_DATE('20/01/2025','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,34,TO_DATE('20/01/2025','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,35,TO_DATE('20/01/2025','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,36,TO_DATE('20/01/2025','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,37,TO_DATE('20/01/2025','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,38,TO_DATE('01/02/2025','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;
INSERT INTO ADFJ_HIST_MEMBRESIAS(id_club,id_lector,f_ing_club,f_sol_retiro,f_retiro,motivo_retiro) VALUES (1,39,TO_DATE('01/02/2025','DD/MM/YYYY'),NULL,NULL,NULL); COMMIT;

INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),1,TO_DATE('28/02/2021','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),2,TO_DATE('28/02/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),3,TO_DATE('28/02/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),4,TO_DATE('29/02/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),5,TO_DATE('28/02/2025','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,2,TO_DATE('15/03/2020','DD/MM/YYYY'),1,TO_DATE('14/03/2021','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,2,TO_DATE('15/03/2020','DD/MM/YYYY'),2,TO_DATE('14/03/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,2,TO_DATE('15/03/2020','DD/MM/YYYY'),3,TO_DATE('14/03/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,3,TO_DATE('20/04/2020','DD/MM/YYYY'),1,TO_DATE('19/04/2021','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,3,TO_DATE('20/04/2020','DD/MM/YYYY'),2,TO_DATE('19/04/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,4,TO_DATE('10/05/2020','DD/MM/YYYY'),1,TO_DATE('09/05/2021','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (5,9,TO_DATE('12/02/2021','DD/MM/YYYY'),1,TO_DATE('11/02/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (5,9,TO_DATE('12/02/2021','DD/MM/YYYY'),2,TO_DATE('11/02/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (5,9,TO_DATE('12/02/2021','DD/MM/YYYY'),3,TO_DATE('11/02/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,17,TO_DATE('10/03/2021','DD/MM/YYYY'),1,TO_DATE('09/03/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,17,TO_DATE('10/03/2021','DD/MM/YYYY'),2,TO_DATE('09/03/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,17,TO_DATE('10/03/2021','DD/MM/YYYY'),3,TO_DATE('09/03/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,18,TO_DATE('10/03/2021','DD/MM/YYYY'),1,TO_DATE('09/03/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,18,TO_DATE('10/03/2021','DD/MM/YYYY'),2,TO_DATE('09/03/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,19,TO_DATE('15/06/2022','DD/MM/YYYY'),1,TO_DATE('14/06/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,19,TO_DATE('15/06/2022','DD/MM/YYYY'),2,TO_DATE('14/06/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,23,TO_DATE('15/06/2022','DD/MM/YYYY'),1,TO_DATE('14/06/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,24,TO_DATE('01/09/2022','DD/MM/YYYY'),1,TO_DATE('31/08/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (5,20,TO_DATE('20/01/2022','DD/MM/YYYY'),1,TO_DATE('19/01/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (5,20,TO_DATE('20/01/2022','DD/MM/YYYY'),2,TO_DATE('19/01/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (5,21,TO_DATE('20/01/2022','DD/MM/YYYY'),1,TO_DATE('19/01/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (5,25,TO_DATE('20/01/2022','DD/MM/YYYY'),1,TO_DATE('19/01/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (5,26,TO_DATE('20/01/2022','DD/MM/YYYY'),1,TO_DATE('19/01/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,29,TO_DATE('15/01/2025','DD/MM/YYYY'),1,TO_DATE('14/01/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,30,TO_DATE('15/01/2025','DD/MM/YYYY'),1,TO_DATE('14/01/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,33,TO_DATE('20/01/2025','DD/MM/YYYY'),1,TO_DATE('19/01/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,34,TO_DATE('20/01/2025','DD/MM/YYYY'),1,TO_DATE('19/01/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,38,TO_DATE('01/02/2025','DD/MM/YYYY'),1,TO_DATE('31/01/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_PAGOS_MEMBRESIA(id_club,id_lector,f_ing_club,id_pago,f_pago) VALUES (1,39,TO_DATE('01/02/2025','DD/MM/YYYY'),1,TO_DATE('31/01/2026','DD/MM/YYYY')); COMMIT;

INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,1,1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),TO_DATE('01/03/2020','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,1,1,3,TO_DATE('20/04/2020','DD/MM/YYYY'),TO_DATE('20/04/2020','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,1,1,4,TO_DATE('10/05/2020','DD/MM/YYYY'),TO_DATE('10/05/2020','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,3,1,2,TO_DATE('15/03/2020','DD/MM/YYYY'),TO_DATE('15/03/2020','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (4,1,4,5,TO_DATE('05/06/2018','DD/MM/YYYY'),TO_DATE('05/06/2018','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (4,1,4,8,TO_DATE('20/08/2018','DD/MM/YYYY'),TO_DATE('20/08/2018','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (4,3,4,6,TO_DATE('10/06/2018','DD/MM/YYYY'),TO_DATE('10/06/2018','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (4,3,4,7,TO_DATE('15/07/2018','DD/MM/YYYY'),TO_DATE('15/07/2018','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (5,1,5,9,TO_DATE('12/02/2021','DD/MM/YYYY'),TO_DATE('12/02/2021','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (5,1,5,11,TO_DATE('20/03/2021','DD/MM/YYYY'),TO_DATE('20/03/2021','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (5,1,5,12,TO_DATE('25/04/2021','DD/MM/YYYY'),TO_DATE('25/04/2021','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (7,1,7,13,TO_DATE('01/09/2015','DD/MM/YYYY'),TO_DATE('01/09/2015','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (7,1,7,15,TO_DATE('15/10/2015','DD/MM/YYYY'),TO_DATE('15/10/2015','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (7,1,7,16,TO_DATE('20/11/2015','DD/MM/YYYY'),TO_DATE('20/11/2015','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (7,3,7,14,TO_DATE('10/09/2015','DD/MM/YYYY'),TO_DATE('10/09/2015','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,1,1,17,TO_DATE('10/03/2021','DD/MM/YYYY'),TO_DATE('10/03/2021','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,1,1,18,TO_DATE('10/03/2021','DD/MM/YYYY'),TO_DATE('10/03/2021','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,4,1,19,TO_DATE('15/06/2022','DD/MM/YYYY'),TO_DATE('15/06/2022','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,4,1,23,TO_DATE('15/06/2022','DD/MM/YYYY'),TO_DATE('15/06/2022','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,5,1,24,TO_DATE('01/09/2022','DD/MM/YYYY'),TO_DATE('01/09/2022','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (5,1,5,20,TO_DATE('20/01/2022','DD/MM/YYYY'),TO_DATE('20/01/2022','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (5,1,5,21,TO_DATE('20/01/2022','DD/MM/YYYY'),TO_DATE('20/01/2022','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (5,4,5,25,TO_DATE('20/01/2022','DD/MM/YYYY'),TO_DATE('20/01/2022','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (5,4,5,26,TO_DATE('20/01/2022','DD/MM/YYYY'),TO_DATE('20/01/2022','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (7,1,7,22,TO_DATE('01/03/2016','DD/MM/YYYY'),TO_DATE('01/03/2016','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (7,1,7,27,TO_DATE('01/03/2016','DD/MM/YYYY'),TO_DATE('01/03/2016','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (7,1,7,28,TO_DATE('01/03/2016','DD/MM/YYYY'),TO_DATE('01/03/2016','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,3,1,29,TO_DATE('15/01/2025','DD/MM/YYYY'),TO_DATE('15/01/2025','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,3,1,30,TO_DATE('15/01/2025','DD/MM/YYYY'),TO_DATE('15/01/2025','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,3,1,31,TO_DATE('15/01/2025','DD/MM/YYYY'),TO_DATE('15/01/2025','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,3,1,32,TO_DATE('15/01/2025','DD/MM/YYYY'),TO_DATE('15/01/2025','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,2,1,33,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,2,1,34,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,2,1,35,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,2,1,36,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,2,1,37,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,5,1,38,TO_DATE('01/02/2025','DD/MM/YYYY'),TO_DATE('01/02/2025','DD/MM/YYYY'),NULL); COMMIT;
INSERT INTO ADFJ_HIST_ASIGNACIONES(id_club_grupo,id_grupo,id_club_memb,id_lector,f_ing_club,f_ing_grupo,f_fin_grupo) VALUES (1,5,1,39,TO_DATE('01/02/2025','DD/MM/YYYY'),TO_DATE('01/02/2025','DD/MM/YYYY'),NULL); COMMIT;

INSERT INTO ADFJ_OBRAS_ACTUADAS(id_club,id_obra,titulo,duracion_minutos,descripcion,activa,costo) VALUES (1,1,'LA NOCHE DE LOS CRIMENES',90,'Ada´tación teatral del libro Los Hermanos Karamazov','S',15); COMMIT;
INSERT INTO ADFJ_OBRAS_ACTUADAS(id_club,id_obra,titulo,duracion_minutos,descripcion,activa,costo) VALUES (1,2,'EL ULTIMO MISTERIO',75,'Obra basada en el libro 2666 de Roberto Bolaño','N',10); COMMIT;
INSERT INTO ADFJ_OBRAS_ACTUADAS(id_club,id_obra,titulo,duracion_minutos,descripcion,activa,costo) VALUES (4,1,'LES FLEURS DU MAL EN SCENE',60,'Puesta en escena poética de Las Flores del Mal','S',20); COMMIT;
INSERT INTO ADFJ_OBRAS_ACTUADAS(id_club,id_obra,titulo,duracion_minutos,descripcion,activa,costo) VALUES (5,1,'EL LABERINTO DE KARAMAZOV',100,'Versión española de Los Hermanos Karamazov','S',12); COMMIT;
INSERT INTO ADFJ_OBRAS_ACTUADAS(id_club,id_obra,titulo,duracion_minutos,descripcion,activa,costo) VALUES (7,1,'WHITE NOISE ON STAGE',80,'Adaptación teatral de Ruido Blanco de Don DeLillo','S',25); COMMIT;
INSERT INTO ADFJ_OBRAS_ACTUADAS(id_club,id_obra,titulo,duracion_minutos,descripcion,activa,costo) VALUES (7,2,'FOUNDATION PLAY',110,'Adaptación teatral de Fundación y Tierra','N',18); COMMIT;
INSERT INTO ADFJ_OBRAS_ACTUADAS(id_club,id_obra,titulo,duracion_minutos,descripcion,activa,costo) VALUES (8,1,'EAST OF EDEN LIVE',95,'Versión teatral de Al Este del Edén','S',22); COMMIT;
INSERT INTO ADFJ_OBRAS_ACTUADAS(id_club,id_obra,titulo,duracion_minutos,descripcion,activa,costo) VALUES (3,1,'LE TUNNEL EN SCENE',85,'Adaptación teatral del tunel de William Gass','S',18); COMMIT;
INSERT INTO ADFJ_OBRAS_ACTUADAS(id_club,id_obra,titulo,duracion_minutos,descripcion,activa,costo) VALUES (2,1,'VOCES ENTRE LINEAS',70,'Obra basada en Sauce Ciego, Mujer Dormida de Murakami','S',NULL); COMMIT;

INSERT INTO ADFJ_ADAPTACIONES(id_club,id_obra,isbn) VALUES (1,1,4617417231313); COMMIT; -- Karamazov
INSERT INTO ADFJ_ADAPTACIONES(id_club,id_obra,isbn) VALUES (1,2,7805341235044); COMMIT; -- 2666
INSERT INTO ADFJ_ADAPTACIONES(id_club,id_obra,isbn) VALUES (4,1,3783353412011); COMMIT; -- Flores del mal
INSERT INTO ADFJ_ADAPTACIONES(id_club,id_obra,isbn) VALUES (5,1,4617417231313); COMMIT; -- Karamazov
INSERT INTO ADFJ_ADAPTACIONES(id_club,id_obra,isbn) VALUES (7,1,1301417235077); COMMIT; -- Ruido Blanco
INSERT INTO ADFJ_ADAPTACIONES(id_club,id_obra,isbn) VALUES (7,2,1301534123033); COMMIT; -- Fundacion y Tierra
INSERT INTO ADFJ_ADAPTACIONES(id_club,id_obra,isbn) VALUES (8,1,1301417231212); COMMIT; -- Al este del Eden
INSERT INTO ADFJ_ADAPTACIONES(id_club,id_obra,isbn) VALUES (3,1,1301534748055); COMMIT; -- El Tunel
INSERT INTO ADFJ_ADAPTACIONES(id_club,id_obra,isbn) VALUES (2,1,4581414095099); COMMIT; -- Sauce ciego

INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (1,1,1); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (1,1,3); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (1,1,4); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (1,2,1); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (1,2,4); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (4,1,5); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (4,1,8); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (5,1,9); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (5,1,11); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (5,1,12); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (7,1,13); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (7,1,15); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (7,1,16); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (7,2,13); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (7,2,16); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (8,1,13); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (3,1,5); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (3,1,8); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (2,1,1); COMMIT;
INSERT INTO ADFJ_ELENCOS(id_club,id_obra,id_lector) VALUES (2,1,3); COMMIT;

INSERT INTO ADFJ_PRESENTACIONES(id_club,id_obra,f_presentacion,valoracion,n_entradas) VALUES (1,1,TO_DATE('15/06/2023','DD/MM/YYYY'),4.50,80); COMMIT;
INSERT INTO ADFJ_PRESENTACIONES(id_club,id_obra,f_presentacion,valoracion,n_entradas) VALUES (1,1,TO_DATE('22/06/2023','DD/MM/YYYY'),4.75,95); COMMIT;
INSERT INTO ADFJ_PRESENTACIONES(id_club,id_obra,f_presentacion,valoracion,n_entradas) VALUES (1,2,TO_DATE('10/10/2022','DD/MM/YYYY'),3.80,60); COMMIT;
INSERT INTO ADFJ_PRESENTACIONES(id_club,id_obra,f_presentacion,valoracion,n_entradas) VALUES (4,1,TO_DATE('20/04/2024','DD/MM/YYYY'),4.90,70); COMMIT;
INSERT INTO ADFJ_PRESENTACIONES(id_club,id_obra,f_presentacion,valoracion,n_entradas) VALUES (4,1,TO_DATE('27/04/2024','DD/MM/YYYY'),4.70,65); COMMIT;
INSERT INTO ADFJ_PRESENTACIONES(id_club,id_obra,f_presentacion,valoracion,n_entradas) VALUES (5,1,TO_DATE('03/03/2024','DD/MM/YYYY'),4.20,75); COMMIT;
INSERT INTO ADFJ_PRESENTACIONES(id_club,id_obra,f_presentacion,valoracion,n_entradas) VALUES (7,1,TO_DATE('15/11/2023','DD/MM/YYYY'),4.60,90); COMMIT;
INSERT INTO ADFJ_PRESENTACIONES(id_club,id_obra,f_presentacion,valoracion,n_entradas) VALUES (7,1,TO_DATE('22/11/2023','DD/MM/YYYY'),4.80,99); COMMIT;
INSERT INTO ADFJ_PRESENTACIONES(id_club,id_obra,f_presentacion,valoracion,n_entradas) VALUES (7,2,TO_DATE('05/05/2022','DD/MM/YYYY'),3.50,55); COMMIT;
INSERT INTO ADFJ_PRESENTACIONES(id_club,id_obra,f_presentacion,valoracion,n_entradas) VALUES (8,1,TO_DATE('01/09/2024','DD/MM/YYYY'),4.30,85); COMMIT;
INSERT INTO ADFJ_PRESENTACIONES(id_club,id_obra,f_presentacion,valoracion,n_entradas) VALUES (3,1,TO_DATE('14/07/2023','DD/MM/YYYY'),4.10,50); COMMIT;
INSERT INTO ADFJ_PRESENTACIONES(id_club,id_obra,f_presentacion,valoracion,n_entradas) VALUES (2,1,TO_DATE('10/12/2023','DD/MM/YYYY'),4.40,40); COMMIT;

INSERT INTO ADFJ_MEJORES_ACTORES(id_club_el,id_obra_el,id_lector,id_club_pres,id_obra_pres,f_presentacion) VALUES (1,1,3,1,1,TO_DATE('15/06/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_MEJORES_ACTORES(id_club_el,id_obra_el,id_lector,id_club_pres,id_obra_pres,f_presentacion) VALUES (1,1,1,1,1,TO_DATE('22/06/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_MEJORES_ACTORES(id_club_el,id_obra_el,id_lector,id_club_pres,id_obra_pres,f_presentacion) VALUES (1,2,4,1,2,TO_DATE('10/10/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_MEJORES_ACTORES(id_club_el,id_obra_el,id_lector,id_club_pres,id_obra_pres,f_presentacion) VALUES (4,1,5,4,1,TO_DATE('20/04/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_MEJORES_ACTORES(id_club_el,id_obra_el,id_lector,id_club_pres,id_obra_pres,f_presentacion) VALUES (4,1,8,4,1,TO_DATE('27/04/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_MEJORES_ACTORES(id_club_el,id_obra_el,id_lector,id_club_pres,id_obra_pres,f_presentacion) VALUES (5,1,9,5,1,TO_DATE('03/03/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_MEJORES_ACTORES(id_club_el,id_obra_el,id_lector,id_club_pres,id_obra_pres,f_presentacion) VALUES (7,1,15,7,1,TO_DATE('15/11/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_MEJORES_ACTORES(id_club_el,id_obra_el,id_lector,id_club_pres,id_obra_pres,f_presentacion) VALUES (7,1,13,7,1,TO_DATE('22/11/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_MEJORES_ACTORES(id_club_el,id_obra_el,id_lector,id_club_pres,id_obra_pres,f_presentacion) VALUES (7,2,16,7,2,TO_DATE('05/05/2022','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_MEJORES_ACTORES(id_club_el,id_obra_el,id_lector,id_club_pres,id_obra_pres,f_presentacion) VALUES (8,1,13,8,1,TO_DATE('01/09/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_MEJORES_ACTORES(id_club_el,id_obra_el,id_lector,id_club_pres,id_obra_pres,f_presentacion) VALUES (3,1,5,3,1,TO_DATE('14/07/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_MEJORES_ACTORES(id_club_el,id_obra_el,id_lector,id_club_pres,id_obra_pres,f_presentacion) VALUES (2,1,1,2,1,TO_DATE('10/12/2023','DD/MM/YYYY')); COMMIT;

INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,1,4617417231313,TO_DATE('05/01/2024','DD/MM/YYYY'),'S',1,1,1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),TO_DATE('01/03/2020','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,1,4617417231313,TO_DATE('12/01/2024','DD/MM/YYYY'),'S',1,1,1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),TO_DATE('01/03/2020','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,1,4617417231313,TO_DATE('19/01/2024','DD/MM/YYYY'),'S',1,1,1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),TO_DATE('01/03/2020','DD/MM/YYYY'),'Obra silosófica y psicológica de gran profundidad. El grupo valoró positivamente el desarrollo de los personajes.',5,'S'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (4,1,3783353412011,TO_DATE('08/02/2024','DD/MM/YYYY'),'S',4,4,1,5,TO_DATE('05/06/2018','DD/MM/YYYY'),TO_DATE('05/06/2018','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (4,1,3783353412011,TO_DATE('15/02/2024','DD/MM/YYYY'),'S',4,4,1,5,TO_DATE('05/06/2018','DD/MM/YYYY'),TO_DATE('05/06/2018','DD/MM/YYYY'),'Baudelaire explora la dualidad del ser humano con maestría. El grupo encontró paralelismos con la vida moderna.',4,'S'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (5,1,7805341235044,TO_DATE('06/03/2024','DD/MM/YYYY'),'S',5,5,1,9,TO_DATE('12/02/2021','DD/MM/YYYY'),TO_DATE('12/02/2021','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (5,1,7805341235044,TO_DATE('13/03/2024','DD/MM/YYYY'),'S',5,5,1,9,TO_DATE('12/02/2021','DD/MM/YYYY'),TO_DATE('12/02/2021','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (5,1,7805341235044,TO_DATE('20/03/2024','DD/MM/YYYY'),'S',5,5,1,9,TO_DATE('12/02/2021','DD/MM/YYYY'),TO_DATE('12/02/2021','DD/MM/YYYY'),'Bolaño construye una obra monumental. El grupo debatió extensamente sobre los crímenes de Santa Teresa y su simbolismo.',5,'S'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (7,1,1301417235077,TO_DATE('07/11/2023','DD/MM/YYYY'),'S',7,7,1,13,TO_DATE('01/09/2015','DD/MM/YYYY'),TO_DATE('01/09/2015','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (7,1,1301417235077,TO_DATE('14/11/2023','DD/MM/YYYY'),'S',7,7,1,13,TO_DATE('01/09/2015','DD/MM/YYYY'),TO_DATE('01/09/2015','DD/MM/YYYY'),'DeLillo anticipa la sociedad de la información. El grupo valoró la vigencia del libro en la era digital.',4,'S'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (4,3,4581417235066,TO_DATE('10/04/2024','DD/MM/YYYY'),'S',4,4,1,5,TO_DATE('05/06/2018','DD/MM/YYYY'),TO_DATE('05/06/2018','DD/MM/YYYY'),'Se disfrutó mucho del manga. Se destacaron los temas de crecimiento personal y amistad.',4,'S'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,4,5944012351010,TO_DATE('10/04/2024','DD/MM/YYYY'),'S',1,1,4,19,TO_DATE('15/06/2022','DD/MM/YYYY'),TO_DATE('15/06/2022','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,4,5944012351010,TO_DATE('17/04/2024','DD/MM/YYYY'),'S',1,1,4,19,TO_DATE('15/06/2022','DD/MM/YYYY'),TO_DATE('15/06/2022','DD/MM/YYYY'),'Cartarescu construye un universo onírico y denso. El grupo destacó la riqueza literaria y filosófica de la obra.',5,'S'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,5,1301534748055,TO_DATE('24/04/2024','DD/MM/YYYY'),'S',1,1,5,24,TO_DATE('01/09/2022','DD/MM/YYYY'),TO_DATE('01/09/2022','DD/MM/YYYY'),'Gass lleva la prosa al límite. El grupo debatió intensamente sobre la naturaleza del lenguaje y la memoria.',4,'S'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (5,4,1301417231212,TO_DATE('03/04/2024','DD/MM/YYYY'),'S',5,5,4,25,TO_DATE('20/01/2022','DD/MM/YYYY'),TO_DATE('20/01/2022','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (5,4,1301417231212,TO_DATE('10/04/2024','DD/MM/YYYY'),'S',5,5,4,25,TO_DATE('20/01/2022','DD/MM/YYYY'),TO_DATE('20/01/2022','DD/MM/YYYY'),'Steinback retrata la complejidad del ser humano con maestría. El bien y el mal como fuerzas eternas.',5,'S'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,1,4617417231313,TO_DATE('04/05/2026','DD/MM/YYYY'),'S',1,1,1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),TO_DATE('01/03/2020','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,1,4617417231313,TO_DATE('11/05/2026','DD/MM/YYYY'),'S',1,1,1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),TO_DATE('01/03/2020','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,1,4617417231313,TO_DATE('18/05/2026','DD/MM/YYYY'),'S',1,1,1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),TO_DATE('01/03/2020','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,1,4617417231313,TO_DATE('25/05/2026','DD/MM/YYYY'),'S',1,1,1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),TO_DATE('01/03/2020','DD/MM/YYYY'),'Se hizo un análisis profundo sobre la complejidad moral y dualidad de los personajes de Dostoyevski.',5,'S'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,4,5944012351010,TO_DATE('07/05/2026','DD/MM/YYYY'),'S',1,1,4,19,TO_DATE('15/06/2022','DD/MM/YYYY'),TO_DATE('15/06/2022','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,4,5944012351010,TO_DATE('14/05/2026','DD/MM/YYYY'),'S',1,1,4,19,TO_DATE('15/06/2022','DD/MM/YYYY'),TO_DATE('15/06/2022','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,4,5944012351010,TO_DATE('21/05/2026','DD/MM/YYYY'),'S',1,1,4,19,TO_DATE('15/06/2022','DD/MM/YYYY'),TO_DATE('15/06/2022','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,4,5944012351010,TO_DATE('28/05/2026','DD/MM/YYYY'),'S',1,1,4,19,TO_DATE('15/06/2022','DD/MM/YYYY'),TO_DATE('15/06/2022','DD/MM/YYYY'),'El realismo de la obra fue discutido en profundiad con todos sus matices.',4,'S'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,5,1301417231212,TO_DATE('01/05/2026','DD/MM/YYYY'),'S',1,1,5,24,TO_DATE('01/09/2022','DD/MM/YYYY'),TO_DATE('01/09/2022','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,5,1301417231212,TO_DATE('08/05/2026','DD/MM/YYYY'),'S',1,1,5,24,TO_DATE('01/09/2022','DD/MM/YYYY'),TO_DATE('01/09/2022','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,5,1301417231212,TO_DATE('15/05/2026','DD/MM/YYYY'),'S',1,1,5,24,TO_DATE('01/09/2022','DD/MM/YYYY'),TO_DATE('01/09/2022','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,5,1301417231212,TO_DATE('22/05/2026','DD/MM/YYYY'),'S',1,1,5,24,TO_DATE('01/09/2022','DD/MM/YYYY'),TO_DATE('01/09/2022','DD/MM/YYYY'),'Se produjo un intersante debate sobre la dicotomía entre el bien y el mal.',5,'S'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,2,4581417235066,TO_DATE('05/05/2026','DD/MM/YYYY'),'S',1,1,2,33,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,2,4581417235066,TO_DATE('12/05/2026','DD/MM/YYYY'),'S',1,1,2,33,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,2,4581417235066,TO_DATE('19/05/2026','DD/MM/YYYY'),'S',1,1,2,33,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,2,4581417235066,TO_DATE('26/05/2026','DD/MM/YYYY'),'S',1,1,2,33,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),'Se analizó la complejidad de la vida para los jóvenes adultos japoneses en el mundo contemporáneo.',4,'S'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,3,4581417235088,TO_DATE('06/05/2026','DD/MM/YYYY'),'S',1,1,1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),TO_DATE('01/03/2020','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,3,4581417235088,TO_DATE('13/05/2026','DD/MM/YYYY'),'S',1,1,1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),TO_DATE('01/03/2020','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,3,4581417235088,TO_DATE('20/05/2026','DD/MM/YYYY'),'S',1,1,1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),TO_DATE('01/03/2020','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,3,4581417235088,TO_DATE('27/05/2026','DD/MM/YYYY'),'S',1,1,1,1,TO_DATE('01/03/2020','DD/MM/YYYY'),TO_DATE('01/03/2020','DD/MM/YYYY'),'Se valoró especialmente el valor de la amistad reflejado en el libro.',5,'S'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,2,4581417235066,TO_DATE('02/06/2026','DD/MM/YYYY'),'S',1,1,2,33,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,2,4581417235066,TO_DATE('09/06/2026','DD/MM/YYYY'),'S',1,1,2,33,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),NULL,NULL,'N'); COMMIT;
INSERT INTO ADFJ_CAL_REUNIONES(id_club,id_grupo,isbn,f_reunion,realizada,id_club_memb_mod,id_club_grupo_mod,id_grupo_mod,id_moderador,f_ing_club_mod,f_ing_grupo_mod,conclusiones,valoracion,ultima_reunion)
VALUES (1,2,4581417235066,TO_DATE('16/06/2026','DD/MM/YYYY'),'S',1,1,2,33,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),'Se hizo un breve detabate sobre la situación socioecónomica actual de Japón y sus implicaciones para los jóvenes japoneses.',4,'S'); COMMIT;

INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,1,3,TO_DATE('20/04/2020','DD/MM/YYYY'),TO_DATE('20/04/2020','DD/MM/YYYY'),1,1,4617417231313,TO_DATE('05/01/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,1,4,TO_DATE('10/05/2020','DD/MM/YYYY'),TO_DATE('10/05/2020','DD/MM/YYYY'),1,1,4617417231313,TO_DATE('12/01/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (4,4,1,8,TO_DATE('20/08/2018','DD/MM/YYYY'),TO_DATE('20/08/2018','DD/MM/YYYY'),4,1,3783353412011,TO_DATE('08/02/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (5,5,1,11,TO_DATE('20/03/2021','DD/MM/YYYY'),TO_DATE('20/03/2021','DD/MM/YYYY'),5,1,7805341235044,TO_DATE('06/03/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (5,5,1,11,TO_DATE('20/03/2021','DD/MM/YYYY'),TO_DATE('20/03/2021','DD/MM/YYYY'),5,1,7805341235044,TO_DATE('13/03/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (7,7,1,15,TO_DATE('15/10/2015','DD/MM/YYYY'),TO_DATE('15/10/2015','DD/MM/YYYY'),7,1,1301417235077,TO_DATE('07/11/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (4,4,3,7,TO_DATE('15/07/2018','DD/MM/YYYY'),TO_DATE('15/07/2018','DD/MM/YYYY'),4,3,4581417235066,TO_DATE('10/04/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (5,5,1,12,TO_DATE('25/04/2021','DD/MM/YYYY'),TO_DATE('25/04/2021','DD/MM/YYYY'),5,1,7805341235044,TO_DATE('20/03/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (7,7,1,16,TO_DATE('20/11/2015','DD/MM/YYYY'),TO_DATE('20/11/2015','DD/MM/YYYY'),7,1,1301417235077,TO_DATE('14/11/2023','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,4,23,TO_DATE('15/06/2022','DD/MM/YYYY'),TO_DATE('15/06/2022','DD/MM/YYYY'),1,4,5944012351010,TO_DATE('10/04/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (5,5,4,26,TO_DATE('20/01/2022','DD/MM/YYYY'),TO_DATE('20/01/2022','DD/MM/YYYY'),5,4,1301417231212,TO_DATE('03/04/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,1,18,TO_DATE('10/03/2021','DD/MM/YYYY'),TO_DATE('10/03/2021','DD/MM/YYYY'),1,1,4617417231313,TO_DATE('19/01/2024','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,1,3,TO_DATE('20/04/2020','DD/MM/YYYY'),TO_DATE('20/04/2020','DD/MM/YYYY'),1,1,4617417231313,TO_DATE('11/05/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,1,4,TO_DATE('10/05/2020','DD/MM/YYYY'),TO_DATE('10/05/2020','DD/MM/YYYY'),1,1,4617417231313,TO_DATE('11/05/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,1,18,TO_DATE('10/03/2021','DD/MM/YYYY'),TO_DATE('10/03/2021','DD/MM/YYYY'),1,1,4617417231313,TO_DATE('11/05/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,4,19,TO_DATE('15/06/2022','DD/MM/YYYY'),TO_DATE('15/06/2022','DD/MM/YYYY'),1,4,5944012351010,TO_DATE('14/05/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,4,23,TO_DATE('15/06/2022','DD/MM/YYYY'),TO_DATE('15/06/2022','DD/MM/YYYY'),1,4,5944012351010,TO_DATE('14/05/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,5,24,TO_DATE('01/09/2022','DD/MM/YYYY'),TO_DATE('01/09/2022','DD/MM/YYYY'),1,5,1301417231212,TO_DATE('15/05/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,2,34,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),1,2,4581417235066,TO_DATE('12/05/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,2,35,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),1,2,4581417235066,TO_DATE('12/05/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,2,34,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),1,2,4581417235066,TO_DATE('02/06/2026','DD/MM/YYYY')); COMMIT;
INSERT INTO ADFJ_INASISTENCIAS(id_club_grupo,id_club_memb,id_grupo_asig,id_lector,f_ing_club,f_ing_grupo,id_club_cal,id_grupo_cal,isbn,f_reunion)
VALUES (1,1,2,34,TO_DATE('20/01/2025','DD/MM/YYYY'),TO_DATE('20/01/2025','DD/MM/YYYY'),1,2,4581417235066,TO_DATE('09/06/2026','DD/MM/YYYY')); COMMIT;
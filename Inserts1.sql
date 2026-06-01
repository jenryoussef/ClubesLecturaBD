INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'CHARLES','BAUDELEIRE',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'ISAAC','ASIMOV',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'ROBERTO','BOLAÑO',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'WILLIAM','GASS',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'INIO','ASANO',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'LUCY','ELLMAN',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'DON','DELILO',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'TATSUKI','FUJIMOTO',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'HARUKI','MURAKAMI',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'MIRCEA','CARTARESCU',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'KYOKO','OKASAKI',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'JOHN','STEINBACK',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'FIODOR','DOSTOYEVSKI',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'MARGUERITE','YOUNG',NULL);
COMMIT;
INSERT INTO autores(id_autor,nombre,apellido,seudonimo) VALUES (S_AUTOR.nextval,'RACHEL','INGALLS',NULL);
COMMIT;

INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (S_PAIS.nextval,'VENEZUELA','BS','VENEZOLANO');
COMMIT;
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (S_PAIS.nextval,'FRANCIA','EUR','FRANCES');
COMMIT;
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (S_PAIS.nextval,'ESPAÑA','EUR','ESPAÑOL');
COMMIT;
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (S_PAIS.nextval,'ESTADOS UNIDOS','USD','ESTADOUNIDENSE');
COMMIT;
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (S_PAIS.nextval,'CHILE','CLP','CHILENO');
COMMIT;
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (S_PAIS.nextval,'JAPON','JPY','JAPONES');
COMMIT;
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (S_PAIS.nextval,'REINO UNIDO','GBP','BRITANICO');
COMMIT;
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (S_PAIS.nextval,'RUMANIA','RON','RUMANO');
COMMIT;
INSERT INTO paises(id_pais,nombre,moneda,nacionalidad) VALUES (S_PAIS.nextval,'RUSIA','RUB','RUSO-SA');
COMMIT;

INSERT INTO representantes (id_representante, primer_nombre, primer_apellido, segundo_nombre, segundo_apellido, doc_identidad)
VALUES (S_REPRESENTANTE.nextval,'MARCO','SANTOS','ALFONZO','MANUEL',12120320);
COMMIT;
INSERT INTO representantes (id_representante, primer_nombre, primer_apellido, segundo_nombre, segundo_apellido, doc_identidad)
VALUES (S_REPRESENTANTE.nextval,'MARIANNE','FELINI',NULL,'ROSTELLI',1200400);
COMMIT;
INSERT INTO representantes (id_representante, primer_nombre, primer_apellido, segundo_nombre, segundo_apellido, doc_identidad)
VALUES (S_REPRESENTANTE.nextval,'FIONA','APPLE','MCAFFE','MAGGART',2030040);
COMMIT;
INSERT INTO representantes (id_representante, primer_nombre, primer_apellido, segundo_nombre, segundo_apellido, doc_identidad)
VALUES (S_REPRESENTANTE.nextval,'SOFIA','CARMINA',NULL,'COPPOLA',12120320);
COMMIT;

INSERT INTO instituciones (id_institucion,nombre,tipo,descripcion) VALUES(S_INSTITUCION.nextval,'UCAB','UN','Es una universidad primera con sede en Caracas y Puerto Ordaz');
COMMIT;
INSERT INTO instituciones (id_institucion,nombre,tipo,descripcion) VALUES(S_INSTITUCION.nextval,'BNF','BI','La Blibioteca Nacional de Francia es el deposito nacional de todo lo publicado en Francia');
COMMIT;
INSERT INTO instituciones (id_institucion,nombre,tipo,descripcion) VALUES(S_INSTITUCION.nextval,'RABASF','BI','La Real Academia de las Bellas Artes de San Fernando es una institucion integrada en el instituto de España');
COMMIT;
INSERT INTO instituciones (id_institucion,nombre,tipo,descripcion) VALUES(S_INSTITUCION.nextval,'Yale','UN','Es una prestigiosa institución privada de investigación perteneciente a la Ivy League, ubicada en New Haven, Connecticut, Estados Unidos');
COMMIT;

INSERT INTO idiomas (id_idioma,nombre) VALUES (S_IDIOMA.nextval,'ESPAÑOL');
COMMIT;
INSERT INTO idiomas (id_idioma,nombre) VALUES (S_IDIOMA.nextval,'FRANCES');
COMMIT;
INSERT INTO idiomas (id_idioma,nombre) VALUES (S_IDIOMA.nextval,'INGLES');
COMMIT;
INSERT INTO idiomas (id_idioma,nombre) VALUES (S_IDIOMA.nextval,'JAPONES');
COMMIT;
INSERT INTO idiomas (id_idioma,nombre) VALUES (S_IDIOMA.nextval,'RUMANO');
COMMIT;
INSERT INTO idiomas (id_idioma,nombre) VALUES (S_IDIOMA.nextval,'RUSO');
COMMIT;
INSERT INTO idiomas (id_idioma,nombre) VALUES (S_IDIOMA.nextval,'ALEMAN');
COMMIT;
INSERT INTO idiomas (id_idioma,nombre) VALUES (S_IDIOMA.nextval,'CHINO');
COMMIT;

INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'FEDERICO','REFERONI','CATOLINI',TO_DATE('04-10-1985','DD-MM-YYYY'),'FEDECATO@GMAIL.COM',31202312,1,'CORTECIONI',NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'TERICO','SANTOS','TOMARDO',TO_DATE('21-01-2016','DD-MM-YYYY'),'SONSSANTOS@GMAIL.COM',34102312,1,'ALFONZO',NULL,1);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'SPIKE','JONZE','SPIEGEL',TO_DATE('22-10-1969','DD-MM-YYYY'),'SJONZE@GMAIL.COM',10333212,1,'ADAM',NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'GUILLERMO','DEL TORO','GOMEZ',TO_DATE('09-10-1964','DD-MM-YYYY'),'LABERINTODEPAN@GMAIL.COM',23341456,1,NULL,NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'MICHAEL','HANEKE','DIREC',TO_DATE('23-03-1942','DD-MM-YYYY'),'FUNNYGAMES@GMAIL.COM',2202312,2,NULL,NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'JAKEY','NAKEY','GAMER',TO_DATE('12-06-2016','DD-MM-YYYY'),'NAKEYJAKEY@GMAIL.COM',1202312,2,NULL,NULL,5);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'SANTIAGO','SANTOS','CANOLINI',TO_DATE('05-12-2017','DD-MM-YYYY'),'KIDSANTOS@GMAIL.COM',2230403,2,NULL,1,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'JEAN','LUC','GODARD',TO_DATE('03-12-1930','DD-MM-YYYY'),'JEANLUCGOD@GMAIL.COM',1130403,2,NULL,NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'ALFONSO','CUARON','OROZCO',TO_DATE('28-11-1961','DD-MM-YYYY'),'CHILDRENOFMAN@GMAIL.COM',5550403,3,NULL,NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'ALEJANDRO','SANS','CANTANTE',TO_DATE('05-12-1924','DD-MM-YYYY'),'ALFONSO@GMAIL.COM',27102712,3,NULL,NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'MARIA','CARMEN','GARCIA',TO_DATE('15-09-1945','DD-MM-YYYY'),'MARIACARMEN@GMAIL.COM',22102712,3,'MAURA',NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'MANOLO','SANSFINAL','FANTASY',TO_DATE('31-01-1997','DD-MM-YYYY'),'FF7@GMAIL.COM',7777721,3,NULL,NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'PAUL','THOMAS','ANDERSON',TO_DATE('31-01-2016','DD-MM-YYYY'),'PUNCHDRUNKLOVE@GMAIL.COM',18982122,4,NULL,3,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'QUENTIN','TARANTINO','SANTOS',TO_DATE('12-11-2017','DD-MM-YYYY'),'IDEATHIEF@GMAIL.COM',15968323,4,'MANBABY',3,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'MARTIN','SCORCESE','MOVIEGUY',TO_DATE('01-03-2010','DD-MM-YYYY'),'TAXIDRIVER@GMAIL.COM',32203421,4,NULL,2,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'FRANCIS','FORD','COPPOLA',TO_DATE('09-03-2010','DD-MM-YYYY'),'APOCALYPSENOW@GMAIL.COM',2321456,4,NULL,4,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'ANDREI','TARKOVSKY','ARSENYEVICH',TO_DATE('04-04-1932','DD-MM-YYYY'),'ANDREI.TARKOVSKY@GMAIL.COM',44201312,9,NULL,NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'INGMAR','BERGMAN','ERNST',TO_DATE('14-07-1918','DD-MM-YYYY'),'INGMAR.BERGMAN@GMAIL.COM',55301212,7,'ERNST',NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'CLAIRE','DENIS','MARIE',TO_DATE('21-04-1946','DD-MM-YYYY'),'CLAIRE.DENIS@GMAIL.COM',33401512,2,'MARIE',NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'HIROKAZU','KOREEDA','MASAO',TO_DATE('06-06-1962','DD-MM-YYYY'),'HIROKAZU.KOREEDA@GMAIL.COM',66501812,6,NULL,NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'CARLOS','REYGADAS','BARQUIN',TO_DATE('10-10-1971','DD-MM-YYYY'),'CARLOS.REYGADAS@GMAIL.COM',77601912,3,NULL,NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'APICHATPONG','WEERASETHAKUL','CHAI',TO_DATE('23-07-1970','DD-MM-YYYY'),'APICHAT.WEERASETHAKUL@GMAIL.COM',88702012,4,NULL,NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'AGNES','VARDA','ARLETTE',TO_DATE('30-05-1928','DD-MM-YYYY'),'AGNES.VARDA@GMAIL.COM',99802112,2,'ARLETTE',NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'CHANTAL','AKERMAN','ANNE',TO_DATE('06-06-1950','DD-MM-YYYY'),'CHANTAL.AKERMAN@GMAIL.COM',11902212,2,'ANNE',NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'PEDRO','ALMODOVAR','CABALLERO',TO_DATE('25-09-1949','DD-MM-YYYY'),'PEDRO.ALMODOVAR@GMAIL.COM',22102312,3,NULL,NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'VICTOR','ERICE','ARAS',TO_DATE('30-06-1940','DD-MM-YYYY'),'VICTOR.ERICE@GMAIL.COM',33202412,3,NULL,NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'JOHN','CASSAVETES','NICHOLAS',TO_DATE('09-12-1929','DD-MM-YYYY'),'JOHN.CASSAVETES@GMAIL.COM',44302512,4,'NICHOLAS',NULL,NULL);
COMMIT;
INSERT INTO lectores(id_lector,primer_nombre,primer_apellido,segundo_apellido,f_nacimiento,email,doc_identidad,id_pais,segundo_nombre,id_rep_ex,id_rep_in)
VALUES(S_LECTOR.nextval,'KELLY','REICHARDT','ANN',TO_DATE('05-09-1964','DD-MM-YYYY'),'KELLY.REICHARDT@GMAIL.COM',55402612,4,'ANN',NULL,NULL);
COMMIT;
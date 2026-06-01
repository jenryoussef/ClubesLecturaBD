--SCRIPS  INSERTS NIVEL 1

--Autores
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

--Paises
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

--Representantes

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

--Instituciones

INSERT INTO instituciones (id_institucion,nombre,tipo,descripcion) VALUES(S_INSTITUCION.nextval,'UCAB','UN','Es una universidad primera con sede en Caracas y Puerto Ordaz');
COMMIT;
INSERT INTO instituciones (id_institucion,nombre,tipo,descripcion) VALUES(S_INSTITUCION.nextval,'BNF','BI','La Blibioteca Nacional de Francia es el deposito nacional de todo lo publicado en Francia');
COMMIT;
INSERT INTO instituciones (id_institucion,nombre,tipo,descripcion) VALUES(S_INSTITUCION.nextval,'RABASF','BI','La Real Academia de las Bellas Artes de San Fernando es una institucion integrada en el instituto de España');
COMMIT;
INSERT INTO instituciones (id_institucion,nombre,tipo,descripcion) VALUES(S_INSTITUCION.nextval,'Yale','UN','Es una prestigiosa institución privada de investigación perteneciente a la Ivy League, ubicada en New Haven, Connecticut, Estados Unidos');
COMMIT;

--idiomas

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


--NIVEL 2 

--Lectores

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
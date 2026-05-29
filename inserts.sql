--SCRIPS INSERTS NIVEL 1

--Autore
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
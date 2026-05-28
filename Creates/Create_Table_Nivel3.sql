CREATE TABLE preferencias(
    id_lector NUMBER(3) NOT NULL,
    ISBN NUMBER(13) NOT NULL,
    orden number(1) CONSTRAINT nn_ordenpref NOT NULL CONSTRAINT ck_ordenpref CHECK (orden in(1,2,3)),
    CONSTRAINT fk_lectorpref FOREIGN KEY (id_lector) REFERENCES lectores(id_lector),
    CONSTRAINT fk_isbnlibro FOREIGN KEY (ISBN) REFERENCES libros(ISBN),
    CONSTRAINT pk_preferencias PRIMARY KEY (id_lector, ISBN, orden)
);

CREATE TABLE autorias(
    id_autor NUMBER(2) NOT NULL,
    ISBN NUMBER(13) NOT NULL,
    CONSTRAINT fk_idautoautoria FOREIGN KEY (id_autor) REFERENCES autores(id_autor),
    CONSTRAINT fk_isbnautoria FOREIGN KEY (ISBN) REFERENCES libros(ISBN),
    CONSTRAINT pk_autoria PRIMARY KEY (id_autor, ISBN)
);

CREATE TABLE clubes (
    id_club NUMBER(2) CONSTRAINT pk_clubes PRIMARY KEY,
    nombre VARCHAR2(60) CONSTRAINT nn_nombreclub NOT NULL,
    descripcion VARCHAR2(200) CONSTRAINT nn_descripcionclub NOT NULL,
    cod_postal NUMBER(5) CONSTRAINT nn_codpostalclub NOT NULL,
    direccion VARCHAR2(200) CONSTRAINT nn_direccionclub NOT NULL,
    id_pais NUMBER(2) CONSTRAINT nn_paisclub NOT NULL,
    id_ciudad NUMBER(2) CONSTRAINT nn_ciudadclub NOT NULL,
    cuota_membr VARCHAR2(1) CONSTRAINT ck_cuotaclub CHECK (cuota_membr in('S','N')),
    id_institucion NUMBER(2),
    CONSTRAINT fk_localizacionclub FOREIGN KEY(id_pais,id_ciudad) REFERENCES ciudades(id_pais,id_ciudad),
    CONSTRAINT fk_institucionclub FOREIGN KEY (id_institucion) REFERENCES instituciones (id_institucion),
    CONSTRAINT check_cuota_institucion CHECK(id_institucion is NULL or cuota_membr = 'N')
);
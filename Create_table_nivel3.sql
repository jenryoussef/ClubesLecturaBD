CREATE TABLE preferencias(
    id_lector NUMBER(3) NOT NULL,
    ISBN NUMBER(13) NOT NULL,
    orden number(1) CONSTRAINT nn_ordenpref NOT NULL CONSTRAINT ck_ordenpref CHECK (orden in(1,2,3)),
    CONSTRAINT pk_preferencias PRIMARY KEY (id_lector,ISBN),
    CONSTRAINT fk_lectorpref FOREIGN KEY (id_lector) REFERENCES lectores(id_lector),
    CONSTRAINT fk_isbnlibro FOREIGN KEY (ISBN) REFERENCES libros(ISBN)
);

CREATE TABLE autorias(
    id_autor NUMBER(3) NOT NULL,
    ISBN NUMBER(13) NOT NULL,
    CONSTRAINT pk_autoria PRIMARY KEY (id_autor, ISBN),
    CONSTRAINT fk_idautoautoria FOREIGN KEY (id_autor) REFERENCES autores(id_autor),
    CONSTRAINT fk_isbnautoria FOREIGN KEY (ISBN) REFERENCES libros(ISBN)
);

CREATE TABLE clubes (
    id_club NUMBER(3) CONSTRAINT pk_clubes PRIMARY KEY,
    nombre VARCHAR2(60) CONSTRAINT nn_nombreclub NOT NULL,
    descripcion VARCHAR2(200) CONSTRAINT nn_descripcionclub NOT NULL,
    cod_postal NUMBER(5) CONSTRAINT nn_codpostalclub NOT NULL,
    direccion VARCHAR2(200) CONSTRAINT nn_direccionclub NOT NULL,
    id_pais NUMBER(3) CONSTRAINT nn_paisclub NOT NULL,
    id_ciudad NUMBER(6) CONSTRAINT nn_ciudadclub NOT NULL,
    cuota_membr VARCHAR2(1) CONSTRAINT ck_cuotaclub CHECK (cuota_membr in('S','N')),
    id_institucion NUMBER(3),
    
    CONSTRAINT fk_localizacionclub FOREIGN KEY(id_pais,id_ciudad) REFERENCES ciudades(id_paisciudad,id_ciudad),
    CONSTRAINT fk_institucionclub FOREIGN KEY (id_institucion) REFERENCES instituciones (id_institucion)


);

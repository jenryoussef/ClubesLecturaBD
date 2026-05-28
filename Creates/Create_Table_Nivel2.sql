CREATE TABLE lectores(
    id_lector NUMBER(3) CONSTRAINT pk_lector PRIMARY KEY,
    primer_nombre VARCHAR2(20) CONSTRAINT nn_pnombre_lector NOT NULL,
    primer_apellido VARCHAR2(20) CONSTRAINT nn_papellido_lector NOT NULL,
    segundo_apellido VARCHAR2(20) CONSTRAINT nn_sapellido_lector NOT NULL,
    f_nacimiento DATE CONSTRAINT nn_fechanac_lector NOT NULL,
    email VARCHAR2(50) CONSTRAINT nn_email_lector NOT NULL CONSTRAINT u_email_lector UNIQUE,
    doc_identidad NUMBER(9) CONSTRAINT nn_doc_identidad NOT NULL,
    id_paislector NUMBER(2) CONSTRAINT nn_pais_lector NOT NULL ,
    segundo_nombre VARCHAR2(20),
    id_rep_ext NUMBER(2),
    id_rep_int NUMBER(3),
    CONSTRAINT fk_pais_lector FOREIGN KEY (id_paislector) REFERENCES paises(id_pais),
    CONSTRAINT fk_id_repexterno FOREIGN KEY (id_rep_ext) REFERENCES representantes(id_representante),
    CONSTRAINT fk_id_repinter FOREIGN KEY (id_rep_int) REFERENCES lectores (id_lector),
    CONSTRAINT ck_arcorepresentantelector CHECK (id_rep_ext IS NULL or id_rep_int IS NULL)
);

CREATE TABLE libros (
    ISBN NUMBER(13) CONSTRAINT pk_libro PRIMARY KEY,
    titulo VARCHAR2(60) CONSTRAINT nn_titulolibro NOT NULL,
    ano_publicacion DATE CONSTRAINT nn_anoopubliclibro NOT NULL,
    n_paginas NUMBER (4) CONSTRAINT nn_npaginaslibro NOT NULL,
    sinopsis VARCHAR2(300) CONSTRAINT nn_sipnosislibro NOT NULL,
    tema VARCHAR2(100) CONSTRAINT nn_temalibro NOT NULL,
    tipo_narrativa VARCHAR2(2) CONSTRAINT nn_narrativalibro NOT NULL CONSTRAINT ck_tiponarrativa CHECK (tipo_narrativa in ('NO','CU','MI','LE','FA','EP')),
    id_paislibro NUMBER(2) CONSTRAINT nn_idpaislibro NOT NULL,
    id_anterior NUMBER(13) CONSTRAINT u_libro UNIQUE,
    CONSTRAINT fk_paislibro FOREIGN KEY (id_paislibro) REFERENCES paises (id_pais),
    CONSTRAINT fk_anteriorlibro FOREIGN KEY (id_anterior) REFERENCES libros (ISBN)
);

CREATE TABLE ciudades (
    id_pais NUMBER(2) CONSTRAINT nn_ciudad_id_pais NOT NULL,
    id_ciudad NUMBER(2) CONSTRAINT nn_ciudad_id_ciudad NOT NULL,
    nombre VARCHAR2(50) CONSTRAINT nn_nombre_ciudad NOT NULL,
    CONSTRAINT fk_paisciudad FOREIGN KEY (id_pais) REFERENCES paises (id_pais),
    CONSTRAINT pk_ciudades PRIMARY KEY(id_pais, id_ciudad)
);
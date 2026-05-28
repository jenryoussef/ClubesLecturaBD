CREATE TABLE autores (
    id_autor NUMBER(3) CONSTRAINT pk_autor PRIMARY KEY,
    nombre VARCHAR2(20),
    apellido VARCHAR2(20),
    seudonimo VARCHAR2(40),
    CONSTRAINT check_autores_opcionales CHECK(nombre IS NOT NULL or apellido IS NOT NULL or seudonimo IS NOT NULL)
);

CREATE TABLE representantes (
    id_representante NUMBER(3) CONSTRAINT pk_representante PRIMARY KEY,
    primer_nombre VARCHAR2(20) CONSTRAINT nn_primer_nombre_repr NOT NULL,
    primer_apellido VARCHAR2(20) CONSTRAINT nn_primer_apellido_repr NOT NULL,
    segundo_apellido VARCHAR2(20) CONSTRAINT nn_segundo_apellido_repr NOT NULL,
    doc_identidad NUMBER(9) CONSTRAINT nn_doc_identidad_repr NOT NULL,
    segundo_nombre VARCHAR2(20)
);

CREATE TABLE instituciones (
    id_institucion NUMBER(3) CONSTRAINT pk_institucion PRIMARY KEY,
    nombre VARCHAR2(60) CONSTRAINT nn_nombre_institucion NOT NULL,
    tipo VARCHAR2(2) CONSTRAINT nn_tipo_institucion NOT NULL CONSTRAINT check_tipo_institucion CHECK(tipo IN('BI','UN','CO','OT')),  
    descripcion VARCHAR2(200) CONSTRAINT nn_desc_institucion NOT NULL
);

CREATE TABLE idiomas (
    id_idioma NUMBER(2) CONSTRAINT pk_idioma PRIMARY KEY,
    nombre VARCHAR2(20) CONSTRAINT nn_nombre_idioma NOT NULL
);

CREATE TABLE paises (
    id_pais NUMBER(3) CONSTRAINT pk_pais PRIMARY KEY,
    nombre VARCHAR2(50) CONSTRAINT nn_nombre_pais NOT NULL,
    moneda VARCHAR2(3) CONSTRAINT nn_moneda_pais NOT NULL,
    nacionalidad VARCHAR2(20) CONSTRAINT nn_nacionalidad NOT NULL
);

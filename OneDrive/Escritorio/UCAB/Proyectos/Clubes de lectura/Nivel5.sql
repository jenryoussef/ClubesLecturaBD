CREATE TABLE PAGOS_MEMBRESIA (
    id_club NUMBER(3),
    id_lector NUMBER(5),
    f_ing_club DATE,
    id_pago NUMBER(2),
    f_pago DATE NOT NULL,
    CONSTRAINT PK_PAGOS_MEMBRESIA PRIMARY KEY (id_club, id_lector, f_ing_club, id_pago),
    CONSTRAINT FK_PAGOS_MEMB_HIST FOREIGN KEY (id_club, id_lector, f_ing_club) REFERENCES HIST_MEMBRESIAS(id_club, id_lector, f_ing_club),
    CONSTRAINT CHK_PAGOS_FECHA CHECK (f_ing_club <= f_pago)
);

CREATE TABLE HIST_ASIGNACIONES (
    id_club NUMBER(3),
    id_grupo NUMBER(2),
    id_lector NUMBER(5),
    f_ing_club DATE,
    f_ing_grupo DATE,
    f_fin_grupo DATE,
    CONSTRAINT PK_HIST_ASIGNACIONES PRIMARY KEY (id_club, id_grupo, id_lector, f_ing_club, f_ing_grupo),
    CONSTRAINT FK_ASIG_GRUPO FOREIGN KEY (id_club, id_grupo) REFERENCES GRUPOS_LECTURA(id_club, id_grupo),
    CONSTRAINT FK_ASIG_MEMB FOREIGN KEY (id_club, id_lector, f_ing_club) REFERENCES HIST_MEMBRESIAS(id_club, id_lector, f_ing_club),
    CONSTRAINT CHK_ASIG_FECHAS_ING CHECK (f_ing_club <= f_ing_grupo),
    CONSTRAINT CHK_ASIG_FECHAS_FIN CHECK (f_ing_grupo <= f_fin_grupo)
);

CREATE TABLE ADAPTACIONES (
    id_club NUMBER(3),
    id_obra NUMBER(3),
    isbn NUMBER(13),
    CONSTRAINT PK_ADAPTACIONES PRIMARY KEY (id_club, id_obra, isbn),
    CONSTRAINT FK_ADAP_OBRA FOREIGN KEY (id_club, id_obra) REFERENCES OBRAS_ACTUADAS(id_club, id_obra),
    CONSTRAINT FK_ADAP_LIBRO FOREIGN KEY (isbn) REFERENCES LIBROS(isbn)
);

CREATE TABLE ELENCOS (
    id_club NUMBER(3),
    id_obra NUMBER(3),
    id_lector NUMBER(5),
    CONSTRAINT PK_ELENCOS PRIMARY KEY (id_club, id_obra, id_lector),
    CONSTRAINT FK_ELEN_OBRA FOREIGN KEY (id_club, id_obra) REFERENCES OBRAS_ACTUADAS(id_club, id_obra),
    CONSTRAINT FK_ELEN_LECTOR FOREIGN KEY (id_lector) REFERENCES LECTORES(id_lector)
);

CREATE TABLE PRESENTACIONES (
    id_club NUMBER(3),
    id_obra NUMBER(3),
    f_presentacion DATE,
    valoracion NUMBER(3,2) NOT NULL,
    n_entradas NUMBER(2) NOT NULL,
    CONSTRAINT PK_PRESENTACIONES PRIMARY KEY (id_club, id_obra, f_presentacion),
    CONSTRAINT FK_PRES_OBRA FOREIGN KEY (id_club, id_obra) REFERENCES OBRAS_ACTUADAS(id_club, id_obra),
    CONSTRAINT CHK_PRES_VALORACION CHECK (valoracion BETWEEN 0 AND 5),
    CONSTRAINT CHK_PRES_ENTRADAS CHECK (n_entradas > 0)
);



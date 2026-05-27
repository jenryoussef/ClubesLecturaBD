CREATE TABLE MEJORES_ACTORES (
    id_club NUMBER(3),
    id_obra NUMBER(3),
    id_lector NUMBER(5),
    f_presentacion DATE,
    CONSTRAINT PK_MEJORES_ACTORES PRIMARY KEY (id_club, id_obra, id_lector, f_presentacion),
    CONSTRAINT FK_MEJ_ACT_PRES FOREIGN KEY (id_club, id_obra, f_presentacion) REFERENCES PRESENTACIONES(id_club, id_obra, f_presentacion),
    CONSTRAINT FK_MEJ_ACT_ELEN FOREIGN KEY (id_club, id_obra, id_lector) REFERENCES ELENCOS(id_club, id_obra, id_lector)
);

CREATE TABLE CAL_REUNIONES (
    id_club NUMBER(3),
    id_grupo NUMBER(2),
    isbn NUMBER(13),
    f_reunion DATE,
    realizada VARCHAR2(1) NOT NULL,
    id_club_mod NUMBER(3) NOT NULL,
    id_grupo_mod NUMBER(2) NOT NULL,
    id_moderador NUMBER(5) NOT NULL,
    f_ing_club_mod DATE NOT NULL,
    f_ing_grupo_mod DATE NOT NULL,
    conclusiones VARCHAR2(400),
    valoracion NUMBER(1),
    ultima_reunion VARCHAR2(1),
    CONSTRAINT PK_CAL_REUNIONES PRIMARY KEY (id_club, id_grupo, isbn, f_reunion),
    CONSTRAINT FK_REUN_GRUPO FOREIGN KEY (id_club, id_grupo) REFERENCES GRUPOS_LECTURA(id_club, id_grupo),
    CONSTRAINT FK_REUN_LIBRO FOREIGN KEY (isbn) REFERENCES LIBROS(isbn),
    CONSTRAINT FK_REUN_MODERADOR FOREIGN KEY (id_club_mod, id_grupo_mod, id_moderador, f_ing_club_mod, f_ing_grupo_mod) 
    REFERENCES HIST_ASIGNACIONES(id_club, id_grupo, id_lector, f_ing_club, f_ing_grupo),
    CONSTRAINT CHK_REUN_REALIZADA CHECK (realizada IN ('S', 'N')),
    CONSTRAINT CHK_REUN_VALORACION CHECK (valoracion BETWEEN 1 AND 5),
    CONSTRAINT CHK_REUN_ULTIMA CHECK (ultima_reunion IN ('S', 'N'))
);


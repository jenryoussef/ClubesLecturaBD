CREATE TABLE INASISTENCIAS (
    id_club NUMBER(3),
    id_grupo NUMBER(2),
    id_lector NUMBER(5),
    f_ing_club DATE,
    f_ing_grupo DATE,
    isbn NUMBER(13),
    f_reunion DATE,
    CONSTRAINT PK_INASISTENCIAS PRIMARY KEY (id_club, id_grupo, id_lector, f_ing_club, f_ing_grupo, isbn, f_reunion),
    CONSTRAINT FK_INAS_ASIGNACION FOREIGN KEY (id_club, id_grupo, id_lector, f_ing_club, f_ing_grupo) REFERENCES HIST_ASIGNACIONES(id_club, id_grupo, id_lector, f_ing_club, f_ing_grupo),
    CONSTRAINT FK_INAS_REUNION FOREIGN KEY (id_club, id_grupo, isbn, f_reunion) REFERENCES CAL_REUNIONES(id_club, id_grupo, isbn, f_reunion),
    CONSTRAINT CHK_INAS_FECHA CHECK (f_ing_grupo <= f_reunion)
);

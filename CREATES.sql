CREATE SEQUENCE ADFJ_S_AUTOR INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE ADFJ_S_REPRESENTANTE INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE ADFJ_S_INSTITUCION INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE ADFJ_S_IDIOMA INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE ADFJ_S_PAIS INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE ADFJ_S_LECTOR INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE ADFJ_S_CLUB INCREMENT BY 1 START WITH 1;

CREATE TABLE ADFJ_AUTORES (
    id_autor NUMBER(2) CONSTRAINT pk_autor PRIMARY KEY,
    nombre VARCHAR2(20),
    apellido VARCHAR2(20),
    seudonimo VARCHAR2(40),
    CONSTRAINT check_autores_opcionales CHECK(nombre IS NOT NULL or apellido IS NOT NULL or seudonimo IS NOT NULL)
);

CREATE TABLE ADFJ_REPRESENTANTES (
    id_representante NUMBER(2) CONSTRAINT pk_representante PRIMARY KEY,
    primer_nombre VARCHAR2(20) NOT NULL,
    primer_apellido VARCHAR2(20) NOT NULL,
    segundo_apellido VARCHAR2(20) NOT NULL,
    doc_identidad NUMBER(9) NOT NULL,
    segundo_nombre VARCHAR2(20)
);

CREATE TABLE ADFJ_INSTITUCIONES (
    id_institucion NUMBER(2) CONSTRAINT pk_institucion PRIMARY KEY,
    nombre VARCHAR2(60) NOT NULL,
    tipo VARCHAR2(2) NOT NULL CONSTRAINT check_tipo_institucion CHECK(tipo IN('BI','UN','CO','OT')),  
    descripcion VARCHAR2(200) NOT NULL
);

CREATE TABLE ADFJ_IDIOMAS (
    id_idioma NUMBER(2) CONSTRAINT pk_idioma PRIMARY KEY,
    nombre VARCHAR2(20) NOT NULL
);

CREATE TABLE ADFJ_PAISES (
    id_pais NUMBER(2) CONSTRAINT pk_pais PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    moneda VARCHAR2(3) NOT NULL,
    nacionalidad VARCHAR2(20) NOT NULL
);

CREATE TABLE ADFJ_LECTORES(
    id_lector NUMBER(3) CONSTRAINT pk_lector PRIMARY KEY,
    primer_nombre VARCHAR2(20) NOT NULL,
    primer_apellido VARCHAR2(20) NOT NULL,
    segundo_apellido VARCHAR2(20) NOT NULL,
    f_nacimiento DATE NOT NULL,
    email VARCHAR2(50) NOT NULL,
    doc_identidad NUMBER(9) NOT NULL,
    id_pais NUMBER(2) NOT NULL ,
    segundo_nombre VARCHAR2(20),
    id_rep_ex NUMBER(2),
    id_rep_in NUMBER(3),
    CONSTRAINT fk_pais_lector FOREIGN KEY (id_pais) REFERENCES ADFJ_PAISES(id_pais),
    CONSTRAINT fk_id_repexterno FOREIGN KEY (id_rep_ex) REFERENCES ADFJ_REPRESENTANTES(id_representante),
    CONSTRAINT fk_id_repinter FOREIGN KEY (id_rep_in) REFERENCES ADFJ_LECTORES (id_lector),
    CONSTRAINT ck_arcorepresentantelector CHECK (id_rep_ex IS NULL or id_rep_in IS NULL)
);

CREATE TABLE ADFJ_LIBROS (
    ISBN NUMBER(13) CONSTRAINT pk_libro PRIMARY KEY,
    titulo VARCHAR2(60) NOT NULL,
    ano_publicacion DATE NOT NULL,
    n_paginas NUMBER (4) NOT NULL,
    sinopsis VARCHAR2(300) NOT NULL,
    tema VARCHAR2(100) NOT NULL,
    tipo_narrativa VARCHAR2(2) NOT NULL CONSTRAINT ck_tiponarrativa CHECK (tipo_narrativa in ('NO','CU','MI','LE','FA','EP')),
    id_pais NUMBER(2) NOT NULL,
    id_anterior NUMBER(13) CONSTRAINT u_libro UNIQUE,
    CONSTRAINT fk_paislibro FOREIGN KEY (id_pais) REFERENCES ADFJ_paises (id_pais),
    CONSTRAINT fk_anteriorlibro FOREIGN KEY (id_anterior) REFERENCES ADFJ_libros (ISBN)
);

CREATE TABLE ADFJ_CIUDADES (
    id_pais NUMBER(2) NOT NULL,
    id_ciudad NUMBER(2) NOT NULL,
    nombre VARCHAR2(50) NOT NULL,
    CONSTRAINT fk_paisciudad FOREIGN KEY (id_pais) REFERENCES ADFJ_paises (id_pais),
    CONSTRAINT pk_ciudades PRIMARY KEY(id_pais, id_ciudad)
);

CREATE TABLE ADFJ_PREFERENCIAS(
    id_lector NUMBER(3) NOT NULL,
    ISBN NUMBER(13) NOT NULL,
    orden number(1) NOT NULL CONSTRAINT ck_ordenpref CHECK (orden in(1,2,3)),
    CONSTRAINT fk_lectorpref FOREIGN KEY (id_lector) REFERENCES ADFJ_LECTORES(id_lector),
    CONSTRAINT fk_isbnlibro FOREIGN KEY (ISBN) REFERENCES ADFJ_LIBROS(ISBN),
    CONSTRAINT pk_preferencias PRIMARY KEY (id_lector, ISBN, orden)
);

CREATE TABLE ADFJ_AUTORIAS(
    id_autor NUMBER(2) NOT NULL,
    ISBN NUMBER(13) NOT NULL,
    CONSTRAINT fk_idautoautoria FOREIGN KEY (id_autor) REFERENCES ADFJ_AUTORES(id_autor),
    CONSTRAINT fk_isbnautoria FOREIGN KEY (ISBN) REFERENCES ADFJ_LIBROS(ISBN),
    CONSTRAINT pk_autoria PRIMARY KEY (id_autor, ISBN)
);

CREATE TABLE ADFJ_CLUBES (
    id_club NUMBER(2) CONSTRAINT pk_clubes PRIMARY KEY,
    nombre VARCHAR2(60) NOT NULL,
    descripcion VARCHAR2(200) NOT NULL,
    cod_postal NUMBER(5) NOT NULL,
    direccion VARCHAR2(200) NOT NULL,
    id_pais NUMBER(2) NOT NULL,
    id_ciudad NUMBER(2) NOT NULL,
    cuota_membr VARCHAR2(1) CONSTRAINT ck_cuotaclub CHECK (cuota_membr in('S','N')),
    id_institucion NUMBER(2),
    CONSTRAINT fk_localizacionclub FOREIGN KEY(id_pais,id_ciudad) REFERENCES ADFJ_CIUDADES(id_pais,id_ciudad),
    CONSTRAINT fk_institucionclub FOREIGN KEY (id_institucion) REFERENCES ADFJ_INSTITUCIONES (id_institucion),
    CONSTRAINT check_cuota_institucion CHECK(id_institucion is NULL or cuota_membr = 'N')
);

CREATE TABLE ADFJ_HIST_MEMBRESIAS(
    ID_CLUB NUMBER(2) NOT NULL,
    ID_LECTOR NUMBER(3) NOT NULL,
    F_ING_CLUB DATE DEFAULT SYSDATE NOT NULL,
    F_SOL_RETIRO DATE,
    F_RETIRO DATE,
    MOTIVO_RETIRO VARCHAR2(2) CONSTRAINT CHECK_MEMBRESIA_MOTIVO_RETIRO CHECK(MOTIVO_RETIRO IN ('DE', 'VO', 'IN', 'OT')),
    CONSTRAINT FK_MEMBRESIA_CLUB FOREIGN KEY(ID_CLUB) REFERENCES ADFJ_CLUBES(ID_CLUB),
    CONSTRAINT FK_MEMBRESIA_LECTOR FOREIGN KEY(ID_LECTOR) REFERENCES ADFJ_LECTORES(ID_LECTOR),
    CONSTRAINT PK_HIST_MEMBRESIA PRIMARY KEY(ID_CLUB, ID_LECTOR, F_ING_CLUB)
);

CREATE TABLE ADFJ_OBRAS_ACTUADAS(
    ID_CLUB NUMBER(2) NOT NULL,
    ID_OBRA NUMBER(2) NOT NULL,
    TITULO VARCHAR2(50) NOT NULL,
    DURACION_MINUTOS NUMBER(3) NOT NULL,
    DESCRIPCION VARCHAR2(200) NOT NULL,
    ACTIVA VARCHAR2(1) NOT NULL CONSTRAINT CHECK_OBRA_ACTIVA CHECK(ACTIVA = 'S' OR ACTIVA = 'N'),
    COSTO NUMBER(6, 2),
    CONSTRAINT FK_OBRA_CLUB FOREIGN KEY(ID_CLUB) REFERENCES ADFJ_CLUBES(ID_CLUB),
    CONSTRAINT PK_OBRA PRIMARY KEY(ID_CLUB, ID_OBRA)
);

CREATE TABLE ADFJ_ASOCIACIONES(
    ID_CLUB NUMBER(2) NOT NULL,
    ID_SOCIO NUMBER(2) NOT NULL,
    DESCRIPCION VARCHAR2(200) NOT NULL,
    CONSTRAINT FK_ASOCIACION_CLUB FOREIGN KEY(ID_CLUB) REFERENCES ADFJ_CLUBES(ID_CLUB),
    CONSTRAINT FK_ASOCIACION_SOCIO FOREIGN KEY(ID_SOCIO) REFERENCES ADFJ_CLUBES(ID_CLUB),
    CONSTRAINT PK_ASOCIACION PRIMARY KEY(ID_CLUB, ID_SOCIO)
);

CREATE TABLE ADFJ_TELEFONOS(
    CODIGO_PAIS NUMBER(3) NOT NULL,
    CODIGO_AREA NUMBER(5) NOT NULL,
    NUMERO NUMBER(9) NOT NULL,
    ID_LECTOR NUMBER(3),
    ID_CLUB NUMBER(2),
    CONSTRAINT PK_TELEFONO PRIMARY KEY (CODIGO_PAIS, CODIGO_AREA, NUMERO),
    CONSTRAINT FK_TELEFONO_LECTOR FOREIGN KEY(ID_LECTOR) REFERENCES ADFJ_LECTORES(ID_LECTOR),
    CONSTRAINT FK_TELEFONO_CLUB FOREIGN KEY(ID_CLUB) REFERENCES ADFJ_CLUBES(ID_CLUB),
    CONSTRAINT CHECK_ARCO_TELEFONO CHECK(
        (ID_LECTOR IS NULL AND ID_CLUB IS NOT NULL) OR
        (ID_LECTOR IS NOT NULL AND ID_CLUB IS NULL)
    )
);

CREATE TABLE ADFJ_HABLA(
    ID_IDIOMA NUMBER(2) NOT NULL,
    ID_HABLA NUMBER(2) NOT NULL,
    ID_LECTOR NUMBER(3),
    ID_CLUB NUMBER(2),
    CONSTRAINT FK_HABLA_IDIOMA FOREIGN KEY(ID_IDIOMA) REFERENCES ADFJ_IDIOMAS(ID_IDIOMA),
    CONSTRAINT FK_HABLA_LECTOR FOREIGN KEY(ID_LECTOR) REFERENCES ADFJ_LECTORES(ID_LECTOR),
    CONSTRAINT FK_HABLA_CLUB FOREIGN KEY(ID_CLUB) REFERENCES ADFJ_CLUBES(ID_CLUB),
    CONSTRAINT PK_HABLA PRIMARY KEY(ID_IDIOMA, ID_HABLA),
    CONSTRAINT CHECK_ARCO_HABLA CHECK(
        (ID_LECTOR IS NULL AND ID_CLUB IS NOT NULL) OR
        (ID_LECTOR IS NOT NULL AND ID_CLUB IS NULL)
    )
);

CREATE TABLE ADFJ_GRUPOS_LECTURA(
    ID_CLUB NUMBER(2) NOT NULL,
    ID_GRUPO NUMBER(2) NOT NULL,
    TIPO VARCHAR2(1) NOT NULL CONSTRAINT CHECK_GRUPO_TIPO CHECK(TIPO IN('N', 'J', 'A')),
    DIA NUMBER(1) NOT NULL CONSTRAINT CHECK_GRUPO_DIA CHECK(DIA >= 2 AND DIA <= 6),
    HORA DATE NOT NULL CONSTRAINT CHECK_GRUPO_HORA CHECK(TO_CHAR(HORA, 'HH24:MI') BETWEEN '17:00' AND '19:00'),
    F_CREACION DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT FK_GRUPO_CLUB FOREIGN KEY(ID_CLUB) REFERENCES ADFJ_CLUBES(ID_CLUB),
    CONSTRAINT PK_GRUPO PRIMARY KEY(ID_CLUB, ID_GRUPO),
    CONSTRAINT CHECK_HORA_NINOS CHECK (TIPO <> 'N' OR TO_CHAR(HORA, 'HH24:MI') = '17:00')
);

CREATE TABLE ADFJ_PAGOS_MEMBRESIA (
    id_club NUMBER(2) NOT NULL,
    id_lector NUMBER(3) NOT NULL,
    f_ing_club DATE NOT NULL,
    id_pago NUMBER(2) NOT NULL,
    f_pago DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT FK_PAGOS_MEMB_HIST FOREIGN KEY (id_club, id_lector, f_ing_club) 
        REFERENCES ADFJ_HIST_MEMBRESIAS(id_club, id_lector, f_ing_club),
    CONSTRAINT PK_PAGOS_MEMBRESIA PRIMARY KEY (id_club, id_lector, f_ing_club, id_pago)
);

CREATE TABLE ADFJ_HIST_ASIGNACIONES (
    id_club_grupo NUMBER(2) NOT NULL,
    id_grupo NUMBER(2) NOT NULL,
    id_club_memb NUMBER(2) NOT NULL,
    id_lector NUMBER(3) NOT NULL,
    f_ing_club DATE NOT NULL,
    f_ing_grupo DATE DEFAULT SYSDATE NOT NULL,
    f_fin_grupo DATE,
    CONSTRAINT FK_ASIGNACION_GRUPO FOREIGN KEY(ID_CLUB_GRUPO, ID_GRUPO) 
        REFERENCES ADFJ_GRUPOS_LECTURA(ID_CLUB, ID_GRUPO),
    CONSTRAINT FK_ASIGNACION_MEMBRESIA FOREIGN KEY(ID_CLUB_MEMB, ID_LECTOR, F_ING_CLUB) 
        REFERENCES ADFJ_HIST_MEMBRESIAS(ID_CLUB, ID_LECTOR, F_ING_CLUB),
    CONSTRAINT PK_ASIGNACION  PRIMARY KEY(ID_CLUB_GRUPO, ID_GRUPO, ID_CLUB_MEMB, ID_LECTOR, F_ING_CLUB, F_ING_GRUPO)
);

CREATE TABLE ADFJ_ADAPTACIONES (
    id_club NUMBER(2) NOT NULL,
    id_obra NUMBER(2) NOT NULL,
    isbn NUMBER(13) NOT NULL,
    CONSTRAINT FK_ADAP_OBRA FOREIGN KEY (id_club, id_obra) REFERENCES ADFJ_OBRAS_ACTUADAS(id_club, id_obra),
    CONSTRAINT FK_ADAP_LIBRO FOREIGN KEY (isbn) REFERENCES ADFJ_LIBROS(isbn),
    CONSTRAINT PK_ADAPTACIONES PRIMARY KEY (id_club, id_obra, isbn)
);

CREATE TABLE ADFJ_ELENCOS (
    id_club NUMBER(2) NOT NULL,
    id_obra NUMBER(2) NOT NULL,
    id_lector NUMBER(3) NOT NULL,
    CONSTRAINT FK_ELEN_OBRA FOREIGN KEY (id_club, id_obra) REFERENCES ADFJ_OBRAS_ACTUADAS(id_club, id_obra),
    CONSTRAINT FK_ELEN_LECTOR FOREIGN KEY (id_lector) REFERENCES ADFJ_LECTORES(id_lector),
    CONSTRAINT PK_ELENCOS PRIMARY KEY (id_club, id_obra, id_lector)
);

CREATE TABLE ADFJ_PRESENTACIONES (
    id_club NUMBER(2) NOT NULL,
    id_obra NUMBER(2) NOT NULL,
    f_presentacion DATE NOT NULL,
    valoracion NUMBER(3,2) NOT NULL CONSTRAINT CHECK_PRESENTACION_VALORACION CHECK((VALORACION >= 0) AND (VALORACION <= 5)),
    n_entradas NUMBER(2) NOT NULL,
    CONSTRAINT FK_PRES_OBRA FOREIGN KEY (id_club, id_obra) REFERENCES ADFJ_OBRAS_ACTUADAS(id_club, id_obra),
    CONSTRAINT PK_PRESENTACIONES PRIMARY KEY (id_club, id_obra, f_presentacion)
);

CREATE TABLE ADFJ_MEJORES_ACTORES (
    id_club_el NUMBER(2) NOT NULL,
    id_obra_el NUMBER(2) NOT NULL,
    id_lector NUMBER(3) NOT NULL,
    id_club_pres NUMBER(2) NOT NULL,
    id_obra_pres NUMBER(2) NOT NULL,
    f_presentacion DATE NOT NULL,
    CONSTRAINT FK_MEJOR_ACTOR_ELENCO FOREIGN KEY(ID_CLUB_EL, ID_OBRA_EL, ID_LECTOR)
        REFERENCES ADFJ_ELENCOS(ID_CLUB, ID_OBRA, ID_LECTOR),
    CONSTRAINT FK_MEJOR_ACTOR_PRESENTACION FOREIGN KEY(ID_CLUB_PRES, ID_OBRA_PRES, F_PRESENTACION)
        REFERENCES ADFJ_PRESENTACIONES(ID_CLUB, ID_OBRA, F_PRESENTACION),
    CONSTRAINT PK_MEJOR_ACTOR PRIMARY KEY(ID_CLUB_EL, ID_OBRA_EL, ID_LECTOR, ID_CLUB_PRES, ID_OBRA_PRES, F_PRESENTACION)
);

CREATE TABLE ADFJ_CAL_REUNIONES (
    id_club NUMBER(2) NOT NULL,
    id_grupo NUMBER(2) NOT NULL,
    isbn NUMBER(13) NOT NULL,
    f_reunion DATE NOT NULL,
    realizada VARCHAR2(1) NOT NULL CONSTRAINT CHECK_REUNION_REALIZADA CHECK(realizada = 'S' OR realizada = 'N'),
    id_club_memb_mod NUMBER(2) NOT NULL,
    id_club_grupo_mod NUMBER(2) NOT NULL,
    id_grupo_mod NUMBER(2) NOT NULL,
    id_moderador NUMBER(3) NOT NULL,
    f_ing_club_mod DATE NOT NULL,
    f_ing_grupo_mod DATE NOT NULL,
    conclusiones VARCHAR2(400),
    valoracion NUMBER(1) CONSTRAINT CHECK_REUNION_VALORACION CHECK(valoracion >= 1 AND valoracion <= 5),
    ultima_reunion VARCHAR2(1) CONSTRAINT CHECK_ULTIMA__REUNION CHECK(ultima_reunion = 'S' OR ultima_reunion = 'N'),
    CONSTRAINT FK_GRUPO_CALENDARIO FOREIGN KEY(ID_CLUB, ID_GRUPO) REFERENCES ADFJ_GRUPOS_LECTURA(ID_CLUB, ID_GRUPO),
    CONSTRAINT FK_LIBRO_CALENDARIO FOREIGN KEY(ISBN) REFERENCES ADFJ_LIBROS(ISBN),
    CONSTRAINT FK_MODERADOR FOREIGN KEY(ID_CLUB_MEMB_MOD, ID_CLUB_GRUPO_MOD, ID_GRUPO_MOD, ID_MODERADOR, F_ING_CLUB_MOD, F_ING_GRUPO_MOD)
        REFERENCES ADFJ_HIST_ASIGNACIONES(ID_CLUB_MEMB, ID_CLUB_GRUPO, ID_GRUPO, ID_LECTOR, F_ING_CLUB, F_ING_GRUPO),
    CONSTRAINT PK_CALENDARIO PRIMARY KEY(ID_CLUB, ID_GRUPO, ISBN, F_REUNION),
    CONSTRAINT CHECK_REUNION_OPCIONALES CHECK(realizada = 'N' or NVL(ultima_reunion, 'N') = 'N' or (conclusiones IS NOT NULL AND valoracion is NOT NULL))
);

CREATE TABLE ADFJ_INASISTENCIAS(
    ID_CLUB_GRUPO NUMBER(2) NOT NULL,
    ID_CLUB_MEMB NUMBER(2) NOT NULL,
    ID_GRUPO_ASIG NUMBER(2) NOT NULL,
    ID_LECTOR NUMBER(3) NOT NULL,
    F_ING_CLUB DATE NOT NULL,
    F_ING_GRUPO DATE NOT NULL,
    ID_CLUB_CAL NUMBER(2) NOT NULL,
    ID_GRUPO_CAL NUMBER(2) NOT NULL,
    ISBN NUMBER(13) NOT NULL,
    F_REUNION DATE NOT NULL,
    CONSTRAINT FK_INASISTENCIA_ASIGNACION FOREIGN KEY(ID_CLUB_GRUPO, ID_CLUB_MEMB, ID_GRUPO_ASIG, ID_LECTOR, F_ING_CLUB, F_ING_GRUPO)
        REFERENCES ADFJ_HIST_ASIGNACIONES(ID_CLUB_GRUPO, ID_CLUB_MEMB, ID_GRUPO, ID_LECTOR, F_ING_CLUB, F_ING_GRUPO),
    CONSTRAINT FK_INASISTENCIA_CALENDARIO FOREIGN KEY(ID_CLUB_CAL, ID_GRUPO_CAL, ISBN, F_REUNION)
        REFERENCES ADFJ_CAL_REUNIONES(ID_CLUB, ID_GRUPO, ISBN, F_REUNION),
    CONSTRAINT PK_INASISTENCIA PRIMARY KEY(ID_CLUB_GRUPO, ID_CLUB_MEMB, ID_GRUPO_ASIG, ID_LECTOR, F_ING_CLUB, F_ING_GRUPO, ID_CLUB_CAL, ID_GRUPO_CAL, ISBN, F_REUNION)
);

CREATE INDEX ADFJ_I_NOMBRE_LIBRO ON ADFJ_LIBROS(TITULO);
CREATE INDEX ADFJ_I_NOMBRE_CLUB ON ADFJ_CLUBES(NOMBRE);
CREATE INDEX ADFJ_I_FK_CLUB_INSTITUCION ON ADFJ_CLUBES(ID_INSTITUCION);

CREATE OR REPLACE VIEW ADFJ_V_INASISTENCIAS_BIMESTRE AS SELECT ID_CLUB_MEMB ID_CLUB, ID_LECTOR,
    EXTRACT(YEAR FROM F_REUNION) ANIO,
    CEIL(EXTRACT(MONTH FROM F_REUNION)/2) BIMESTRE,
    COUNT(*) TOTAL_INASISTENCIAS
FROM ADFJ_INASISTENCIAS
GROUP BY ID_CLUB_MEMB, ID_LECTOR,
    EXTRACT(YEAR FROM F_REUNION),
    CEIL(EXTRACT(MONTH FROM F_REUNION)/2)
ORDER BY ANIO, BIMESTRE, ID_LECTOR;
    
CREATE OR REPLACE VIEW ADFJ_V_REUNIONES_BIMESTRE AS SELECT HA.ID_CLUB_MEMB ID_CLUB, HA.ID_LECTOR,
    EXTRACT(YEAR FROM CR.F_REUNION) ANIO,
    CEIL(EXTRACT(MONTH FROM CR.F_REUNION)/2) BIMESTRE,
    COUNT(*) TOTAL_REUNIONES
FROM ADFJ_HIST_ASIGNACIONES HA, ADFJ_CAL_REUNIONES CR
WHERE HA.ID_CLUB_GRUPO = CR.ID_CLUB
    AND HA.ID_GRUPO    = CR.ID_GRUPO
    AND CR.REALIZADA   = 'S'
    AND HA.F_ING_GRUPO <= CR.F_REUNION
    AND (HA.F_FIN_GRUPO IS NULL OR HA.F_FIN_GRUPO >= CR.F_REUNION)
GROUP BY HA.ID_CLUB_MEMB, HA.ID_LECTOR,
    EXTRACT(YEAR FROM CR.F_REUNION),
    CEIL(EXTRACT(MONTH FROM CR.F_REUNION)/2)
ORDER BY ANIO, BIMESTRE, ID_LECTOR;

CREATE OR REPLACE VIEW ADFJ_VISTA_MIEMBROS_ACTIVOS (id_club, id_lector, f_ing_club) AS
SELECT c.id_club, l.id_lector, h.f_ing_club
FROM ADFJ_HIST_MEMBRESIAS h, ADFJ_lectores l, ADFJ_clubes c
WHERE h.id_lector = l.id_lector 
  AND h.id_club = c.id_club 
  AND h.f_retiro IS NULL;
  
CREATE OR REPLACE VIEW ADFJ_VISTA_MIEMBROS_RETIRADOS(id_club, id_lector, f_ing_club, f_sol_retiro, f_retiro, motivo_retiro) AS 
SELECT c.id_club, l.id_lector, h.f_ing_club, h.f_sol_retiro, h.f_retiro, h.motivo_retiro
FROM ADFJ_HIST_MEMBRESIAS h, ADFJ_lectores l, ADFJ_clubes c
WHERE h.id_lector = l.id_lector 
  AND h.id_club = c.id_club 
  AND h.f_retiro IS NOT NULL;
  
CREATE OR REPLACE VIEW ADFJ_V_REUNIONES_REALIZADAS_MES AS SELECT G.ID_CLUB, G.TIPO, G.ID_GRUPO,
    TO_CHAR(C.F_REUNION,'MM') MES,
    TO_CHAR(C.F_REUNION,'YYYY') ANIO,
    COUNT(*) TOTAL_REUNIONES
FROM ADFJ_CAL_REUNIONES C, ADFJ_GRUPOS_LECTURA G
WHERE G.ID_CLUB  = C.ID_CLUB
    AND G.ID_GRUPO = C.ID_GRUPO
    AND C.REALIZADA = 'S'
GROUP BY G.ID_CLUB, G.TIPO, G.ID_GRUPO,
    TO_CHAR(C.F_REUNION,'MM'),
    TO_CHAR(C.F_REUNION,'YYYY')
ORDER BY G.ID_CLUB, G.TIPO, ANIO, MES;

CREATE OR REPLACE VIEW ADFJ_V_INASISTENCIAS_MES AS SELECT G.ID_CLUB, G.ID_GRUPO, G.TIPO,
    TO_CHAR(I.F_REUNION,'MM') MES,
    TO_CHAR(I.F_REUNION,'YYYY') ANIO,
    COUNT(*) TOTAL_INASISTENCIAS
FROM ADFJ_INASISTENCIAS I, ADFJ_GRUPOS_LECTURA G
WHERE G.ID_CLUB  = I.ID_CLUB_CAL
    AND G.ID_GRUPO = I.ID_GRUPO_CAL
GROUP BY G.ID_CLUB, G.ID_GRUPO, G.TIPO,
    TO_CHAR(I.F_REUNION,'MM'),
    TO_CHAR(I.F_REUNION,'YYYY')
ORDER BY G.ID_CLUB, G.TIPO, ANIO, MES;

CREATE OR REPLACE VIEW ADFJ_V_MIEMBROS_GRUPOS AS SELECT G.ID_CLUB, G.TIPO, G.ID_GRUPO, 
    L.ID_LECTOR, 
    H.F_ING_GRUPO, H.F_FIN_GRUPO
FROM ADFJ_GRUPOS_LECTURA G, ADFJ_LECTORES L, ADFJ_HIST_ASIGNACIONES H
WHERE G.ID_CLUB   = H.ID_CLUB_GRUPO
    AND G.ID_GRUPO  = H.ID_GRUPO
    AND L.ID_LECTOR = H.ID_LECTOR
ORDER BY G.ID_CLUB, G.TIPO, G.ID_GRUPO, L.ID_LECTOR;

Create or replace view adfj_v_libros_autores(id_autor, nombre, apellido, isbn, titulo) as 
    Select a.id_autor, a.nombre, a.apellido, l.isbn, l.titulo
        from adfj_autores a, adfj_libros l, adfj_autorias x
        where a.id_autor = x.id_autor
            and l.isbn = x.isbn;
  
CREATE OR REPLACE FUNCTION ADFJ_CONVERSION_MONETARIA(
    monto_local IN NUMBER,                               
    tasa IN NUMBER,             ----tasa local -> USD
    moneda_local IN VARCHAR2
) RETURN NUMBER IS
BEGIN
    IF monto_local < 0 then
        raise_application_error(-20000, 'ERROR. El monto a convertir no debe ser negativo');
    end if;
    IF tasa <= 0 then
        raise_application_error(-20000, 'ERROR. La tasa de conversión debe ser positiva');
    end if;
    IF moneda_local = '$' OR moneda_local = 'USD' then
        DBMS_OUTPUT.PUT_LINE('La moneda local ya esta en dolares, la conversion retorna el mismo monto');
        RETURN(monto_local);
    ELSE
        RETURN ROUND((monto_local / tasa), 2);
    END IF;
END ADFJ_CONVERSION_MONETARIA;
/

CREATE OR REPLACE FUNCTION ADFJ_CALCULAR_EDAD_ANTIGUEDAD(
    fecha1 IN DATE, 
    fecha2 IN DATE DEFAULT SYSDATE
) RETURN NUMBER IS
BEGIN
    RETURN TRUNC(MONTHS_BETWEEN(NVL(fecha2, SYSDATE), fecha1) / 12);
END ADFJ_CALCULAR_EDAD_ANTIGUEDAD;
/

CREATE OR REPLACE FUNCTION ADFJ_PCT_PARTICIPACION_MENSUAL_TIPO(
    P_ID_CLUB IN NUMBER,
    P_TIPO    IN VARCHAR2,
    P_MES   IN NUMBER DEFAULT extract(month from sysdate),
    P_ANIO IN NUMBER DEFAULT extract(year from sysdate)
) RETURN NUMBER IS
    V_F_INICIO  DATE;
    V_F_FIN     DATE;
    V_RESULTADO NUMBER;
BEGIN
    If p_anio > extract(year from sysdate) then
        raise_application_error(-20000, 'ERROR. No puede calcular la participación para fechas futuras');
    End if;
    
    If p_mes not between 1 and 12 then
        raise_application_error(-20000, 'ERROR. Debe ingresar un mes válido (1-12)');
    End if;
    
    If upper(p_tipo) not in ('A', 'J', 'N') then
        raise_application_error(-20000, 'ERROR. Debe ingresar un tipo de grupo válido (A, J, N)');
    End if;
    
    V_F_INICIO := TO_DATE('01/' || TO_CHAR(P_MES, '09') || '/' || TO_CHAR(P_ANIO), 'dd/mm/yyyy');
    V_F_FIN    := LAST_DAY(V_F_INICIO);
    
    SELECT ROUND(AVG((1 - NVL(INASIST.TOTAL, 0) / (REUN.TOTAL * MIEM.TOTAL)) * 100), 2)
    INTO V_RESULTADO
    FROM ADFJ_GRUPOS_LECTURA GL,
       
        -- Reuniones realizadas por grupo en el mes
        (SELECT ID_CLUB, ID_GRUPO, COUNT(*) TOTAL
         FROM ADFJ_CAL_REUNIONES
         WHERE REALIZADA = 'S'
             AND F_REUNION BETWEEN V_F_INICIO AND V_F_FIN
         GROUP BY ID_CLUB, ID_GRUPO) REUN,
         
        -- Miembros activos por grupo en el mes
        (SELECT ID_CLUB_GRUPO, ID_GRUPO, COUNT(*) TOTAL
         FROM ADFJ_HIST_ASIGNACIONES
         WHERE F_ING_GRUPO <= V_F_FIN
             AND (F_FIN_GRUPO IS NULL OR F_FIN_GRUPO >= V_F_INICIO)
         GROUP BY ID_CLUB_GRUPO, ID_GRUPO) MIEM,
         
        -- Inasistencias por grupo en el mes
        (SELECT ID_CLUB_CAL, ID_GRUPO_CAL, COUNT(*) TOTAL
         FROM ADFJ_INASISTENCIAS
         WHERE F_REUNION BETWEEN V_F_INICIO AND V_F_FIN
         GROUP BY ID_CLUB_CAL, ID_GRUPO_CAL) INASIST
         
    WHERE GL.ID_CLUB  = P_ID_CLUB
        AND GL.TIPO   = upper(P_TIPO)
        AND GL.ID_CLUB  = REUN.ID_CLUB
        AND GL.ID_GRUPO = REUN.ID_GRUPO
        AND GL.ID_CLUB  = MIEM.ID_CLUB_GRUPO
        AND GL.ID_GRUPO = MIEM.ID_GRUPO
        AND GL.ID_CLUB  = INASIST.ID_CLUB_CAL (+)
        AND GL.ID_GRUPO = INASIST.ID_GRUPO_CAL (+);
    
    If v_resultado is null then
        raise_application_error(-20000, 'ERROR. No se pudo completar la operación, ya que las consultas no arrojaron ningún resultado. Verifique que hubo actividad en el club durante el mes');
    End if;
    
    RETURN V_RESULTADO;

EXCEPTION
    WHEN ZERO_DIVIDE THEN raise_application_error(-20000, 'ERROR. No se pudo completar el cálculo, ya que la cantidad de miembros activos o de reuniones es cero');
END ADFJ_PCT_PARTICIPACION_MENSUAL_TIPO;
/

CREATE OR REPLACE FUNCTION ADFJ_F_PROMEDIO_PARTICIPACION(
    p_idlector IN NUMBER,
    p_idclub   IN NUMBER,
    p_anio     IN NUMBER DEFAULT extract(year from sysdate),
    p_bimestre IN NUMBER DEFAULT ceil(extract(month from sysdate)/2)
) RETURN NUMBER IS
    v_total_reuniones       NUMBER := 0;
    v_total_inasistencias   NUMBER := 0;
    v_porcentaje            NUMBER(5,2) := 0; 
BEGIN
    If p_anio > extract(year from sysdate) then
        raise_application_error(-20000, 'ERROR. No puede calcular la participación para fechas futuras');
    End if;
    
    If p_bimestre not between 1 and 6 then
        raise_application_error(-20000, 'ERROR. Debe ingresar un bimestre válido (1-6)');
    End if;

    -- 1. Obtener el total de reuniones programadas para el lector en ese bimestre
    BEGIN
        SELECT TOTAL_REUNIONES
        INTO v_total_reuniones
        FROM ADFJ_V_REUNIONES_BIMESTRE
        WHERE ID_CLUB = p_idclub
          AND ID_LECTOR = p_idlector
          AND ANIO      = p_anio
          AND BIMESTRE  = p_bimestre;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20000,'No se ha reunido en este bimestre');
            --v_total_reuniones := 0;
    END;
    
    BEGIN
        SELECT TOTAL_INASISTENCIAS
        INTO v_total_inasistencias
        FROM ADFJ_V_INASISTENCIAS_BIMESTRE
        WHERE ID_CLUB = p_idclub
          AND ID_LECTOR = p_idlector
          AND ANIO      = p_anio
          AND BIMESTRE  = p_bimestre;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_total_inasistencias := 0;
    END;
    v_porcentaje := ROUND(((v_total_reuniones - v_total_inasistencias) / v_total_reuniones) * 100, 2);
    RETURN v_porcentaje;
END;
/

CREATE OR REPLACE FUNCTION ADFJ_CONTAR_MIEMBROS_ACTIVOS(
    p_id_club IN NUMBER,
    p_anio    IN NUMBER
) RETURN NUMBER IS
    v_fecha_corte DATE;
    v_total NUMBER;
BEGIN
    v_fecha_corte := TO_DATE('31/12/' || TO_CHAR(p_anio), 'DD/MM/YYYY');
    
    SELECT COUNT(DISTINCT id_lector)
    INTO v_total
    FROM ADFJ_HIST_MEMBRESIAS
    WHERE id_club = p_id_club
      AND f_ing_club <= v_fecha_corte
      AND (f_retiro IS NULL OR f_retiro > v_fecha_corte);

    RETURN NVL(v_total, 0);
END ADFJ_CONTAR_MIEMBROS_ACTIVOS;
/

CREATE OR REPLACE FUNCTION ADFJ_CRECIMIENTO_MIEMBROS(
    p_id_club IN NUMBER,
    p_anio    IN NUMBER
) RETURN NUMBER IS
    v_miembros_actual   NUMBER;
    v_miembros_anterior NUMBER;
BEGIN
    IF p_anio > EXTRACT(YEAR FROM SYSDATE) THEN
        RAISE_APPLICATION_ERROR(-20000, 
            'ERROR. No puede calcular crecimiento para años futuros');
    END IF;

    v_miembros_actual   := ADFJ_CONTAR_MIEMBROS_ACTIVOS(p_id_club, p_anio);
    v_miembros_anterior := ADFJ_CONTAR_MIEMBROS_ACTIVOS(p_id_club, p_anio - 1);

    IF v_miembros_anterior = 0 THEN
        RETURN NULL;
    END IF;

    RETURN ROUND(
        ((v_miembros_actual - v_miembros_anterior) / v_miembros_anterior), 4);
END ADFJ_CRECIMIENTO_MIEMBROS;
/

CREATE OR REPLACE FUNCTION ADFJ_INGRESOS_MEMBRESIA_ANUAL(
    p_id_club IN NUMBER,
    p_anio    IN NUMBER
) RETURN NUMBER IS
    v_pagos NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_pagos
    FROM ADFJ_PAGOS_MEMBRESIA p, ADFJ_CLUBES c
    WHERE c.id_club      = p.id_club
      AND p.id_club      = p_id_club
      AND c.cuota_membr  = 'S'
      AND EXTRACT(YEAR FROM p.f_pago) = p_anio;

    -- Cada pago equivale a $100 USD (monto fijo del enunciado)
    RETURN NVL(v_pagos, 0) * 100;
END ADFJ_INGRESOS_MEMBRESIA_ANUAL;
/

CREATE OR REPLACE FUNCTION ADFJ_CRECIMIENTO_ECONOMICO(
    p_id_club IN NUMBER,
    p_anio    IN NUMBER
) RETURN NUMBER IS
    v_ingresos_actual   NUMBER;
    v_ingresos_anterior NUMBER;
BEGIN
    IF p_anio > EXTRACT(YEAR FROM SYSDATE) THEN
        RAISE_APPLICATION_ERROR(-20000,
            'ERROR. No puede calcular crecimiento para años futuros');
    END IF;

    v_ingresos_actual   := ADFJ_INGRESOS_MEMBRESIA_ANUAL(p_id_club, p_anio);
    v_ingresos_anterior := ADFJ_INGRESOS_MEMBRESIA_ANUAL(p_id_club, p_anio - 1);

    IF v_ingresos_anterior = 0 THEN
        RETURN NULL;
    END IF;

    RETURN ROUND(((v_ingresos_actual - v_ingresos_anterior) / v_ingresos_anterior), 4);
END ADFJ_CRECIMIENTO_ECONOMICO;
/

CREATE OR REPLACE VIEW ADFJ_V_CRECIMIENTO_MIEMBROS(pais, anio, id_club, club, act_actual, act_pasado, crecimiento) AS
SELECT DISTINCT p.nombre AS pais, 
    EXTRACT(YEAR FROM h.f_ing_club) AS anio,
    c.id_club, 
    c.nombre AS club,
    ADFJ_CONTAR_MIEMBROS_ACTIVOS(c.id_club, EXTRACT(YEAR FROM h.f_ing_club))     AS miembros_periodo_actual,
    ADFJ_CONTAR_MIEMBROS_ACTIVOS(c.id_club, EXTRACT(YEAR FROM h.f_ing_club) - 1) AS miembros_periodo_pasado,
    ADFJ_CRECIMIENTO_MIEMBROS(c.id_club, EXTRACT(YEAR FROM h.f_ing_club))        AS pct_crecimiento_miembros
FROM ADFJ_CLUBES c, ADFJ_PAISES p, ADFJ_HIST_MEMBRESIAS h
WHERE p.id_pais  = c.id_pais
    AND c.id_club = h.id_club
    AND EXTRACT(YEAR FROM h.f_ing_club) >= 2024
ORDER BY p.nombre, anio, 
    pct_crecimiento_miembros DESC NULLS LAST, c.nombre;
    
CREATE OR REPLACE VIEW ADFJ_V_CRECIMIENTO_ECONOMICO AS
SELECT DISTINCT p.nombre AS pais,
    EXTRACT(YEAR FROM pm.f_pago) AS anio,
    c.id_club,
    c.nombre AS club,
    ADFJ_INGRESOS_MEMBRESIA_ANUAL(c.id_club, EXTRACT(YEAR FROM pm.f_pago))     AS ingresos_periodo_actual,
    ADFJ_INGRESOS_MEMBRESIA_ANUAL(c.id_club, EXTRACT(YEAR FROM pm.f_pago) - 1) AS ingresos_periodo_pasado,
    ADFJ_CRECIMIENTO_ECONOMICO(c.id_club, EXTRACT(YEAR FROM pm.f_pago))         AS pct_crecimiento_economico
FROM ADFJ_CLUBES c, ADFJ_PAISES p, ADFJ_PAGOS_MEMBRESIA pm
WHERE p.id_pais      = c.id_pais
    AND c.id_club     = pm.id_club
    AND c.cuota_membr = 'S'
    AND EXTRACT(YEAR FROM pm.f_pago) >= 2024
ORDER BY p.nombre, anio,
    pct_crecimiento_economico DESC NULLS LAST, c.nombre;
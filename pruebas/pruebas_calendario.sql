/*
Vistas útiles:
I) V_MODERADORES_DISPONIBLES (para elegir parámetros). PD: aunque sea automático no se debe especificar un grupo sin moderadores disponibles
II) CAL_REUNIONES (tabla) para ver nuevos registros
III) LIBROS (tabla) para elegir ISBN
IV) GRUPOS_LECTURA (tabla) para ver tipo de grupo, hora de reunión y elegir parámetro
*/

--idclub 1 idgrupo 5, isbn 1301417231414
--idclub 7, id grupo 3, isbn isbn 1301417231414 para comprobar asignación de moderadores en grupo de niños

EXECUTE adfj_agendar_reuniones(&p_id_club,&p_id_grupo,&p_isbn,&p_cant_reuniones);
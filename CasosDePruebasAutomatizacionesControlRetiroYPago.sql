/* este comando fallara el lector mateo linares
fue retirado del club 3 (los tapa dura) el 01/06/2017 por inasistencia
*/
INSERT INTO ADFJ_HIST_MEMBRESIAS (id_club, id_lector, f_ing_club) 
VALUES (3, 6, SYSDATE);

/*este comando debe ser exitoso el lector spike jonze se retiro del 
club 2 (vivir entre lineas) el 01/03/2019 por motivo voluntario
*/
INSERT INTO ADFJ_HIST_MEMBRESIAS (id_club, id_lector, f_ing_club) 
VALUES (2, 3, SYSDATE);

-- este comando NO falla porque el lector con ID 6 fallo en el club 3, pero no tiene historial en el club 1.
 INSERT INTO ADFJ_HIST_MEMBRESIAS (id_club, id_lector, f_ing_club) 
VALUES (1, 6, SYSDATE);


-- registro del segundo pago del lector con id 4 en el club 1 (que cobra membresia)
EXECUTE ADFJ_PRC_REGISTRAR_PAGO(1, 4, TO_DATE('10-05-2020','DD-MM-YYYY'));

-- falla porque este club con id 2 no cobra membresias
EXECUTE ADFJ_PRC_REGISTRAR_PAGO(2, 3, TO_DATE('01-01-2019','DD-MM-YYYY'));

-- prueba con lector 1, se le cobrara un año mas y se efectuara su fecha de retiro para dentro de un año mas
UPDATE ADFJ_HIST_MEMBRESIAS 
SET F_SOL_RETIRO = TO_DATE('10/02/2027', 'DD/MM/YYYY')
WHERE ID_LECTOR = 1 
  AND ID_CLUB = 1 
  AND F_ING_CLUB = TO_DATE('01/03/2020', 'DD/MM/YYYY');
  
-- prueba con lector 1 no se le cobrara un año mas porque aviso a tiempo su retiro
 UPDATE ADFJ_HIST_MEMBRESIAS 
SET F_SOL_RETIRO = TO_DATE('01/02/2027', 'DD/MM/YYYY')     
WHERE ID_LECTOR = 1 
AND ID_CLUB = 1;
  

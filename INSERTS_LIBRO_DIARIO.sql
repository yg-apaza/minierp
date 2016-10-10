-- -----------------------------------------------------
-- Data for table `episerp`.`en_p3m_libro_diario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p3m_libro_diario` (`LibDiaCod`, `LibDiaPer`, `EstRegCod`) VALUES (1, '2016-Oct', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p3m_asiento_cab`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 1, 'M', 'Por las compras según factura N°001-4678', '2016-09-26', 01, '001-4678', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 2, 'M', 'Por la cancelación en efectivo de la factura N°001-4678', '2016-09-26', 01, '001-4678', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 3, 'M', 'Por la transferencia de la mercadería adquirida con factura N°001-4678', '2016-09-26', 01, '001-4678', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 4, 'M', 'Por la venta de la mercadería según factura N°002-3675', '2016-09-28', 01, '002-3675', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 5, 'M', 'Por la cobranza en efectivo de la factura N°002-3675', '2016-09-28', 01, '002-3675', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 6, 'M', 'Por las compras según boleta de venta N°001-3454', '2016-09-30', 03, '001-3454', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 7, 'M', 'Por la cancelación en efectivo de la boleta de venta N°001-3454', '2016-09-30', 03, '001-3454', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 8, 'M', 'Por la transferencia de la mercadería adquirida mediante boleta de venta N°001-3454', '2016-09-30', 03, '001-3454', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 9, 'M', 'Por la venta de la mercadería segun boleta de venta N°002-3326', '2016-10-3', 03, '002-3326', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 10, 'M', 'Por la cobranza en efectivo de la boleta de venta N°002-3326', '2016-10-3', 03, '002-3326', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 11, 'M', 'Por las compras según factura N°003-3498', '2016-10-4', 01, '003-3498', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 12, 'M', 'Por la cancelación en efectivo de la factura N°003-3498', '2016-10-4', 01, '003-3498', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 13, 'M', 'Por la transferencia de la mercadería adquirida con factura N°003-3498', '2016-10-4', 01, '003-3498', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 14, 'M', 'Por la venta de la mercadería según factura N°004-7437', '2016-10-5', 01, '004-7437', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 15, 'M', 'Por la cobranza en efectivo de la factura N°004-7437', '2016-10-5', 01, '004-7437', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 16, 'M', 'Por las compras según boleta de venta N°003-7588', '2016-10-6', 03, '003-7588', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 17, 'M', 'Por la cancelación en efectivo de la boleta de venta N°003-7588', '2016-10-6', 03, '003-7588', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 18, 'M', 'Por la transferencia de la mercadería adquirida mediante boleta de venta N°003-7588', '2016-10-6', 03, '003-7588', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 19, 'M', 'Por la venta de la mercadería segun boleta de venta N°004-4361', '2016-10-7', 03, '004-4361', 1, 'A');
INSERT INTO `episerp`.`en_p3m_asiento_cab` (`LibDiaCod`, `AsiCabCod`, `AsiCabTip`, `AsiCabGlo`, `AsiCabFec`, `TipComCod`, `AsiCabNumCom`, `MonCod`, `EstRegCod`) VALUES (1, 20, 'M', 'Por la cobranza en efectivo de la boleta de venta N°004-4361', '2016-10-7', 03, '004-4361', 1, 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p3t_asiento_det`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 1, 1, 306, 1, 500);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 1, 2, 229, 1, 90);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 1, 3, 241, 0, 590);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 2, 4, 241, 1, 590);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 2, 5, 94, 0, 590);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 3, 6, 20, 1, 500);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 3, 7, 311, 0, 500);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 4, 8, 453, 1, 1180);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 4, 9, 533, 0, 180);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 4, 10, 535, 0, 1000);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 5, 11, 94, 0, 1180);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 5, 12, 453, 1, 1180);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 6, 13, 307, 1, 400);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 6, 14, 229, 1, 72);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 6, 15, 241, 0, 472);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 7, 16, 241, 1, 472);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 7, 17, 94, 0, 472);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 8, 18, 24, 1, 400);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 8, 19, 312, 0, 400);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 9, 20, 453, 1, 1416);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 9, 21, 533, 0, 216);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 9, 22, 368, 0, 1200);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 10, 23, 94, 0, 1416);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 10, 24, 453, 1, 1416);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 11, 25, 306, 1, 350);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 11, 26, 229, 1, 63);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 11, 27, 241, 0, 413);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 12, 28, 241, 1, 413);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 12, 29, 94, 0, 413);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 13, 30, 20, 1, 350);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 13, 31, 311, 0, 350);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 14, 32, 453, 1, 1534);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 14, 33, 533, 0, 234);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 14, 34, 535, 0, 1300);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 15, 35, 94, 0, 1534);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 15, 36, 453, 1, 1534);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 16, 37, 307, 1, 450);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 16, 38, 229, 1, 81);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 16, 39, 241, 0, 531);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 17, 40, 241, 1, 531);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 17, 41, 94, 0, 531);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 18, 42, 24, 1, 450);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 18, 43, 312, 0, 450);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 19, 44, 453, 1, 1652);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 19, 45, 533, 0, 252);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 19, 46, 368, 0, 1400);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 20, 47, 94, 0, 1652);
INSERT INTO `episerp`.`en_p3t_asiento_det` (`LibDiaCod`, `AsiCabCod`, `AsiDetCod`, `CueCod`, `AsiDetDebHab`, `AsiDetMon`) VALUES (1, 20, 48, 453, 1, 1652);

COMMIT;

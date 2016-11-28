-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_estado_civil`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_estado_civil` (`EstCivCod`, `EstCivDet`, `EstRegCod`) VALUES (1, 'Soltero', 'A');
INSERT INTO `episerp`.`ta_gzz_estado_civil` (`EstCivCod`, `EstCivDet`, `EstRegCod`) VALUES (2, 'Casado', 'A');
INSERT INTO `episerp`.`ta_gzz_estado_civil` (`EstCivCod`, `EstCivDet`, `EstRegCod`) VALUES (3, 'Divorciado', 'A');
INSERT INTO `episerp`.`ta_gzz_estado_civil` (`EstCivCod`, `EstCivDet`, `EstRegCod`) VALUES (4, 'Viudo', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_usuario` (`TipUsuCod`, `TipUsuDet`, `EstRegCod`) VALUES (1, 'Administrador', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_usuario` (`TipUsuCod`, `TipUsuDet`, `EstRegCod`) VALUES (2, 'Vendedor', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_usuario` (`TipUsuCod`, `TipUsuDet`, `EstRegCod`) VALUES (3, 'Almacenero', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_usuario` (`TipUsuCod`, `TipUsuDet`, `EstRegCod`) VALUES (4, 'Contador', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_usuario` (`TipUsuCod`, `TipUsuDet`, `EstRegCod`) VALUES (5, 'Gerente', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_usuario` (`TipUsuCod`, `TipUsuDet`, `EstRegCod`) VALUES (6, 'Cajero', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_sucursal`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES (1, 'Sucursal Arequipa', 'Av. Venezuela s/n', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_punto_venta`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '1', '1', 'Punto de Venta Principal', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_empresa`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_empresa` (`EmpCod`,`EmpRazSoc`,`EmpNomCom`,`EmpDomFis`,`EmpDes`,`EmpDir`,`EmpTel`,`EmpEmail`,`EmpIGV`,`EmpTipCamCom`,`EmpTipCamVen`,`EmpRUC`,`EmpLot`,`EmpImgURL`) VALUES (01,'Empresa de Desarrollo de Software','MOT S.A.','Av. Venezuela s/n','Empresa de Desarrollo de Software','Av. Venezuela s/n','945708074','mot@gmail.com',18.00,3.371,3.375,'10230499411',NULL,NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_moneda`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `ta_gzz_moneda` (`MonCod`,`MonSim`,`MonDet`,`EstRegCod`) VALUES (01,'S/.','NUEVOS SOLES','A');
INSERT INTO `ta_gzz_moneda` (`MonCod`,`MonSim`,`MonDet`,`EstRegCod`) VALUES (02,'$','DOLARES AMERICANOS','A');
INSERT INTO `ta_gzz_moneda` (`MonCod`,`MonSim`,`MonDet`,`EstRegCod`) VALUES (09,NULL,'OTRA MONEDA','A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_estado_factura`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_estado_factura` (`EstFacCod`, `EstFacDet`, `EstRegCod`) VALUES (1, 'Cancelado', 'A');
INSERT INTO `episerp`.`ta_gzz_estado_factura` (`EstFacCod`, `EstFacDet`, `EstRegCod`) VALUES (2, 'Pagando', 'A');
INSERT INTO `episerp`.`ta_gzz_estado_factura` (`EstFacCod`, `EstFacDet`, `EstRegCod`) VALUES (3, 'Atrasado', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_metodo_pago_factura`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_metodo_pago_factura` (`MetPagCod`, `MetPagDet`, `EstRegCod`) VALUES (1, 'Efectivo', 'A');
INSERT INTO `episerp`.`ta_gzz_metodo_pago_factura` (`MetPagCod`, `MetPagDet`, `EstRegCod`) VALUES (2, 'Tarjeta', 'A');
INSERT INTO `episerp`.`ta_gzz_metodo_pago_factura` (`MetPagCod`, `MetPagDet`, `EstRegCod`) VALUES (3, 'Cheque', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_pago_factura`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_pago_factura` (`TipPagCod`, `TipPagDet`, `EstRegCod`) VALUES (1, 'Contado', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_pago_factura` (`TipPagCod`, `TipPagDet`, `EstRegCod`) VALUES (2, 'Cuotas', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_doc_cliente`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_doc_cliente` (`TipDocCliCod`, `TipDocCliDet`, `EstRegCod`) VALUES (1, 'DNI', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_doc_cliente` (`TipDocCliCod`, `TipDocCliDet`, `EstRegCod`) VALUES (2, 'RUC', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_doc_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_doc_usuario` (`TipDocUsuCod`, `TipDocUsuDet`, `EstRegCod`) VALUES (1, 'DNI', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_doc_usuario` (`TipDocUsuCod`, `TipDocUsuDet`, `EstRegCod`) VALUES (2, 'RUC', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_unidad_med`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `ta_gzz_unidad_med` (`UniMedCod`,`UniMedSim`,`UniMedDet`,`EstRegCod`) VALUES (01,'u','Unidades','A');
INSERT INTO `ta_gzz_unidad_med` (`UniMedCod`,`UniMedSim`,`UniMedDet`,`EstRegCod`) VALUES (02,'kg','Kilogramos','A');
INSERT INTO `ta_gzz_unidad_med` (`UniMedCod`,`UniMedSim`,`UniMedDet`,`EstRegCod`) VALUES (03,'l','Litros','A');
INSERT INTO `ta_gzz_unidad_med` (`UniMedCod`,`UniMedSim`,`UniMedDet`,`EstRegCod`) VALUES (04,'m','Metros','A');
INSERT INTO `ta_gzz_unidad_med` (`UniMedCod`,`UniMedSim`,`UniMedDet`,`EstRegCod`) VALUES (05,'ca','Cajas','A');
INSERT INTO `ta_gzz_unidad_med` (`UniMedCod`,`UniMedSim`,`UniMedDet`,`EstRegCod`) VALUES (06,'bol','Bolsas','A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_comprobante`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (1, 'Factura', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (2, 'Recibo por Honorarios', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (3, 'Boleta de Venta', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (4, 'Liquidación de compra', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (5, 'Boleto de compañía de aviación comercial por el servicio de transporte aéreo de pasajeros', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (6, 'Carta de porte aéreo por el servicio de transporte de carga aérea', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (7, 'Nota de crédito', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (8, 'Nota de Débito', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (9, 'Guía de Remisión - Remitente', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (10, 'Recibo por Arrendamiento', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (11, 'Póliza emitida por las Bolsas de Valores o Bolsas de Productos', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (12, 'Ticket o cinta emitido por máquina registradora', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (13, 'Documento emitido por instituciones financieras', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (14, 'Recibo por servicios públicos', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (15, 'Boleto emitido por las empresas de transporte público urbano de pasajeros', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (16, 'Boleto de viaje emitido por las empresas de transporte público interprovincial', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (17, 'Documento emitido por la Iglesia Católica por el arrendamiento de bienes inmuebles', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (18, 'Documento emitido por las Administradoras Privadas de Fondo de Pensiones', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (19, 'Boleto o entrada por atracciones y espectáculos públicos', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (20, 'Comprobante de Retención', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (21, 'Conocimiento de embarque por el servicio de transporte de carga marítima', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (22, 'Comprobante por Operaciones No Habituales', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (23, 'Pólizas de Adjudicación', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (24, 'Certificado de pago de regalías emitidas por PERUPETRO S.A', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (25, 'Documento de Atribución', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (26, 'Recibo por el Pago de la Tarifa por Uso de Agua Superficial con fines agrarios', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (27, 'Seguro Complementario de Trabajo de Riesgo', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (28, 'Tarifa Unificada de Uso de Aeropuerto', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (29, 'Documentos emitidos por la COFOPRI', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (30, 'Documentos emitidos por las empresas que desempeñan el rol adquirente', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (31, 'Guía de Remisión - Transportista', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (32, 'Documentos emitidos por las empresas recaudadoras', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (34, 'Documento del Operador', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (35, 'Documento del Partícipe', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (36, 'Recibo de Distribución de Gas Natural', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (37, 'Documentos que emitan los concesionarios del servicio de revisiones técnicas vehiculares', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (40, 'Constancia de Depósito - IVAP', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (50, 'Declaración Única de Aduanas - Importación definitiva                 ', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (52, 'Despacho Simplificado - Importación Simplificada                        ', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (53, 'Declaración de Mensajería o Courier          ', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (54, 'Liquidación de Cobranza', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (87, 'Nota de Crédito Especial', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (88, 'Nota de Débito Especial', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (91, 'Comprobante de No Domiciliado', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (96, 'Exceso de crédito fiscal por retiro de bienes', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (97, 'Nota de Crédito - No Domiciliado', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (98, 'Nota de Débito - No Domiciliado', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`, `TipComDet`, `EstRegCod`) VALUES (99, 'Otros', 'A');
COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_banco`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (1, 'CENTRAL DE RESERVA DEL PERU', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (2, 'DE CREDITO DEL PERU', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (3, 'INTERNACIONAL DEL PERU', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (5, 'LATINO', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (7, 'CITIBANK DEL PERU S.A.', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (8, 'STANDARD CHARTERED', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (9, 'SCOTIABANK PERU', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (11, 'CONTINENTAL', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (12, 'DE LIMA', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (16, 'MERCANTIL', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (18, 'NACION', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (22, 'SANTANDER CENTRAL HISPANO', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (23, 'DE COMERCIO', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (25, 'REPUBLICA', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (26, 'NBK BANK', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (29, 'BANCOSUR', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (35, 'FINANCIERO DEL PERU', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (37, 'DEL PROGRESO', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (38, 'INTERAMERICANO FINANZAS', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (39, 'BANEX', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (40, 'NUEVO MUNDO', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (41, 'SUDAMERICANO', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (42, 'DEL LIBERTADOR', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (43, 'DEL TRABAJO', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (44, 'SOLVENTA', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (45, 'SERBANCO S.A.', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (46, 'BANK OF BOSTON', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (47, 'ORION', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (48, 'DEL PAIS', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (49, 'MI BANCO', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (50, 'BNP PARIBAS', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (51, 'AGROBANCO', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (53, 'HSBC BANK PERU S.A.', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (54, 'BANCO FALABELLA S.A.', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (55, 'BANCO RIPLEY', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (56, 'BANCO SANTANDER PERU S.A.', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (58, 'BANCO AZTECA DEL PERU', 'A');
INSERT INTO `episerp`.`ta_gzz_banco` (`BanCod`, `BanDet`, `EstRegCod`) VALUES (99, 'OTROS', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_doc_proveedor`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_doc_proveedor` (`TipDocProCod`, `TipDocProDet`, `EstRegCod`) VALUES (1, 'DNI', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_doc_proveedor` (`TipDocProCod`, `TipDocProDet`, `EstRegCod`) VALUES (2, 'RUC', 'A');

COMMIT;



-- -----------------------------------------------------
-- Data for table `episerp`.`en_p3m_cuenta`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000001, NULL, NULL, NULL, 1, '1', 'Activo Disponible y Exigible', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000002, NULL, NULL, NULL, 1, '2', 'Activo Realizable', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000003, NULL, NULL, NULL, 1, '3', 'Activo Inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000004, NULL, NULL, NULL, 1, '4', 'Pasivo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000005, NULL, NULL, NULL, 1, '5', 'Patrimonio Neto', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000006, NULL, NULL, NULL, 1, '6', 'Gastos por Naturaleza', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000007, NULL, NULL, NULL, 1, '7', 'Ingresos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000008, NULL, NULL, NULL, 1, '8', 'Saldos Intermediarios de gestión y determinación del resultado del ejercicio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000009, NULL, NULL, NULL, 1, '9', 'Costos de producción y gastos por función', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000010, NULL, NULL, NULL, 1, '0', 'Cuentas de orden', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000011, 0000000001, NULL, NULL, 2, '10', 'Efectivo y Equivalentes de Efectivo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000012, 0000000001, NULL, NULL, 2, '11', 'Inversiones Financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000013, 0000000001, NULL, NULL, 2, '12', 'Cuentas por Cobrar comerciales - Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000014, 0000000001, NULL, NULL, 2, '13', 'Cuentas por Cobrar comerciales - Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000015, 0000000001, NULL, NULL, 2, '14', 'Cuentas por Cobrar al Personal, a los Accionistas (Socios), Directores y Gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000016, 0000000001, NULL, NULL, 2, '16', 'Cuentas por Cobrar diversas - Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000017, 0000000001, NULL, NULL, 2, '17', 'Cuentas por Cobrar diversas - Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000018, 0000000001, NULL, NULL, 2, '18', 'Servicios y otros contratados por anticipado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000019, 0000000001, NULL, NULL, 2, '19', 'Estimación de cuentas de cobranza dudosa', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000020, 0000000002, NULL, NULL, 2, '20', 'Mercaderias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000021, 0000000002, NULL, NULL, 2, '21', 'Productos Terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000022, 0000000002, NULL, NULL, 2, '22', 'Subproductos, desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000023, 0000000002, NULL, NULL, 2, '23', 'Productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000024, 0000000002, NULL, NULL, 2, '24', 'Materias primas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000025, 0000000002, NULL, NULL, 2, '25', 'Materiales auxiliares, suministros y repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000026, 0000000002, NULL, NULL, 2, '26', 'Envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000027, 0000000002, NULL, NULL, 2, '27', 'Activos no corrientes mantenidos para la venta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000028, 0000000002, NULL, NULL, 2, '28', 'Existencias por recibir', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000029, 0000000002, NULL, NULL, 2, '29', 'Desvalorización de existencias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000030, 0000000003, NULL, NULL, 2, '30', 'Inversiones mobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000031, 0000000003, NULL, NULL, 2, '31', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000032, 0000000003, NULL, NULL, 2, '32', 'Activos adquiridos en arrendamiento financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000033, 0000000003, NULL, NULL, 2, '33', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000034, 0000000003, NULL, NULL, 2, '34', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000035, 0000000003, NULL, NULL, 2, '35', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000036, 0000000003, NULL, NULL, 2, '36', 'Desvalorización de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000037, 0000000003, NULL, NULL, 2, '37', 'Activo diferido', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000038, 0000000003, NULL, NULL, 2, '38', 'Otros activos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000039, 0000000003, NULL, NULL, 2, '39', 'Depreciación, amortización y agotamiento acumulados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000040, 0000000004, NULL, NULL, 2, '40', 'Tributos y aportes al sistema de pensiones y de salud por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000041, 0000000004, NULL, NULL, 2, '41', 'Remuneraciones y participaciones por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000042, 0000000004, NULL, NULL, 2, '42', 'Cuentas por Pagar comerciales - Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000043, 0000000004, NULL, NULL, 2, '43', 'Cuentas por Pagar comerciales - Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000044, 0000000004, NULL, NULL, 2, '44', 'Cuentas por pagar a los accionistas, directores y gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000045, 0000000004, NULL, NULL, 2, '45', 'Obligaciones financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000046, 0000000004, NULL, NULL, 2, '46', 'Cuentas por Pagar diversas - Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000047, 0000000004, NULL, NULL, 2, '47', 'Cuentas por Pagar diversas - Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000048, 0000000004, NULL, NULL, 2, '48', 'Provisiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000049, 0000000004, NULL, NULL, 2, '49', 'Pasivo diferido', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000050, 0000000005, NULL, NULL, 2, '50', 'Capital', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000051, 0000000005, NULL, NULL, 2, '51', 'Acciones de inversión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000052, 0000000005, NULL, NULL, 2, '52', 'Capital adicional', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000053, 0000000005, NULL, NULL, 2, '56', 'Resultados no realizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000054, 0000000005, NULL, NULL, 2, '57', 'Excedente de revaluación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000055, 0000000005, NULL, NULL, 2, '58', 'Reservas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000056, 0000000005, NULL, NULL, 2, '59', 'Resultados acumulados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000057, 0000000006, NULL, NULL, 2, '60', 'Compras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000058, 0000000006, NULL, NULL, 2, '61', 'Variación de existencias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000059, 0000000006, NULL, NULL, 2, '62', 'Gastos de personal, directores y gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000060, 0000000006, NULL, NULL, 2, '63', 'Gastos por servicios prestados por terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000061, 0000000006, NULL, NULL, 2, '64', 'Gastos por tributos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000062, 0000000006, NULL, NULL, 2, '65', 'Otros gastos de gestión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000063, 0000000006, NULL, NULL, 2, '66', 'Pérdida por medición de activos no financieros al valor razonble', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000064, 0000000006, NULL, NULL, 2, '67', 'Gastos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000065, 0000000006, NULL, NULL, 2, '68', 'Valuación y deterioro de activos y provisiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000066, 0000000006, NULL, NULL, 2, '69', 'Costo de ventas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000067, 0000000007, NULL, NULL, 2, '70', 'Ventas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000068, 0000000007, NULL, NULL, 2, '71', 'Variación de la producción almacenada', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000069, 0000000007, NULL, NULL, 2, '72', 'Producción de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000070, 0000000007, NULL, NULL, 2, '73', 'Descuentos, rebajas y bonificaciones obtenidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000071, 0000000007, NULL, NULL, 2, '74', 'Descuentos, rebajas y bonificiones concedidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000072, 0000000007, NULL, NULL, 2, '75', 'Otros ingresos de gestión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000073, 0000000007, NULL, NULL, 2, '76', 'Ganancia por medición de activos no financieros al valor no razonble', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000074, 0000000007, NULL, NULL, 2, '77', 'Ingresos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000075, 0000000007, NULL, NULL, 2, '78', 'Cargas cubiertos por provisiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000076, 0000000007, NULL, NULL, 2, '79', 'Cargas imputables a cuentas de costos y gastos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000077, 0000000008, NULL, NULL, 2, '80', 'Margen comercial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000078, 0000000008, NULL, NULL, 2, '81', 'Producción del ejercicio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000079, 0000000008, NULL, NULL, 2, '82', 'Valor agregado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000080, 0000000008, NULL, NULL, 2, '83', 'Excedente bruto (insuficiencia bruta) de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000081, 0000000008, NULL, NULL, 2, '84', 'Resultado de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000082, 0000000008, NULL, NULL, 2, '85', 'Resultado antes de participaciones e impuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000083, 0000000008, NULL, NULL, 2, '87', 'Participaciones de los trabajadores', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000084, 0000000008, NULL, NULL, 2, '88', 'Impuesto a la renta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000085, 0000000008, NULL, NULL, 2, '89', 'Determinación del resultado del ejercicio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000086, 0000000010, NULL, NULL, 2, '01', 'Bienes y valores entregados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000087, 0000000010, NULL, NULL, 2, '02', 'Derechos sobre instrumentos financieros derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000088, 0000000010, NULL, NULL, 2, '03', 'Otras cuentas de orden deudoras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000089, 0000000010, NULL, NULL, 2, '04', 'Deudores por contra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000090, 0000000010, NULL, NULL, 2, '06', 'Bienes y valores recibidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000091, 0000000010, NULL, NULL, 2, '07', 'Compromisos sobre instrumentos financieros derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000092, 0000000010, NULL, NULL, 2, '08', 'Otras cuentas de orden acreedoras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000093, 0000000010, NULL, NULL, 2, '09', 'Acreedoras por contra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000094, 0000000011, NULL, NULL, 3, '101', 'Caja', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000095, 0000000011, NULL, NULL, 3, '102', 'Fondos Fijos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000096, 0000000011, NULL, NULL, 3, '103', 'Efectivo en tránsito', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000097, 0000000011, NULL, NULL, 3, '104', 'Cuentas corrientes en instituciones financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000098, 0000000011, NULL, NULL, 3, '105', 'Otros equivalentes de efectivo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000099, 0000000011, NULL, NULL, 3, '106', 'Depósitos en instituciones financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000100, 0000000011, NULL, NULL, 3, '107', 'Fondos sujetos a restricción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000101, 0000000012, NULL, NULL, 3, '111', 'Inversiones mantenidas para negociación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000102, 0000000012, NULL, NULL, 3, '112', 'Inversiones disponibles para la venta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000103, 0000000012, NULL, NULL, 3, '113', 'Activos financieros - Acuerdo de compra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000104, 0000000013, NULL, NULL, 3, '121', 'Facturas, boletas y otros comprobantes por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000105, 0000000013, NULL, NULL, 3, '122', 'Anticipos de clientes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000106, 0000000013, NULL, NULL, 3, '123', 'Letras por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000107, 0000000014, NULL, NULL, 3, '131', 'Facturas, boletas y otros comprobantes por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000108, 0000000014, NULL, NULL, 3, '132', 'Anticipos recibidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000109, 0000000014, NULL, NULL, 3, '133', 'Letras por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000110, 0000000015, NULL, NULL, 3, '141', 'Personal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000111, 0000000015, NULL, NULL, 3, '142', 'Accionistas (o socios)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000112, 0000000015, NULL, NULL, 3, '143', 'Directores', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000113, 0000000015, NULL, NULL, 3, '144', 'Gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000114, 0000000015, NULL, NULL, 3, '148', 'Diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000115, 0000000016, NULL, NULL, 3, '161', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000116, 0000000016, NULL, NULL, 3, '162', 'Reclamaciones a terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000117, 0000000016, NULL, NULL, 3, '163', 'Intereses, regalías y dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000118, 0000000016, NULL, NULL, 3, '164', 'Depósitos otorgados en garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000119, 0000000016, NULL, NULL, 3, '165', 'Venta de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000120, 0000000016, NULL, NULL, 3, '166', 'Activos por instrumentos financieros derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000121, 0000000016, NULL, NULL, 3, '168', 'Otras cuentas por cobrar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000122, 0000000017, NULL, NULL, 3, '171', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000123, 0000000017, NULL, NULL, 3, '173', 'Intereses, regalías y dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000124, 0000000017, NULL, NULL, 3, '174', 'Depósitos otorgados en garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000125, 0000000017, NULL, NULL, 3, '175', 'Venta de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000126, 0000000017, NULL, NULL, 3, '176', 'Activos por instrumentos financieros derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000127, 0000000017, NULL, NULL, 3, '178', 'Otras cuentas por cobrar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000128, 0000000018, NULL, NULL, 3, '181', 'Costos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000129, 0000000018, NULL, NULL, 3, '182', 'Seguros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000130, 0000000018, NULL, NULL, 3, '183', 'Alquileres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000131, 0000000018, NULL, NULL, 3, '184', 'Primas pagadas por opciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000132, 0000000018, NULL, NULL, 3, '185', 'Mantenimiento de activos inmovilizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000133, 0000000018, NULL, NULL, 3, '189', 'Otros gastos contratados por anticipado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000134, 0000000019, NULL, NULL, 3, '191', 'Cuentas por cobrar comerciales - Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000135, 0000000019, NULL, NULL, 3, '192', 'Cuentas por cobrar comerciales - Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000136, 0000000019, NULL, NULL, 3, '193', 'Cuentas por cobrar al personal, a los accionistas (socios), directores y gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000137, 0000000019, NULL, NULL, 3, '194', 'Cuentas por cobrar diversas - Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000138, 0000000019, NULL, NULL, 3, '195', 'Cuentas por cobrar diversas - Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000139, 0000000020, NULL, NULL, 3, '201', 'Mercaderías manufacturadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000140, 0000000020, NULL, NULL, 3, '202', 'Mercaderías de extracción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000141, 0000000020, NULL, NULL, 3, '203', 'Mercaderías agropecuarias y piscícolas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000142, 0000000020, NULL, NULL, 3, '204', 'Mercaderías inmuebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000143, 0000000020, NULL, NULL, 3, '208', 'Otras mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000144, 0000000021, NULL, NULL, 3, '211', 'Productos  manufacturados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000145, 0000000021, NULL, NULL, 3, '212', 'Productos de extracción terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000146, 0000000021, NULL, NULL, 3, '213', 'Productos agropecuarios y piscícolas terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000147, 0000000021, NULL, NULL, 3, '214', 'Productos inmuebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000148, 0000000021, NULL, NULL, 3, '215', 'Existencias de servicios terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000149, 0000000021, NULL, NULL, 3, '217', 'Otros productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000150, 0000000021, NULL, NULL, 3, '218', 'Costos de financiación - Productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000151, 0000000022, NULL, NULL, 3, '221', 'Subproductos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000152, 0000000022, NULL, NULL, 3, '222', 'Desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000153, 0000000023, NULL, NULL, 3, '231', 'Productos en proceso de manufactura', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000154, 0000000023, NULL, NULL, 3, '232', 'Productos extraídos en proceso de transformación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000155, 0000000023, NULL, NULL, 3, '233', 'Productos agropecuarios de piscícolas en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000156, 0000000023, NULL, NULL, 3, '234', 'Productos inmuebles en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000157, 0000000023, NULL, NULL, 3, '235', 'Existencias de servicios en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000158, 0000000023, NULL, NULL, 3, '237', 'Otros productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000159, 0000000023, NULL, NULL, 3, '238', 'Costos de financiación - Productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000160, 0000000024, NULL, NULL, 3, '241', 'Materias primas para productos manufacturados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000161, 0000000024, NULL, NULL, 3, '242', 'Materias primas para productos de extracción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000162, 0000000024, NULL, NULL, 3, '243', 'Materias primas para productos agropecuarios y piscícolas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000163, 0000000024, NULL, NULL, 3, '244', 'Materias primas para productos inmuebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000164, 0000000025, NULL, NULL, 3, '251', 'Materiales auxiliares', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000165, 0000000025, NULL, NULL, 3, '252', 'Suministros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000166, 0000000025, NULL, NULL, 3, '253', 'Repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000167, 0000000026, NULL, NULL, 3, '261', 'Envases', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000168, 0000000026, NULL, NULL, 3, '262', 'Embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000169, 0000000027, NULL, NULL, 3, '271', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000170, 0000000027, NULL, NULL, 3, '272', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000171, 0000000027, NULL, NULL, 3, '273', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000172, 0000000027, NULL, NULL, 3, '274', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000173, 0000000027, NULL, NULL, 3, '275', 'Depreciación acumulada - Inversión inmobiliaria', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000174, 0000000027, NULL, NULL, 3, '276', 'Depreciación acumulada - Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000175, 0000000027, NULL, NULL, 3, '277', 'Amortización acumulada - Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000176, 0000000027, NULL, NULL, 3, '278', 'Depreciación acumulada - Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000177, 0000000027, NULL, NULL, 3, '279', 'Desvalorización acumulada', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000178, 0000000028, NULL, NULL, 3, '281', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000179, 0000000028, NULL, NULL, 3, '284', 'Materias primas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000180, 0000000028, NULL, NULL, 3, '285', 'Materiales auxiliares, suministros y repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000181, 0000000028, NULL, NULL, 3, '286', 'Envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000182, 0000000029, NULL, NULL, 3, '291', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000183, 0000000029, NULL, NULL, 3, '292', 'Productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000184, 0000000029, NULL, NULL, 3, '293', 'Subproductos, desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000185, 0000000029, NULL, NULL, 3, '294', 'Productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000186, 0000000029, NULL, NULL, 3, '295', 'Materias primas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000187, 0000000029, NULL, NULL, 3, '296', 'Materiales auxiliares, suministros y repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000188, 0000000029, NULL, NULL, 3, '297', 'Envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000189, 0000000029, NULL, NULL, 3, '298', 'Existencias por recibir', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000190, 0000000030, NULL, NULL, 3, '301', 'Inversiones a ser mantenidas hasta el vencimiento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000191, 0000000030, NULL, NULL, 3, '302', 'Instrumentos financieros representativos de derecho patrimonial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000192, 0000000030, NULL, NULL, 3, '308', 'Inversiones mobiliarias - Acuerdos de compra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000193, 0000000031, NULL, NULL, 3, '311', 'Terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000194, 0000000031, NULL, NULL, 3, '312', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000195, 0000000032, NULL, NULL, 3, '321', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000196, 0000000032, NULL, NULL, 3, '322', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000197, 0000000033, NULL, NULL, 3, '331', 'Terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000198, 0000000033, NULL, NULL, 3, '332', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000199, 0000000033, NULL, NULL, 3, '333', 'Maquinarias y equipos de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000200, 0000000033, NULL, NULL, 3, '334', 'Unidades de transporte', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000201, 0000000033, NULL, NULL, 3, '335', 'Muebles y enseres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000202, 0000000033, NULL, NULL, 3, '336', 'Equipos diversos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000203, 0000000033, NULL, NULL, 3, '337', 'Herramientas y unidades de reemplazo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000204, 0000000033, NULL, NULL, 3, '338', 'Unidades por recibir', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000205, 0000000033, NULL, NULL, 3, '339', 'Construcciones y obras en curso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000206, 0000000034, NULL, NULL, 3, '341', 'Concesiones, licencias y otros derechos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000207, 0000000034, NULL, NULL, 3, '342', 'Patentes y propiedad industrial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000208, 0000000034, NULL, NULL, 3, '343', 'Programas de computadora (software)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000209, 0000000034, NULL, NULL, 3, '344', 'Costos de exploración y desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000210, 0000000034, NULL, NULL, 3, '345', 'Fórmulas, diseños y prototipos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000211, 0000000034, NULL, NULL, 3, '346', 'Reservas de recursos extraibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000212, 0000000034, NULL, NULL, 3, '347', 'Plusvalía mercantil', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000213, 0000000034, NULL, NULL, 3, '349', 'Otros activos intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000214, 0000000035, NULL, NULL, 3, '351', 'Activos biológicos en producción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000215, 0000000035, NULL, NULL, 3, '352', 'Activos biológicos en desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000216, 0000000036, NULL, NULL, 3, '361', 'Desvalorización de inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000217, 0000000036, NULL, NULL, 3, '363', 'Desvalorización de inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000218, 0000000036, NULL, NULL, 3, '364', 'Desvalorización de intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000219, 0000000036, NULL, NULL, 3, '365', 'Desvalorización de activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000220, 0000000036, NULL, NULL, 3, '366', 'Desvalorización de inversiones mobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000221, 0000000037, NULL, NULL, 3, '371', 'Impuesto a la renta diferido', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000222, 0000000037, NULL, NULL, 3, '372', 'Participaciones de los trabajadores diferidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000223, 0000000037, NULL, NULL, 3, '373', 'Intereses diferidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000224, 0000000038, NULL, NULL, 3, '381', 'Bienes de arte y cultura', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000225, 0000000038, NULL, NULL, 3, '382', 'Diversos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000226, 0000000039, NULL, NULL, 3, '391', 'Depreciación acumulada', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000227, 0000000039, NULL, NULL, 3, '392', 'Amortización acumulada', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000228, 0000000039, NULL, NULL, 3, '393', 'Agotamiento acumulado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000229, 0000000040, NULL, NULL, 3, '401', 'Gobierno central', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000230, 0000000040, NULL, NULL, 3, '402', 'Certificados tributarios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000231, 0000000040, NULL, NULL, 3, '403', 'Instituciones públicas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000232, 0000000040, NULL, NULL, 3, '405', 'Gobiernos regionales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000233, 0000000040, NULL, NULL, 3, '406', 'Gobiernos locales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000234, 0000000040, NULL, NULL, 3, '407', 'Administradoras de fondos de pensiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000235, 0000000040, NULL, NULL, 3, '408', 'Empresas prestadoras de servicios de salud', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000236, 0000000040, NULL, NULL, 3, '409', 'Otros costos administrativos e intereses', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000237, 0000000041, NULL, NULL, 3, '411', 'Remuneraciones por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000238, 0000000041, NULL, NULL, 3, '413', 'Participación de los trabajadores por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000239, 0000000041, NULL, NULL, 3, '415', 'Beneficios sociales de los trabajadores por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000240, 0000000041, NULL, NULL, 3, '419', 'Otras remuneraciones y participaciones por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000241, 0000000042, NULL, NULL, 3, '421', 'Facturas, boletas y otros comprobantes por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000242, 0000000042, NULL, NULL, 3, '422', 'Anticipos a proveedores', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000243, 0000000042, NULL, NULL, 3, '423', 'Letras por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000244, 0000000042, NULL, NULL, 3, '424', 'Honorarios por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000245, 0000000043, NULL, NULL, 3, '431', 'Facturas, boletas y otros comprobantes por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000246, 0000000043, NULL, NULL, 3, '432', 'Anticipos otorgados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000247, 0000000043, NULL, NULL, 3, '433', 'Letras por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000248, 0000000043, NULL, NULL, 3, '434', 'Honorarios por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000249, 0000000044, NULL, NULL, 3, '441', 'Accionistas (o socios)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000250, 0000000044, NULL, NULL, 3, '442', 'Directores', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000251, 0000000044, NULL, NULL, 3, '443', 'Gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000252, 0000000045, NULL, NULL, 3, '451', 'Préstamos de instituciones financieras y otras entidades', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000253, 0000000045, NULL, NULL, 3, '452', 'Contratos de arrendamiento financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000254, 0000000045, NULL, NULL, 3, '453', 'Obligaciones emitidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000255, 0000000045, NULL, NULL, 3, '454', 'Otros instrumentos financieros por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000256, 0000000045, NULL, NULL, 3, '455', 'Costos de financiación por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000257, 0000000045, NULL, NULL, 3, '456', 'Préstamos con compromisos de recompra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000258, 0000000046, NULL, NULL, 3, '461', 'Reclamaciones de terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000259, 0000000046, NULL, NULL, 3, '464', 'Pasivos por instrumentos financieros derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000260, 0000000046, NULL, NULL, 3, '465', 'Pasivos por compra de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000261, 0000000046, NULL, NULL, 3, '467', 'Dépositos recibidos en garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000262, 0000000046, NULL, NULL, 3, '469', 'Otras cuentas por pagar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000263, 0000000047, NULL, NULL, 3, '471', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000264, 0000000047, NULL, NULL, 3, '472', 'Costos de financiación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000265, 0000000047, NULL, NULL, 3, '473', 'Anticipos recibidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000266, 0000000047, NULL, NULL, 3, '474', 'Regalías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000267, 0000000047, NULL, NULL, 3, '475', 'Dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000268, 0000000047, NULL, NULL, 3, '477', 'Pasivo por compra de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000269, 0000000047, NULL, NULL, 3, '479', 'Otras cuentas por pagar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000270, 0000000048, NULL, NULL, 3, '481', 'Provisión para litigios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000271, 0000000048, NULL, NULL, 3, '482', 'Provisión por desmantelamiento, retiro o rehabilitación del inmovilzado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000272, 0000000048, NULL, NULL, 3, '483', 'Provisión para reestructuraciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000273, 0000000048, NULL, NULL, 3, '484', 'Provisión para protección y remediación del medio ambiente', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000274, 0000000048, NULL, NULL, 3, '485', 'Provisión para gastos de responsabilidad social', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000275, 0000000048, NULL, NULL, 3, '486', 'Provisión para garantías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000276, 0000000048, NULL, NULL, 3, '489', 'Otras provisiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000277, 0000000049, NULL, NULL, 3, '491', 'Impuesto a la renta diferido', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000278, 0000000049, NULL, NULL, 3, '492', 'Participaciones de los trabajadores diferidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000279, 0000000049, NULL, NULL, 3, '493', 'Intereses diferidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000280, 0000000049, NULL, NULL, 3, '494', 'Ganancia en venta con arrendamiento financiero paralelo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000281, 0000000049, NULL, NULL, 3, '495', 'Subsidios recibidos diferidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000282, 0000000049, NULL, NULL, 3, '496', 'Ingresos diferidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000283, 0000000049, NULL, NULL, 3, '497', 'Costos diferidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000284, 0000000050, NULL, NULL, 3, '501', 'Capital social', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000285, 0000000050, NULL, NULL, 3, '502', 'Acciones en tesorería', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000286, 0000000051, NULL, NULL, 3, '511', 'Acciones de inversión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000287, 0000000051, NULL, NULL, 3, '512', 'Acciones de inversión en tesorería', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000288, 0000000052, NULL, NULL, 3, '521', 'Primas (descuento) de acciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000289, 0000000052, NULL, NULL, 3, '522', 'Capitalizaciones en trámite', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000290, 0000000052, NULL, NULL, 3, '523', 'Reducciones de capital pendientes de formalización', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000291, 0000000053, NULL, NULL, 3, '561', 'Diferencia en cambio de inversiones permanentes en entidades extranjeras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000292, 0000000053, NULL, NULL, 3, '562', 'Instrumentos financieros - Cobertura de flujo de efectivo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000293, 0000000053, NULL, NULL, 3, '563', 'Ganancia o pérdida en activos o pasivos financieros disponibles para la venta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000294, 0000000053, NULL, NULL, 3, '564', 'Ganancia o pérdida en activos o pasivos financieros disponibles para la venta - Compra o venta convencional fecha de liquidación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000295, 0000000054, NULL, NULL, 3, '571', 'Excedente de revaluación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000296, 0000000054, NULL, NULL, 3, '572', 'Excedente de revaluación - Acciones liberadas recibidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000297, 0000000054, NULL, NULL, 3, '573', 'Participación en excedente de revaluación - Inversiones en entidades relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000298, 0000000055, NULL, NULL, 3, '581', 'Reinversión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000299, 0000000055, NULL, NULL, 3, '582', 'Legal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000300, 0000000055, NULL, NULL, 3, '583', 'Contractuales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000301, 0000000055, NULL, NULL, 3, '584', 'Estatutarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000302, 0000000055, NULL, NULL, 3, '585', 'Facultativas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000303, 0000000055, NULL, NULL, 3, '589', 'Otras reservas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000304, 0000000056, NULL, NULL, 3, '591', 'Utilidades no distribuidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000305, 0000000056, NULL, NULL, 3, '592', 'Pérdidas acumuladas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000306, 0000000057, NULL, NULL, 3, '601', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000307, 0000000057, NULL, NULL, 3, '602', 'Materias primas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000308, 0000000057, NULL, NULL, 3, '603', 'Materiales auxiliares, suministros y repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000309, 0000000057, NULL, NULL, 3, '604', 'Envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000310, 0000000057, NULL, NULL, 3, '609', 'Costos vinculados con las compras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000311, 0000000058, NULL, NULL, 3, '611', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000312, 0000000058, NULL, NULL, 3, '612', 'Materias primas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000313, 0000000058, NULL, NULL, 3, '613', 'Materiales auxiliares, suministros y repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000314, 0000000058, NULL, NULL, 3, '614', 'Envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000315, 0000000059, NULL, NULL, 3, '621', 'Remuneraciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000321, 0000000059, NULL, NULL, 3, '627', 'Seguridad, previsión social y otras contribuciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000323, 0000000059, NULL, NULL, 3, '629', 'Beneficios sociales de los trabajadores', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000324, 0000000060, NULL, NULL, 3, '631', 'Transporte, correos y gastos de viaje', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000325, 0000000060, NULL, NULL, 3, '632', 'Asesoría y consultoría', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000326, 0000000060, NULL, NULL, 3, '633', 'Producción encargada a terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000327, 0000000060, NULL, NULL, 3, '634', 'Mantenimiento y reparaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000328, 0000000060, NULL, NULL, 3, '635', 'Alquileres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000329, 0000000060, NULL, NULL, 3, '636', 'Servicios básicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000330, 0000000060, NULL, NULL, 3, '637', 'Publicidad, publicaciones, relaciones públicas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000331, 0000000060, NULL, NULL, 3, '638', 'Servicios de contratistas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000332, 0000000060, NULL, NULL, 3, '639', 'Otros servicios prestados por terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000333, 0000000061, NULL, NULL, 3, '641', 'Gobierno central', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000334, 0000000061, NULL, NULL, 3, '642', 'Gobierno regional', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000335, 0000000061, NULL, NULL, 3, '643', 'Gobierno local', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000336, 0000000061, NULL, NULL, 3, '644', 'Otros gastos por tributos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000337, 0000000062, NULL, NULL, 3, '651', 'Seguros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000338, 0000000062, NULL, NULL, 3, '652', 'Regalías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000339, 0000000062, NULL, NULL, 3, '653', 'Suscipciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000340, 0000000062, NULL, NULL, 3, '654', 'Licencias y derechos de vigencia', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000341, 0000000062, NULL, NULL, 3, '655', 'Costo neto de enajenación de activos inmovilizados y operaciones discontinuadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000342, 0000000062, NULL, NULL, 3, '656', 'Suministros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000343, 0000000062, NULL, NULL, 3, '658', 'Gestión medio ambiental', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000344, 0000000062, NULL, NULL, 3, '659', 'Otros gastos de gestión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000345, 0000000063, NULL, NULL, 3, '661', 'Activo realizable', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000346, 0000000063, NULL, NULL, 3, '662', 'Activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000347, 0000000064, NULL, NULL, 3, '671', 'Gastos en operaciones de endeudamiento y otros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000348, 0000000064, NULL, NULL, 3, '672', 'Pérdida por instrumentos financieros derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000349, 0000000064, NULL, NULL, 3, '673', 'Intereses por préstamos y otras obligaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000350, 0000000064, NULL, NULL, 3, '674', 'Gastos en operaciones de factoraje (factoring)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000351, 0000000064, NULL, NULL, 3, '675', 'Descuentos concedidos por pronto pago', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000352, 0000000064, NULL, NULL, 3, '676', 'Diferencia de cambio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000353, 0000000064, NULL, NULL, 3, '677', 'Pérdida por medición de activos y pasivos financieros al valor razonable', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000354, 0000000064, NULL, NULL, 3, '678', 'Participación en resultados de entidades relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000355, 0000000064, NULL, NULL, 3, '679', 'Otros gastos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000356, 0000000065, NULL, NULL, 3, '681', 'Depreciación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000357, 0000000065, NULL, NULL, 3, '682', 'Amortización de intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000358, 0000000065, NULL, NULL, 3, '683', 'Agotamiento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000359, 0000000065, NULL, NULL, 3, '684', 'Valuación de activos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000360, 0000000065, NULL, NULL, 3, '685', 'Deterioro del valor de los activos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000361, 0000000065, NULL, NULL, 3, '686', 'Provisiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000362, 0000000066, NULL, NULL, 3, '691', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000363, 0000000066, NULL, NULL, 3, '692', 'Productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000364, 0000000066, NULL, NULL, 3, '693', 'Subproductos, desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000365, 0000000066, NULL, NULL, 3, '694', 'Servicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000366, 0000000066, NULL, NULL, 3, '695', 'Gastos por desvalorización de existencias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000367, 0000000067, NULL, NULL, 3, '701', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000368, 0000000067, NULL, NULL, 3, '702', 'Productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000369, 0000000067, NULL, NULL, 3, '703', 'Subproductos, desechos  y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000370, 0000000067, NULL, NULL, 3, '704', 'Prestación de servicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000371, 0000000067, NULL, NULL, 3, '709', 'Devoluciones sobre ventas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000372, 0000000068, NULL, NULL, 3, '711', 'Variación de productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000373, 0000000068, NULL, NULL, 3, '712', 'Variación de subproductos, desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000374, 0000000068, NULL, NULL, 3, '713', 'Variación de productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000375, 0000000068, NULL, NULL, 3, '714', 'Variación de envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000376, 0000000068, NULL, NULL, 3, '715', 'Variación de existencias de servicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000377, 0000000069, NULL, NULL, 3, '721', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000378, 0000000069, NULL, NULL, 3, '722', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000379, 0000000069, NULL, NULL, 3, '723', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000380, 0000000069, NULL, NULL, 3, '724', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000381, 0000000069, NULL, NULL, 3, '725', 'Costos de financiación capitalizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000382, 0000000070, NULL, NULL, 3, '731', 'Descuentos, rebajas y bonificaciones obtenidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000383, 0000000071, NULL, NULL, 3, '741', 'Descuentos, rebajas y bonificaciones concedidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000384, 0000000072, NULL, NULL, 3, '751', 'Servicios en beneficio personal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000385, 0000000072, NULL, NULL, 3, '752', 'Comisiones y corretajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000386, 0000000072, NULL, NULL, 3, '753', 'Regalías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000387, 0000000072, NULL, NULL, 3, '754', 'Alquileres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000388, 0000000072, NULL, NULL, 3, '755', 'Recuperación de cuentas de valuación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000389, 0000000072, NULL, NULL, 3, '756', 'Enajenación de activos inmovilizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000390, 0000000072, NULL, NULL, 3, '757', 'Recuperación de deterioro de cuentas de activos inmovilizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000391, 0000000072, NULL, NULL, 3, '759', 'Otros ingresos de gestión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000392, 0000000073, NULL, NULL, 3, '761', 'Activo realizable', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000393, 0000000073, NULL, NULL, 3, '762', 'Activo inmobilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000394, 0000000074, NULL, NULL, 3, '771', 'Ganancia por instrumento financiero derivado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000395, 0000000074, NULL, NULL, 3, '772', 'Rendimientos ganados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000396, 0000000074, NULL, NULL, 3, '773', 'Dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000397, 0000000074, NULL, NULL, 3, '774', 'Ingresos en operaciones de factoraje (factoring)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000398, 0000000074, NULL, NULL, 3, '775', 'Descuentos obtenidos por pronto pago', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000399, 0000000074, NULL, NULL, 3, '776', 'Diferencia en cambio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000400, 0000000074, NULL, NULL, 3, '777', 'Ganancia por medición de activos y pasivos financieros al valor razonable', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000401, 0000000074, NULL, NULL, 3, '778', 'Participación en resultados de entidades relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000402, 0000000074, NULL, NULL, 3, '779', 'Otros ingresos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000403, 0000000075, NULL, NULL, 3, '781', 'Cargas cubiertas por provisiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000404, 0000000076, NULL, NULL, 3, '791', 'Cargas imputables a cuentas de costos y gastos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000405, 0000000076, NULL, NULL, 3, '792', 'Gastos financieros imputables a cuentas de existencias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000406, 0000000077, NULL, NULL, 3, '801', 'Margen comercial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000407, 0000000078, NULL, NULL, 3, '811', 'Producción de bienes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000408, 0000000078, NULL, NULL, 3, '812', 'Producción de servicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000409, 0000000078, NULL, NULL, 3, '813', 'Producción de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000410, 0000000079, NULL, NULL, 3, '821', 'Valor agregado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000411, 0000000080, NULL, NULL, 3, '831', 'Excedente bruto (insuficiencia bruta) de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000412, 0000000081, NULL, NULL, 3, '841', 'Resultado de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000413, 0000000082, NULL, NULL, 3, '851', 'Resultado antes de participaciones e impuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000414, 0000000083, NULL, NULL, 3, '871', 'Participación de los trabajadores - Corriente', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000415, 0000000083, NULL, NULL, 3, '872', 'Participación de los trabajadores - Diferida', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000416, 0000000084, NULL, NULL, 3, '881', 'Impuesto a la renta - Corriente', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000417, 0000000084, NULL, NULL, 3, '882', 'Impuesto a la renta - Diferido', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000418, 0000000085, NULL, NULL, 3, '891', 'Utilidad', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000419, 0000000085, NULL, NULL, 3, '892', 'Pérdida', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000420, 0000000086, NULL, NULL, 3, '011', 'Bienes en préstamo, custodia y no capitalizables', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000421, 0000000086, NULL, NULL, 3, '012', 'Valores y bienes entregados en garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000422, 0000000086, NULL, NULL, 3, '013', 'Activos realizables entregados en consignación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000423, 0000000087, NULL, NULL, 3, '021', 'Primarios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000424, 0000000087, NULL, NULL, 3, '022', 'Derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000425, 0000000088, NULL, NULL, 3, '031', 'Contratos aprobados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000426, 0000000088, NULL, NULL, 3, '032', 'Bienes dados de baja', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000427, 0000000088, NULL, NULL, 3, '039', 'Diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000428, 0000000089, NULL, NULL, 3, '061', 'Bienes recibidos en préstamo y custodia', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000429, 0000000089, NULL, NULL, 3, '062', 'Valores y bienes recibidos con garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000430, 0000000089, NULL, NULL, 3, '063', 'Activos realizables recibidos en consignación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000431, 0000000090, NULL, NULL, 3, '071', 'Primarios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000432, 0000000090, NULL, NULL, 3, '072', 'Derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000433, 0000000091, NULL, NULL, 3, '089', 'Diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000434, 0000000097, NULL, NULL, 4, '1041', 'Cuentas corrientes operativas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000435, 0000000097, NULL, NULL, 4, '1042', 'Cuentas corrientes para fines específicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000436, 0000000098, NULL, NULL, 4, '1051', 'Otros equivalentes de efectivo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000437, 0000000099, NULL, NULL, 4, '1061', 'Depósitos de ahorro', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000438, 0000000099, NULL, NULL, 4, '1062', 'Depósitos a plazo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000439, 0000000100, NULL, NULL, 4, '1071', 'Fondos Sujetos a Restricción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000440, 0000000101, NULL, NULL, 4, '1111', 'Valores emitidos o garantizados por el estado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000441, 0000000101, NULL, NULL, 4, '1112', 'Valores emitidos por el sistema financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000442, 0000000101, NULL, NULL, 4, '1113', 'Valores emitidos por empresa', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000443, 0000000101, NULL, NULL, 4, '1114', 'Otros títulos representativos de deuda', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000444, 0000000101, NULL, NULL, 4, '1115', 'Participaciones en entidades', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000445, 0000000102, NULL, NULL, 4, '1121', 'Valores emitidos o garantizados por el estado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000446, 0000000102, NULL, NULL, 4, '1122', 'Valores emitidos por el sistema financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000447, 0000000102, NULL, NULL, 4, '1123', 'Valores emitidos por empresas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000448, 0000000102, NULL, NULL, 4, '1124', 'Otros títulos representativos de deuda', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000449, 0000000103, NULL, NULL, 4, '1131', 'Inversiones mantenidas para negociación - Acuerdo de compra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000450, 0000000103, NULL, NULL, 4, '1132', 'Inversiones disponibles para la venta - Acuerdo de compra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000451, 0000000104, NULL, NULL, 4, '1211', 'No emitidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000452, 0000000104, NULL, NULL, 4, '1212', 'Emitidas en cartera', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000453, 0000000104, NULL, NULL, 4, '1213', 'En cobranza', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000454, 0000000104, NULL, NULL, 4, '1214', 'En descuento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000455, 0000000106, NULL, NULL, 4, '1231', 'En cartera', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000456, 0000000106, NULL, NULL, 4, '1232', 'En cobranza', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000457, 0000000106, NULL, NULL, 4, '1233', 'En descuento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000458, 0000000107, NULL, NULL, 4, '1311', 'No emitidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000459, 0000000107, NULL, NULL, 4, '1312', 'Emitidas en cartera', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000460, 0000000107, NULL, NULL, 4, '1313', 'En cobranza', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000461, 0000000107, NULL, NULL, 4, '1314', 'En descuento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000462, 0000000108, NULL, NULL, 4, '1321', 'Anticipos recibidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000463, 0000000109, NULL, NULL, 4, '1331', 'En cartera', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000464, 0000000109, NULL, NULL, 4, '1332', 'En cobranza', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000465, 0000000109, NULL, NULL, 4, '1333', 'En descuento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000466, 0000000110, NULL, NULL, 4, '1411', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000467, 0000000110, NULL, NULL, 4, '1412', 'Adelanto de remuneraciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000468, 0000000110, NULL, NULL, 4, '1413', 'Entregas a rendir cuenta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000469, 0000000110, NULL, NULL, 4, '1419', 'Otras cuentas por cobrar al personal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000470, 0000000111, NULL, NULL, 4, '1421', 'Suscripciones por cobrar a socios o accionistas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000471, 0000000111, NULL, NULL, 4, '1422', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000472, 0000000112, NULL, NULL, 4, '1431', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000473, 0000000112, NULL, NULL, 4, '1432', 'Adelanto de dietas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000474, 0000000112, NULL, NULL, 4, '1433', 'Entregas a rendir cuenta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000475, 0000000113, NULL, NULL, 4, '1441', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000476, 0000000113, NULL, NULL, 4, '1442', 'Adelanto a remuneraciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000477, 0000000113, NULL, NULL, 4, '1443', 'Entregas a rendir cuenta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000478, 0000000115, NULL, NULL, 4, '1611', 'Con garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000479, 0000000115, NULL, NULL, 4, '1612', 'Sin garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000480, 0000000116, NULL, NULL, 4, '1621', 'Compañías aseguradoras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000481, 0000000116, NULL, NULL, 4, '1622', 'Transportadoras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000482, 0000000116, NULL, NULL, 4, '1623', 'Servicios públicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000483, 0000000116, NULL, NULL, 4, '1624', 'Tributos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000484, 0000000116, NULL, NULL, 4, '1629', 'Otras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000485, 0000000117, NULL, NULL, 4, '1631', 'Intereses', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000486, 0000000117, NULL, NULL, 4, '1632', 'Regalías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000487, 0000000117, NULL, NULL, 4, '1633', 'Dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000488, 0000000118, NULL, NULL, 4, '1641', 'Préstamos de instituciones no financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000489, 0000000118, NULL, NULL, 4, '1642', 'Préstamos de instituciones financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000490, 0000000118, NULL, NULL, 4, '1644', 'Depósito en garantía por alquileres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000491, 0000000118, NULL, NULL, 4, '1649', 'Otros depósitos en garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000492, 0000000119, NULL, NULL, 4, '1651', 'Inversión mobiliaria', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000493, 0000000119, NULL, NULL, 4, '1652', 'Inversión inmobiliaria', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000494, 0000000119, NULL, NULL, 4, '1653', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000495, 0000000119, NULL, NULL, 4, '1654', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000496, 0000000119, NULL, NULL, 4, '1655', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000497, 0000000120, NULL, NULL, 4, '1661', 'Instrumentos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000498, 0000000120, NULL, NULL, 4, '1662', 'Instrumentos financieros derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000499, 0000000121, NULL, NULL, 4, '1681', 'Entregas a rendir cuenta a terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000500, 0000000121, NULL, NULL, 4, '1682', 'Otras cuenta por cobrar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000501, 0000000122, NULL, NULL, 4, '1711', 'Con garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000502, 0000000122, NULL, NULL, 4, '1712', 'Sin garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000503, 0000000123, NULL, NULL, 4, '1731', 'Intereses', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000504, 0000000123, NULL, NULL, 4, '1732', 'Regalías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000505, 0000000123, NULL, NULL, 4, '1733', 'Dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000506, 0000000125, NULL, NULL, 4, '1751', 'Inversión mobiliaria', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000507, 0000000125, NULL, NULL, 4, '1752', 'Inversión inmobiliaria', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000508, 0000000125, NULL, NULL, 4, '1753', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000509, 0000000125, NULL, NULL, 4, '1754', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000510, 0000000125, NULL, NULL, 4, '1755', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000511, 0000000134, NULL, NULL, 4, '1911', 'Facturas, boletas y otros comprobantes por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000512, 0000000134, NULL, NULL, 4, '1913', 'Letras por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000513, 0000000135, NULL, NULL, 4, '1921', 'Facturas, boletas y otros comprobantes por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000514, 0000000135, NULL, NULL, 4, '1922', 'Letras por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000515, 0000000136, NULL, NULL, 4, '1931', 'Personal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000516, 0000000136, NULL, NULL, 4, '1932', 'Accionistas (o socios)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000517, 0000000136, NULL, NULL, 4, '1933', 'Directores', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000518, 0000000136, NULL, NULL, 4, '1934', 'Gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000519, 0000000136, NULL, NULL, 4, '1938', 'Diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000520, 0000000137, NULL, NULL, 4, '1941', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000521, 0000000137, NULL, NULL, 4, '1942', 'Reclamaciones a terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000522, 0000000137, NULL, NULL, 4, '1943', 'Intereses, regalías y dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000523, 0000000137, NULL, NULL, 4, '1944', 'Depósitos otorgados en garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000524, 0000000137, NULL, NULL, 4, '1945', 'Venta de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000525, 0000000137, NULL, NULL, 4, '1946', 'Activos por instrumentos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000526, 0000000137, NULL, NULL, 4, '1949', 'Otras cuentas por cobrar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000527, 0000000138, NULL, NULL, 4, '1951', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000528, 0000000138, NULL, NULL, 4, '1953', 'Intereses, regalías y dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000529, 0000000138, NULL, NULL, 4, '1954', 'Depósitos otorgados en garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000530, 0000000138, NULL, NULL, 4, '1955', 'Venta de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000531, 0000000138, NULL, NULL, 4, '1956', 'Activos por instrumentos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000532, 0000000138, NULL, NULL, 4, '1958', 'Otras cuentas por cobrar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000533, 0000000139, NULL, NULL, 4, '2011', 'Mercaderías manufacturadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000534, 0000000141, NULL, NULL, 4, '2031', 'De origen animal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000535, 0000000141, NULL, NULL, 4, '2032', 'De origen vegetal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000536, 0000000146, NULL, NULL, 4, '2131', 'De origen animal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000537, 0000000146, NULL, NULL, 4, '2132', 'De origen vegetal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000538, 0000000155, NULL, NULL, 4, '2331', 'De origen animal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000539, 0000000155, NULL, NULL, 4, '2332', 'De origen vegetal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000540, 0000000165, NULL, NULL, 4, '2521', 'Combustibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000541, 0000000165, NULL, NULL, 4, '2522', 'Lubricantes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000542, 0000000165, NULL, NULL, 4, '2523', 'Energía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000543, 0000000165, NULL, NULL, 4, '2524', 'Otros suministros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000544, 0000000169, NULL, NULL, 4, '2711', 'Terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000545, 0000000169, NULL, NULL, 4, '2712', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000546, 0000000170, NULL, NULL, 4, '2721', 'Terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000547, 0000000170, NULL, NULL, 4, '2722', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000548, 0000000170, NULL, NULL, 4, '2723', 'Maquinarias y equipos de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000549, 0000000170, NULL, NULL, 4, '2724', 'Equipo de transporte', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000550, 0000000170, NULL, NULL, 4, '2725', 'Muebles y enseres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000551, 0000000170, NULL, NULL, 4, '2726', 'Equipos diversos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000552, 0000000170, NULL, NULL, 4, '2727', 'Herramientas y unidades de reemplazo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000553, 0000000171, NULL, NULL, 4, '2731', 'Concesiones, licencias y derechos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000554, 0000000171, NULL, NULL, 4, '2732', 'Patentes y propiedad industrial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000555, 0000000171, NULL, NULL, 4, '2733', 'Programas de computadora (software)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000556, 0000000171, NULL, NULL, 4, '2734', 'Costos de exploración y desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000557, 0000000171, NULL, NULL, 4, '2735', 'Fórmulas, diseños y prototipos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000558, 0000000171, NULL, NULL, 4, '2736', 'Reservas de recursos extraíbles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000559, 0000000171, NULL, NULL, 4, '2739', 'Otros activos intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000560, 0000000172, NULL, NULL, 4, '2741', 'Activos biológicos en producción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000561, 0000000172, NULL, NULL, 4, '2742', 'Activos biológicos en desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000562, 0000000173, NULL, NULL, 4, '2752', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000563, 0000000174, NULL, NULL, 4, '2762', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000564, 0000000174, NULL, NULL, 4, '2763', 'Maquinarias y equipos de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000565, 0000000174, NULL, NULL, 4, '2764', 'Equipo de transporte', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000566, 0000000174, NULL, NULL, 4, '2765', 'Muebles y enseres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000567, 0000000174, NULL, NULL, 4, '2766', 'Equipos diversos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000568, 0000000174, NULL, NULL, 4, '2767', 'Herramientas y unidades de reemplazo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000569, 0000000175, NULL, NULL, 4, '2771', 'Concesiones, licencias y derechos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000570, 0000000175, NULL, NULL, 4, '2772', 'Patentes y propiedad industrial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000571, 0000000175, NULL, NULL, 4, '2773', 'Programas de computadora (software)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000572, 0000000175, NULL, NULL, 4, '2774', 'Costos de exploración y desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000573, 0000000175, NULL, NULL, 4, '2775', 'Fórmulas, diseños y prototipos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000574, 0000000175, NULL, NULL, 4, '2776', 'Reservas de recursos extraíbles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000575, 0000000175, NULL, NULL, 4, '2779', 'Otros activos intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000576, 0000000176, NULL, NULL, 4, '2781', 'Activos biológicos en producción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000577, 0000000176, NULL, NULL, 4, '2782', 'Activos biológicos en desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000578, 0000000177, NULL, NULL, 4, '2791', 'Inversión inmobiliaria', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000579, 0000000177, NULL, NULL, 4, '2793', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000580, 0000000177, NULL, NULL, 4, '2794', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000581, 0000000177, NULL, NULL, 4, '2795', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000582, 0000000182, NULL, NULL, 4, '2911', 'Mercaderías manufacturadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000583, 0000000182, NULL, NULL, 4, '2912', 'Mercaderías de extracción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000584, 0000000182, NULL, NULL, 4, '2913', 'Mercaderías agropecuarias y piscícolas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000585, 0000000182, NULL, NULL, 4, '2914', 'Mercaderías inmuebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000586, 0000000182, NULL, NULL, 4, '2918', 'Otras mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000587, 0000000183, NULL, NULL, 4, '2921', 'Productos manufacturados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000588, 0000000183, NULL, NULL, 4, '2922', 'Productos de extracción terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000589, 0000000183, NULL, NULL, 4, '2923', 'Productos agropecuarios y piscícolas terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000590, 0000000183, NULL, NULL, 4, '2924', 'Productos inmuebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000591, 0000000183, NULL, NULL, 4, '2925', 'Existencias de servicios terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000592, 0000000183, NULL, NULL, 4, '2927', 'Otros productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000593, 0000000183, NULL, NULL, 4, '2928', 'Costos de financiación – Productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000594, 0000000184, NULL, NULL, 4, '2931', 'Subproductos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000595, 0000000184, NULL, NULL, 4, '2932', 'Desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000596, 0000000185, NULL, NULL, 4, '2941', 'Productos en proceso de manufactura', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000597, 0000000185, NULL, NULL, 4, '2942', 'Productos extraídos en proceso de transformación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000598, 0000000185, NULL, NULL, 4, '2943', 'Productos agropecuarios y piscícolas en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000599, 0000000185, NULL, NULL, 4, '2944', 'Productos inmuebles en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000600, 0000000185, NULL, NULL, 4, '2945', 'Existencias de servicios en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000601, 0000000185, NULL, NULL, 4, '2947', 'Otros productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000602, 0000000185, NULL, NULL, 4, '2948', 'Costos de financiación – Productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000603, 0000000186, NULL, NULL, 4, '2951', 'Materias primas para productos manufacturados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000604, 0000000186, NULL, NULL, 4, '2952', 'Materias primas para productos de extracción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000605, 0000000186, NULL, NULL, 4, '2953', 'Materias primas para productos agropecuarios y piscícolas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000606, 0000000186, NULL, NULL, 4, '2954', 'Materias primas para productos inmuebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000607, 0000000187, NULL, NULL, 4, '2961', 'Materiales auxiliares', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000608, 0000000187, NULL, NULL, 4, '2962', 'Suministros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000609, 0000000188, NULL, NULL, 4, '2963', 'Repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000610, 0000000188, NULL, NULL, 4, '2971', 'Envases', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000611, 0000000188, NULL, NULL, 4, '2972', 'Embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000612, 0000000189, NULL, NULL, 4, '2981', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000613, 0000000189, NULL, NULL, 4, '2982', 'Materias primas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000614, 0000000189, NULL, NULL, 4, '2983', 'Materiales auxiliares, suministros y repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000615, 0000000189, NULL, NULL, 4, '2984', 'Envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000616, 0000000190, NULL, NULL, 4, '3011', 'Instrumentos financieros representativos de deuda', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000617, 0000000191, NULL, NULL, 4, '3021', 'Certificados de suscripción preferente', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000618, 0000000191, NULL, NULL, 4, '3022', 'Acciones representativas de capital social – Comunes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000619, 0000000191, NULL, NULL, 4, '3023', 'Acciones representativas de capital social – Preferentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000620, 0000000191, NULL, NULL, 4, '3024', 'Acciones de inversión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000621, 0000000191, NULL, NULL, 4, '3025', 'Certificados de participación de fondos de inversión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000622, 0000000191, NULL, NULL, 4, '3026', 'Certificados de participación de fondos mutuos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000623, 0000000191, NULL, NULL, 4, '3027', 'Participaciones en asociaciones en participación y consorcios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000624, 0000000191, NULL, NULL, 4, '3028', 'Otros títulos representativos de patrimonio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000625, 0000000192, NULL, NULL, 4, '3081', 'Inversiones a ser mantenidas hasta el vencimiento – Acuerdo de compra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000626, 0000000192, NULL, NULL, 4, '3082', 'Instrumentos financieros representativos de derecho patrimonial – Acuerdo de compra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000627, 0000000193, NULL, NULL, 4, '3111', 'Urbanos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000628, 0000000193, NULL, NULL, 4, '3112', 'Rurales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000629, 0000000194, NULL, NULL, 4, '3121', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000630, 0000000195, NULL, NULL, 4, '3211', 'Terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000631, 0000000195, NULL, NULL, 4, '3212', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000632, 0000000196, NULL, NULL, 4, '3221', 'Terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000633, 0000000196, NULL, NULL, 4, '3222', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000634, 0000000196, NULL, NULL, 4, '3223', 'Maquinarias y equipos de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000635, 0000000196, NULL, NULL, 4, '3224', 'Equipo de transporte', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000636, 0000000196, NULL, NULL, 4, '3225', 'Muebles y enseres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000637, 0000000196, NULL, NULL, 4, '3226', 'Equipos diversos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000638, 0000000196, NULL, NULL, 4, '3227', 'Herramientas y unidades de reemplazo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000639, 0000000197, NULL, NULL, 4, '3311', 'Terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000640, 0000000198, NULL, NULL, 4, '3321', 'Edificaciones administrativas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000641, 0000000198, NULL, NULL, 4, '3322', 'Almacenes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000642, 0000000198, NULL, NULL, 4, '3323', 'Edificaciones para producción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000643, 0000000198, NULL, NULL, 4, '3324', 'Instalaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000644, 0000000199, NULL, NULL, 4, '3331', 'Maquinarias y equipos de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000645, 0000000200, NULL, NULL, 4, '3341', 'Vehículos motorizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000646, 0000000200, NULL, NULL, 4, '3342', 'Vehículos no motorizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000647, 0000000201, NULL, NULL, 4, '3351', 'Muebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000648, 0000000201, NULL, NULL, 4, '3352', 'Enseres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000649, 0000000202, NULL, NULL, 4, '3361', 'Equipo para procesamiento de información (de cómputo)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000650, 0000000202, NULL, NULL, 4, '3362', 'Equipo de comunicación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000651, 0000000202, NULL, NULL, 4, '3363', 'Equipo de seguridad', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000652, 0000000202, NULL, NULL, 4, '3369', 'Otros equipos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000653, 0000000203, NULL, NULL, 4, '3371', 'Herramientas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000654, 0000000203, NULL, NULL, 4, '3372', 'Unidades de reemplazo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000655, 0000000204, NULL, NULL, 4, '3381', 'Maquinarias y equipos de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000656, 0000000204, NULL, NULL, 4, '3382', 'Equipo de transporte', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000657, 0000000204, NULL, NULL, 4, '3383', 'Muebles y enseres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000658, 0000000204, NULL, NULL, 4, '3386', 'Equipos diversos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000659, 0000000204, NULL, NULL, 4, '3387', 'Herramientas y unidades de reemplazo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000660, 0000000205, NULL, NULL, 4, '3391', 'Adaptación de terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000661, 0000000205, NULL, NULL, 4, '3392', 'Construcciones en curso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000662, 0000000205, NULL, NULL, 4, '3393', 'Maquinaria en montaje', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000663, 0000000205, NULL, NULL, 4, '3394', 'Inversión inmobiliaria en curso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000664, 0000000205, NULL, NULL, 4, '3397', 'Costo de financiación – Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000665, 0000000205, NULL, NULL, 4, '3398', 'Costo de financiación – Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000666, 0000000205, NULL, NULL, 4, '3399', 'Otros activos en curso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000667, 0000000206, NULL, NULL, 4, '3411', 'Concesiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000668, 0000000206, NULL, NULL, 4, '3412', 'Licencias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000669, 0000000206, NULL, NULL, 4, '3419', 'Otros derechos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000670, 0000000207, NULL, NULL, 4, '3421', 'Patentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000671, 0000000207, NULL, NULL, 4, '3422', 'Marcas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000672, 0000000208, NULL, NULL, 4, '3431', 'Aplicaciones informáticas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000673, 0000000209, NULL, NULL, 4, '3441', 'Costos de exploración', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000674, 0000000209, NULL, NULL, 4, '3442', 'Costos de desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000675, 0000000210, NULL, NULL, 4, '3451', 'Fórmulas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000676, 0000000210, NULL, NULL, 4, '3452', 'Diseños y prototipos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000677, 0000000211, NULL, NULL, 4, '3461', 'Minerales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000678, 0000000211, NULL, NULL, 4, '3462', 'Petróleo y gas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000679, 0000000211, NULL, NULL, 4, '3463', 'Madera', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000680, 0000000211, NULL, NULL, 4, '3469', 'Otros recursos extraíbles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000681, 0000000212, NULL, NULL, 4, '3471', 'Plusvalía mercantil', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000682, 0000000213, NULL, NULL, 4, '3491', 'Otros activos intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000683, 0000000214, NULL, NULL, 4, '3511', 'De origen animal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000684, 0000000214, NULL, NULL, 4, '3512', 'De origen vegetal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000685, 0000000215, NULL, NULL, 4, '3521', 'De origen animal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000686, 0000000215, NULL, NULL, 4, '3522', 'De origen vegetal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000687, 0000000216, NULL, NULL, 4, '3611', 'Terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000688, 0000000216, NULL, NULL, 4, '3612', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000689, 0000000217, NULL, NULL, 4, '3631', 'Terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000690, 0000000217, NULL, NULL, 4, '3632', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000691, 0000000217, NULL, NULL, 4, '3633', 'Maquinarias y equipos de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000692, 0000000217, NULL, NULL, 4, '3634', 'Equipo de transporte', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000693, 0000000217, NULL, NULL, 4, '3635', 'Muebles y enseres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000694, 0000000217, NULL, NULL, 4, '3636', 'Equipos diversos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000695, 0000000217, NULL, NULL, 4, '3637', 'Herramientas y unidades de reemplazo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000696, 0000000218, NULL, NULL, 4, '3641', 'Concesiones, licencias y otros derechos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000697, 0000000218, NULL, NULL, 4, '3642', 'Patentes y propiedad industrial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000698, 0000000218, NULL, NULL, 4, '3643', 'Programas de computadora (software)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000699, 0000000218, NULL, NULL, 4, '3644', 'Costos de exploración y desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000700, 0000000218, NULL, NULL, 4, '3645', 'Fórmulas, diseños y prototipos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000701, 0000000218, NULL, NULL, 4, '3647', 'Plusvalía mercantil', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000702, 0000000218, NULL, NULL, 4, '3649', 'Otros activos intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000703, 0000000219, NULL, NULL, 4, '3651', 'Activos biológicos en producción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000704, 0000000219, NULL, NULL, 4, '3652', 'Activos biológicos en desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000705, 0000000220, NULL, NULL, 4, '3661', 'Inversiones a ser mantenidas hasta el vencimiento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000706, 0000000220, NULL, NULL, 4, '3662', 'Inversiones financieras representativas de derecho patrimonial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000707, 0000000221, NULL, NULL, 4, '3711', 'Impuesto a la renta diferido – Patrimonio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000708, 0000000221, NULL, NULL, 4, '3712', 'Impuesto a la renta diferido – Resultados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000709, 0000000222, NULL, NULL, 4, '3721', 'Participaciones de los trabajadores diferidas – Patrimonio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000710, 0000000222, NULL, NULL, 4, '3722', 'Participaciones de los trabajadores diferidas – Resultados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000711, 0000000223, NULL, NULL, 4, '3731', 'Intereses no devengados en transacciones con terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000712, 0000000223, NULL, NULL, 4, '3732', 'Intereses no devengados en medición a valor descontado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000713, 0000000224, NULL, NULL, 4, '3811', 'Obras de arte', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000714, 0000000224, NULL, NULL, 4, '3812', 'Biblioteca', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000715, 0000000224, NULL, NULL, 4, '3813', 'Otros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000716, 0000000225, NULL, NULL, 4, '3821', 'Monedas y joyas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000717, 0000000225, NULL, NULL, 4, '3822', 'Bienes entregados en comodato', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000718, 0000000225, NULL, NULL, 4, '3823', 'Bienes recibidos en pago (adjudicados y realizables)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000719, 0000000225, NULL, NULL, 4, '3829', 'Otros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000720, 0000000226, NULL, NULL, 4, '3911', 'Inversiones Inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000721, 0000000226, NULL, NULL, 4, '3912', 'Activos adquiridos en arrendamiento financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000722, 0000000226, NULL, NULL, 4, '3913', 'Inmuebles, maquinaria y equipo – Costo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000723, 0000000226, NULL, NULL, 4, '3914', 'Inmuebles, maquinaria y equipo – Revaluación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000724, 0000000226, NULL, NULL, 4, '3915', 'Inmuebles, maquinaria y equipo – Costo de financiación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000725, 0000000226, NULL, NULL, 4, '3916', 'Activos biológicos en producción – Costo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000726, 0000000226, NULL, NULL, 4, '3917', 'Activos biológicos en producción – Costo de financiación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000727, 0000000227, NULL, NULL, 4, '3921', 'Intangibles – Costo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000728, 0000000227, NULL, NULL, 4, '3922', 'Intangibles – Revaluación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000729, 0000000227, NULL, NULL, 4, '3923', 'Intangibles – Costos de financiación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000730, 0000000228, NULL, NULL, 4, '3931', 'Agotamiento de reservas de recursos extraíbles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000731, 0000000229, NULL, NULL, 4, '4011', 'Impuesto general a las ventas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000732, 0000000229, NULL, NULL, 4, '4012', 'Impuesto selectivo al consumo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000733, 0000000229, NULL, NULL, 4, '4015', 'Derechos aduaneros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000734, 0000000229, NULL, NULL, 4, '4017', 'Impuesto a la renta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000735, 0000000229, NULL, NULL, 4, '4018', 'Otros impuestos y contraprestaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000736, 0000000231, NULL, NULL, 4, '4031', 'ESSALUD', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000737, 0000000231, NULL, NULL, 4, '4032', 'ONP', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000738, 0000000231, NULL, NULL, 4, '4033', 'Contribución al SENATI', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000739, 0000000231, NULL, NULL, 4, '4034', 'Contribución al SENCICO', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000740, 0000000231, NULL, NULL, 4, '4039', 'Otras instituciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000741, 0000000233, NULL, NULL, 4, '4061', 'Impuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000742, 0000000233, NULL, NULL, 4, '4062', 'Contribuciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000743, 0000000233, NULL, NULL, 4, '4063', 'Tasas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000744, 0000000235, NULL, NULL, 4, '4081', 'Cuenta propia', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000745, 0000000235, NULL, NULL, 4, '4082', 'Cuenta de terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000746, 0000000237, NULL, NULL, 4, '4111', 'Sueldos y salarios por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000747, 0000000237, NULL, NULL, 4, '4112', 'Comisiones por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000748, 0000000237, NULL, NULL, 4, '4113', 'Remuneraciones en especie por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000749, 0000000237, NULL, NULL, 4, '4114', 'Gratificaciones por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000750, 0000000237, NULL, NULL, 4, '4115', 'Vacaciones por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000751, 0000000239, NULL, NULL, 4, '4151', 'Compensación por tiempo de servicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000752, 0000000239, NULL, NULL, 4, '4152', 'Adelanto de compensación por tiempo de servicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000753, 0000000239, NULL, NULL, 4, '4153', 'Pensiones y jubilaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000754, 0000000241, NULL, NULL, 4, '4211', 'No emitidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000755, 0000000241, NULL, NULL, 4, '4212', 'Emitidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000756, 0000000245, NULL, NULL, 4, '4311', 'No emitidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000757, 0000000245, NULL, NULL, 4, '4312', 'Emitidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000758, 0000000246, NULL, NULL, 4, '4321', 'Anticipos otorgados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000759, 0000000247, NULL, NULL, 4, '4331', 'Letras por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000760, 0000000248, NULL, NULL, 4, '4341', 'Honorarios por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000761, 0000000249, NULL, NULL, 4, '4411', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000762, 0000000249, NULL, NULL, 4, '4412', 'Dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000763, 0000000249, NULL, NULL, 4, '4419', 'Otras cuentas por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000764, 0000000250, NULL, NULL, 4, '4421', 'Dietas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000765, 0000000250, NULL, NULL, 4, '4429', 'Otras cuentas por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000766, 0000000252, NULL, NULL, 4, '4511', 'Instituciones financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000767, 0000000252, NULL, NULL, 4, '4512', 'Otras entidades', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000768, 0000000254, NULL, NULL, 4, '4531', 'Bonos emitidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000769, 0000000254, NULL, NULL, 4, '4532', 'Bonos titulizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000770, 0000000254, NULL, NULL, 4, '4533', 'Papeles comerciales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000771, 0000000254, NULL, NULL, 4, '4539', 'Otras obligaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000772, 0000000255, NULL, NULL, 4, '4541', 'Letras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000773, 0000000255, NULL, NULL, 4, '4542', 'Papeles comerciales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000774, 0000000255, NULL, NULL, 4, '4543', 'Bonos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000775, 0000000255, NULL, NULL, 4, '4544', 'Pagarés', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000776, 0000000255, NULL, NULL, 4, '4545', 'Facturas conformadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000777, 0000000255, NULL, NULL, 4, '4549', 'Otras obligaciones financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000778, 0000000256, NULL, NULL, 4, '4551', 'Préstamos de instituciones financieras y otras entidades', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000779, 0000000256, NULL, NULL, 4, '4552', 'Contratos de arrendamiento financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000780, 0000000256, NULL, NULL, 4, '4553', 'Obligaciones emitidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000781, 0000000256, NULL, NULL, 4, '4554', 'Otros instrumentos financieros por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000782, 0000000259, NULL, NULL, 4, '4641', 'Instrumentos financieros primarios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000783, 0000000259, NULL, NULL, 4, '4642', 'Instrumentos financieros derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000784, 0000000260, NULL, NULL, 4, '4651', 'Inversiones mobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000785, 0000000260, NULL, NULL, 4, '4652', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000786, 0000000260, NULL, NULL, 4, '4653', 'Activos adquiridos en arrendamiento financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000787, 0000000260, NULL, NULL, 4, '4654', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000788, 0000000260, NULL, NULL, 4, '4655', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000789, 0000000260, NULL, NULL, 4, '4656', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000790, 0000000262, NULL, NULL, 4, '4691', 'Subsidios gubernamentales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000791, 0000000262, NULL, NULL, 4, '4692', 'Donaciones condicionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000792, 0000000262, NULL, NULL, 4, '4699', 'Otras cuentas por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000793, 0000000263, NULL, NULL, 4, '4711', 'Matriz', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000794, 0000000263, NULL, NULL, 4, '4712', 'Subsidiarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000795, 0000000263, NULL, NULL, 4, '4713', 'Asociadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000796, 0000000263, NULL, NULL, 4, '4714', 'Sucursales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000797, 0000000263, NULL, NULL, 4, '4715', 'Otras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000798, 0000000264, NULL, NULL, 4, '4721', 'Matriz', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000799, 0000000264, NULL, NULL, 4, '4722', 'Subsidiarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000800, 0000000264, NULL, NULL, 4, '4723', 'Asociadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000801, 0000000264, NULL, NULL, 4, '4724', 'Sucursales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000802, 0000000264, NULL, NULL, 4, '4725', 'Otras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000803, 0000000265, NULL, NULL, 4, '4731', 'Matriz', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000804, 0000000265, NULL, NULL, 4, '4732', 'Subsidiarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000805, 0000000265, NULL, NULL, 4, '4733', 'Asociadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000806, 0000000265, NULL, NULL, 4, '4734', 'Sucursales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000807, 0000000265, NULL, NULL, 4, '4735', 'Otras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000808, 0000000266, NULL, NULL, 4, '4741', 'Matriz', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000809, 0000000266, NULL, NULL, 4, '4742', 'Subsidiarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000810, 0000000266, NULL, NULL, 4, '4743', 'Asociadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000811, 0000000266, NULL, NULL, 4, '4744', 'Sucursales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000812, 0000000266, NULL, NULL, 4, '4745', 'Otras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000813, 0000000267, NULL, NULL, 4, '4751', 'Matriz', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000814, 0000000267, NULL, NULL, 4, '4752', 'Subsidiarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000815, 0000000267, NULL, NULL, 4, '4753', 'Asociadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000816, 0000000267, NULL, NULL, 4, '4754', 'Sucursales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000817, 0000000267, NULL, NULL, 4, '4755', 'Otras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000818, 0000000268, NULL, NULL, 4, '4771', 'Inversiones mobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000819, 0000000268, NULL, NULL, 4, '4772', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000820, 0000000268, NULL, NULL, 4, '4773', 'Activos adquiridos en arrendamiento financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000821, 0000000268, NULL, NULL, 4, '4774', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000822, 0000000268, NULL, NULL, 4, '4775', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000823, 0000000268, NULL, NULL, 4, '4776', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000824, 0000000269, NULL, NULL, 4, '4791', 'Otras cuentas por pagar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000825, 0000000277, NULL, NULL, 4, '4911', 'Impuesto a la renta diferido – Patrimonio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000826, 0000000277, NULL, NULL, 4, '4912', 'Impuesto a la renta diferido – Resultados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000827, 0000000278, NULL, NULL, 4, '4921', 'Participaciones de los trabajadores diferidas – Patrimonio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000828, 0000000278, NULL, NULL, 4, '4922', 'Participaciones de los trabajadores diferidas – Resultados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000829, 0000000279, NULL, NULL, 4, '4931', 'Intereses no devengados en transacciones con terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000830, 0000000279, NULL, NULL, 4, '4932', 'Intereses no devengados en medición a valor descontado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000831, 0000000009, NULL, NULL, 2, '91', 'Costos por distribuir', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000832, 0000000009, NULL, NULL, 2, '92', 'Costos de producción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000833, 0000000009, NULL, NULL, 2, '93', 'Centros de costos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000834, 0000000009, NULL, NULL, 2, '94', 'Gastos administrativos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000835, 0000000009, NULL, NULL, 2, '95', 'Gastos de ventas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000836, 0000000009, NULL, NULL, 2, '96', 'Gastos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000837, 0000000073, NULL, NULL, 3, '763', 'Participación en los resultados de subsidiarias y asociadas bajo el método del valor patrimonial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000838, 0000000073, NULL, NULL, 3, '764', 'Ingresos por participaciones en negocios conjuntos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000839, 0000000284, NULL, NULL, 4, '5011', 'Acciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000840, 0000000284, NULL, NULL, 4, '5012', 'Participaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000841, 0000000289, NULL, NULL, 4, '5221', 'Aportes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000842, 0000000289, NULL, NULL, 4, '5222', 'Reservas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000843, 0000000289, NULL, NULL, 4, '5223', 'Acreencias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000844, 0000000289, NULL, NULL, 4, '5224', 'Utilidades', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000845, 0000000293, NULL, NULL, 4, '5631', 'Ganancia', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000846, 0000000293, NULL, NULL, 4, '5632', 'Pérdida', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000847, 0000000294, NULL, NULL, 4, '5641', 'Ganancia', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000848, 0000000294, NULL, NULL, 4, '5642', 'Pérdida', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000849, 0000000295, NULL, NULL, 4, '5711', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000850, 0000000295, NULL, NULL, 4, '5712', 'Inmuebles, maquinaria y equipos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000851, 0000000295, NULL, NULL, 4, '5713', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000852, 0000000304, NULL, NULL, 4, '5911', 'Utilidades acumuladas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000853, 0000000304, NULL, NULL, 4, '5912', 'Ingresos de años anteriores', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000854, 0000000305, NULL, NULL, 4, '5921', 'Pérdidas acumuladas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000855, 0000000305, NULL, NULL, 4, '5922', 'Gastos de años anteriores', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000870, 0000000310, NULL, NULL, 4, '6091', 'Costos vinculados con las compras de mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000871, 0000000310, NULL, NULL, 4, '6092', 'Costos vinculados con las compras de materias primas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000872, 0000000310, NULL, NULL, 4, '6093', 'Costos vinculados con las compras de materiales, suministros y repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000873, 0000000310, NULL, NULL, 4, '6094', 'Costos vinculados con las compras de envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000874, 0000000311, NULL, NULL, 4, '6111', 'Mercaderías manufacturadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000875, 0000000311, NULL, NULL, 4, '6112', 'Mercaderías de extracción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000876, 0000000311, NULL, NULL, 4, '6113', 'Mercaderías agropecuarias y piscícolas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000877, 0000000311, NULL, NULL, 4, '6114', 'Mercaderías inmuebles ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000878, 0000000311, NULL, NULL, 4, '6115', 'Otras mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000879, 0000000312, NULL, NULL, 4, '6121', 'Materias primas para productos manufacturados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000880, 0000000312, NULL, NULL, 4, '6122', 'Materias primas para productos de extracción ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000881, 0000000312, NULL, NULL, 4, '6123', 'Materias primas para productos agropecuarios y piscícolas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000882, 0000000312, NULL, NULL, 4, '6124', 'Materias primas para productos inmuebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000883, 0000000313, NULL, NULL, 4, '6131', 'Materiales auxiliares', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000884, 0000000313, NULL, NULL, 4, '6132', 'Suministros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000885, 0000000313, NULL, NULL, 4, '6133', 'Repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000886, 0000000314, NULL, NULL, 4, '6141', 'Envases', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000887, 0000000314, NULL, NULL, 4, '6142', 'Embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000888, 0000000315, NULL, NULL, 4, '6211', 'Sueldos y salarios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000889, 0000000315, 0000000834, 0000000076, 4, '6212', 'Comisiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000890, 0000000315, 0000000834, 0000000076, 4, '6213', 'Remuneraciones en especie', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000891, 0000000315, 0000000834, 0000000076, 4, '6214', 'Gratificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000892, 0000000315, 0000000834, 0000000076, 4, '6215', 'Vacaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000893, 0000000321, NULL, NULL, 4, '6271', 'Régimen de prestaciones de salud', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000894, 0000000321, 0000000834, 0000000076, 4, '6272', 'Régimen de pensiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000895, 0000000321, 0000000834, 0000000076, 4, '6273', 'Seguro complementario de trabajo de riesgo, accidentes de trabajo y enfermedades', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000896, 0000000321, 0000000834, 0000000076, 4, '6274', 'Seguro de vida', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000897, 0000000321, 0000000834, 0000000076, 4, '6275', 'Seguros particulares de prestaciones de salud - EPS y otros particulares', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000898, 0000000321, 0000000834, 0000000076, 4, '6276', 'Caja de beneficios de seguridad social del pescador', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000899, 0000000321, 0000000834, 0000000076, 4, '6277', 'Contribuciones a sencico y senati', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000900, 0000000323, 0000000834, 0000000076, 4, '6291', 'Compensación por tiempo de servicio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000901, 0000000323, 0000000834, 0000000076, 4, '6292', 'Pensiones y jubilaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000902, 0000000323, 0000000834, 0000000076, 4, '6293', 'Otros beneficios post-empleo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000903, 0000000324, NULL, NULL, 4, '6311', 'Transporte', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000904, 0000000324, NULL, NULL, 4, '6312', 'Correos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000905, 0000000324, NULL, NULL, 4, '6313', 'Alojamiento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000906, 0000000324, NULL, NULL, 4, '6314', 'Alimentación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000907, 0000000324, NULL, NULL, 4, '6315', 'Otros gastos de viaje', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000908, 0000000325, NULL, NULL, 4, '6321', 'Administrativa', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000909, 0000000325, NULL, NULL, 4, '6322', 'Legal y tributaria', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000910, 0000000325, NULL, NULL, 4, '6323', 'Auditoria y contable', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000911, 0000000325, NULL, NULL, 4, '6324', 'Mercadotecnia', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000912, 0000000325, NULL, NULL, 4, '6325', 'Medio ambiental', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000913, 0000000325, NULL, NULL, 4, '6326', 'Investigación y desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000914, 0000000325, NULL, NULL, 4, '6327', 'Producción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000915, 0000000325, NULL, NULL, 4, '6329', 'Otros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000916, 0000000327, NULL, NULL, 4, '6341', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000917, 0000000327, NULL, NULL, 4, '6342', 'Activos adquiridos en arrendamiento financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000918, 0000000327, NULL, NULL, 4, '6343', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000919, 0000000327, NULL, NULL, 4, '6344', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000920, 0000000327, NULL, NULL, 4, '6345', 'Activos biologicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000921, 0000000328, NULL, NULL, 4, '6351', 'Terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000922, 0000000328, NULL, NULL, 4, '6352', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000923, 0000000328, NULL, NULL, 4, '6353', 'Maquinarias y equipos de explotación ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000924, 0000000328, NULL, NULL, 4, '6354', 'Equipo de transporte', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000925, 0000000328, NULL, NULL, 4, '6356', 'Equipos diversos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000926, 0000000329, NULL, NULL, 4, '6361', 'Energía eléctrica', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000927, 0000000329, NULL, NULL, 4, '6362', 'Gas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000928, 0000000329, NULL, NULL, 4, '6363', 'Agua', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000929, 0000000329, NULL, NULL, 4, '6364', 'Teléfono', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000930, 0000000329, NULL, NULL, 4, '6365', 'Internet', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000931, 0000000329, NULL, NULL, 4, '6366', 'Radio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000932, 0000000329, NULL, NULL, 4, '6367', 'Cable', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000933, 0000000330, NULL, NULL, 4, '6371', 'Publicidad', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000934, 0000000330, NULL, NULL, 4, '6372', 'Publicaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000935, 0000000330, NULL, NULL, 4, '6373', 'Relaciones públicas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000936, 0000000332, NULL, NULL, 4, '6391', 'Gastos bancarios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000937, 0000000332, NULL, NULL, 4, '6392', 'Gastos de laboratorio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000938, 0000000333, NULL, NULL, 4, '6411', 'Impuesto general a las ventas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000939, 0000000333, NULL, NULL, 4, '6412', 'Cánones y derechos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000940, 0000000333, NULL, NULL, 4, '6413', 'Impuesto temporal a los activos netos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000941, 0000000333, NULL, NULL, 4, '6414', 'Impuesto a los juegos de casino y maquinas tragamonedas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000942, 0000000333, NULL, NULL, 4, '6415', 'Regalias mineras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000943, 0000000333, NULL, NULL, 4, '6416', 'Canones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000944, 0000000333, NULL, NULL, 4, '6419', 'Otros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000945, 0000000335, NULL, NULL, 4, '6431', 'Impuesto predial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000946, 0000000335, NULL, NULL, 4, '6432', 'Arbitrios municipales y seguridad ciudadana', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000947, 0000000335, NULL, NULL, 4, '6433', 'Impuesto al patrimonio vehicular', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000948, 0000000335, NULL, NULL, 4, '6434', 'Licencia de funcionamiento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000949, 0000000335, NULL, NULL, 4, '6439', 'Otros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000950, 0000000336, NULL, NULL, 4, '6441', 'Contribución a senati', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000951, 0000000336, NULL, NULL, 4, '6442', 'Contribución a sencico', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000952, 0000000336, NULL, NULL, 4, '6443', 'Otros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000953, 0000000341, NULL, NULL, 4, '6551', 'Costo neto de enajenación de activos inmovilizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000954, 0000000341, NULL, NULL, 4, '6552', 'Operaciones discontinuadas - abandono e activos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000955, 0000000344, NULL, NULL, 4, '6591', 'Donaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000956, 0000000344, NULL, NULL, 4, '6592', 'Sanciones administrativas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000957, 0000000345, NULL, NULL, 4, '6611', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000958, 0000000345, NULL, NULL, 4, '6612', 'Productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000959, 0000000345, NULL, NULL, 4, '6613', 'Activos no corrientes mantenidos para la venta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000960, 0000000346, NULL, NULL, 4, '6621', 'Inversiones inmoviliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000961, 0000000346, NULL, NULL, 4, '6622', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000962, 0000000347, NULL, NULL, 4, '6711', 'Préstamos de instituciones financieras y otras entidades', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000963, 0000000347, NULL, NULL, 4, '6712', 'Contratos de arrendamiento financiero ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000964, 0000000347, NULL, NULL, 4, '6713', 'Emisión y colocación de instrumentos representativos de deuda y patrimonio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000965, 0000000347, NULL, NULL, 4, '6714', 'Documentos vendidos o descontados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000966, 0000000349, NULL, NULL, 4, '6731', 'Préstamos de instituciones financieras y otras entidades', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000967, 0000000349, NULL, NULL, 4, '6732', 'Contratos de arrendamiento financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000968, 0000000349, NULL, NULL, 4, '6733', 'Otros instrumentos financieros por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000969, 0000000349, NULL, NULL, 4, '6734', 'Documentos vendidos o descontados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000970, 0000000349, NULL, NULL, 4, '6735', 'Obligaciones emitidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000971, 0000000349, NULL, NULL, 4, '6736', 'Obligaciones comerciales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000972, 0000000349, NULL, NULL, 4, '6737', 'Obligaciones tributarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000973, 0000000355, NULL, NULL, 4, '6791', 'Primas por opciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000974, 0000000355, NULL, NULL, 4, '6792', 'Gastos financieros en medición a valor descontado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000975, 0000000356, NULL, NULL, 4, '6811', 'Depreciación de inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000976, 0000000356, NULL, NULL, 4, '6812', 'Depreciación de activos adquiridos en arrendamiento financiero - inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000977, 0000000356, NULL, NULL, 4, '6813', 'Depreciación de activos adquiridos en arrendamiento financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000978, 0000000356, NULL, NULL, 4, '6814', 'Depreciación de inmuebles, maquinaria y equipo - costo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000979, 0000000356, NULL, NULL, 4, '6815', 'Depreciación de inmuebles, maquinaria y equipo - revaluación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000980, 0000000356, NULL, NULL, 4, '6816', 'Depreciación de inmuebles, maquinaria y equipo - costos de financiación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000981, 0000000356, NULL, NULL, 4, '6817', 'Depreciación de activos biológicos en producción - costo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000982, 0000000356, NULL, NULL, 4, '6818', 'Depreciación de activos biológicos en producción - costos de financiación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000983, 0000000357, NULL, NULL, 4, '6821', 'Amortización de intangibles adquiridos - costo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000984, 0000000357, NULL, NULL, 4, '6822', 'Amortización de intangibles adquiridos - revaluación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000985, 0000000357, NULL, NULL, 4, '6823', 'Amortización de intangibles generados internamente - costo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000986, 0000000357, NULL, NULL, 4, '6824', 'Amortización de intangibles generados internamente - revaluación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000987, 0000000358, NULL, NULL, 4, '6831', 'Agotamiento de recursos naturales adquiridos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000988, 0000000359, NULL, NULL, 4, '6841', 'Estimación de cuentas de cobranza dudosa', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000989, 0000000359, NULL, NULL, 4, '6842', 'Desvalorización de existencias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000990, 0000000359, NULL, NULL, 4, '6843', 'Desvalorización de inversiones mobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000991, 0000000360, NULL, NULL, 4, '6851', 'Desvalorización de inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000992, 0000000360, NULL, NULL, 4, '6852', 'Desvalorización de inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000993, 0000000360, NULL, NULL, 4, '6853', 'Desvalorización de intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000994, 0000000360, NULL, NULL, 4, '6854', 'Desvalorización de activos biológicos en producción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000995, 0000000361, NULL, NULL, 4, '6861', 'Provisión para litigios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000996, 0000000361, NULL, NULL, 4, '6862', 'Provisión por desmantelamiento, retiro o rehabilitación del inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000997, 0000000361, NULL, NULL, 4, '6863', 'Provisión para reestructuraciones ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000998, 0000000361, NULL, NULL, 4, '6864', 'Provisión para protección y remediación del medio ambiente', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000999, 0000000361, NULL, NULL, 4, '6865', 'Provisión para gastos de responsabilidad social', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001000, 0000000361, NULL, NULL, 4, '6869', 'Otras provisiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001001, 0000000362, NULL, NULL, 4, '6911', 'Mercaderías manufacturadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001002, 0000000362, NULL, NULL, 4, '6912', 'Mercaderías de extracción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001003, 0000000362, NULL, NULL, 4, '6913', 'Mercaderías agropecuarias y piscícolas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001004, 0000000362, NULL, NULL, 4, '6914', 'Mercaderías inmuebles ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001005, 0000000362, NULL, NULL, 4, '6915', 'Otras mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001006, 0000000363, NULL, NULL, 4, '6921', 'Productos manufacturados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001007, 0000000363, NULL, NULL, 4, '6922', 'Productos de extracción terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001008, 0000000363, NULL, NULL, 4, '6923', 'Productos agropecuarios y piscícolas terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001009, 0000000363, NULL, NULL, 4, '6924', 'Productos inmuebles terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001010, 0000000363, NULL, NULL, 4, '6925', 'Existencias de servicios terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001011, 0000000363, NULL, NULL, 4, '6926', 'Costos de financiación - productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001012, 0000000364, NULL, NULL, 4, '6931', 'Subproductos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001013, 0000000364, NULL, NULL, 4, '6932', 'Desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001014, 0000000365, NULL, NULL, 4, '6941', 'Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001015, 0000000365, NULL, NULL, 4, '6942', 'Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001016, 0000000367, NULL, NULL, 4, '7011', 'Mercaderías manufacturadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001017, 0000000367, NULL, NULL, 4, '7012', 'Mercaderías de extracción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001018, 0000000367, NULL, NULL, 4, '7013', 'Mercaderías agropecuarias y piscícolas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001019, 0000000367, NULL, NULL, 4, '7014', 'Mercaderías inmuebles ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001020, 0000000367, NULL, NULL, 4, '7015', 'Otras mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001021, 0000000368, NULL, NULL, 4, '7021', 'Productos manufacturados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001022, 0000000368, NULL, NULL, 4, '7022', 'Productos de extracción terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001023, 0000000368, NULL, NULL, 4, '7023', 'Productos agropecuarios y piscícolas terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001024, 0000000368, NULL, NULL, 4, '7024', 'Productos inmuebles terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001025, 0000000368, NULL, NULL, 4, '7025', 'Existencias de servicios terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001026, 0000000369, NULL, NULL, 4, '7031', 'Subproductos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001027, 0000000369, NULL, NULL, 4, '7032', 'Desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001028, 0000000370, NULL, NULL, 4, '7041', 'Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001029, 0000000370, NULL, NULL, 4, '7042', 'Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001030, 0000000371, NULL, NULL, 4, '7091', 'Mercaderías - terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001031, 0000000371, NULL, NULL, 4, '7092', 'Mercaderías - relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001032, 0000000371, NULL, NULL, 4, '7093', 'Productos terminados - terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001033, 0000000371, NULL, NULL, 4, '7094', 'Productos terminados - relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001034, 0000000371, NULL, NULL, 4, '7095', 'Subproductos, desechos y desperdicios - terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001035, 0000000371, NULL, NULL, 4, '7096', 'Subproductos, desechos y desperdicios - relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001036, 0000000371, NULL, NULL, 4, '7097', 'Prestación de servicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001037, 0000000372, NULL, NULL, 4, '7111', 'Productos manufacturados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001038, 0000000372, NULL, NULL, 4, '7112', 'Productos de extracción terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001039, 0000000372, NULL, NULL, 4, '7113', 'Productos agropecuarios y piscícolas terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001040, 0000000372, NULL, NULL, 4, '7114', 'Productos inmuebles terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001041, 0000000372, NULL, NULL, 4, '7115', 'Existencias de servicios terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001042, 0000000373, NULL, NULL, 4, '7121', 'Subproductos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001043, 0000000373, NULL, NULL, 4, '7122', 'Desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001044, 0000000374, NULL, NULL, 4, '7131', 'Productos en proceso de manufactura', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001045, 0000000374, NULL, NULL, 4, '7132', 'Productos extraidos en proceso de transformación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001046, 0000000374, NULL, NULL, 4, '7133', 'Productos agropecuarios y piscícolas en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001047, 0000000374, NULL, NULL, 4, '7134', 'Productos inmuebles en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001048, 0000000374, NULL, NULL, 4, '7135', 'Existencias de servicios en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001049, 0000000374, NULL, NULL, 4, '7138', 'Otros productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001050, 0000000375, NULL, NULL, 4, '7141', 'Envases', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001051, 0000000375, NULL, NULL, 4, '7142', 'Embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001052, 0000000377, NULL, NULL, 4, '7211', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001053, 0000000378, NULL, NULL, 4, '7221', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001054, 0000000378, NULL, NULL, 4, '7222', 'Maquinarias y otros equipos de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001055, 0000000378, NULL, NULL, 4, '7223', 'Equipo de transporte', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001056, 0000000378, NULL, NULL, 4, '7224', 'Muebles y enseres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001057, 0000000378, NULL, NULL, 4, '7225', 'Equipos diversos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001058, 0000000378, NULL, NULL, 4, '7226', 'Equipos de comunicación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001059, 0000000378, NULL, NULL, 4, '7227', 'Equipo de seguridad', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001060, 0000000378, NULL, NULL, 4, '7228', 'Otros equipos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001061, 0000000379, NULL, NULL, 4, '7231', 'Programas de computadora (software)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001062, 0000000379, NULL, NULL, 4, '7232', 'Costos de exploración y desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001063, 0000000379, NULL, NULL, 4, '7233', 'Fórmulas, diseños y prototipos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001064, 0000000380, NULL, NULL, 4, '7241', 'Activos biológicos en desarrollo de origen animal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001065, 0000000380, NULL, NULL, 4, '7242', 'Activos biológicos en desarrollo de origen vegetal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001066, 0000000381, NULL, NULL, 4, '7251', 'Costos de financiación - inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001067, 0000000381, NULL, NULL, 4, '7252', 'Costos de financiación - inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001068, 0000000381, NULL, NULL, 4, '7253', 'Costos de financiación - intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001069, 0000000381, NULL, NULL, 4, '7254', 'Costos de financiación - activos biológicos en desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001070, 0000000382, NULL, NULL, 4, '7311', 'Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001071, 0000000382, NULL, NULL, 4, '7312', 'Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001072, 0000000383, NULL, NULL, 4, '7411', 'Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001073, 0000000383, NULL, NULL, 4, '7412', 'Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001074, 0000000387, NULL, NULL, 4, '7541', 'Terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001075, 0000000387, NULL, NULL, 4, '7542', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001076, 0000000387, NULL, NULL, 4, '7543', 'Maquinarias y otros equipos de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001077, 0000000387, NULL, NULL, 4, '7544', 'Equipo de transporte', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001078, 0000000387, NULL, NULL, 4, '7545', 'Equipos diversos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001079, 0000000388, NULL, NULL, 4, '7551', 'Recuperación - Cuentas de cobranza dudosa', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001080, 0000000388, NULL, NULL, 4, '7552', 'Recuperación - Desvalorización de existencias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001081, 0000000388, NULL, NULL, 4, '7553', 'Recuperación - Desvalorización de inversiones mobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001082, 0000000389, NULL, NULL, 4, '7561', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001083, 0000000389, NULL, NULL, 4, '7562', 'Activos adquiridos en arrendamiento financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001084, 0000000389, NULL, NULL, 4, '7563', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001085, 0000000389, NULL, NULL, 4, '7564', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001086, 0000000389, NULL, NULL, 4, '7565', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001087, 0000000391, NULL, NULL, 4, '7591', 'Subsidios gubernamentales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001088, 0000000392, NULL, NULL, 4, '7611', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001089, 0000000392, NULL, NULL, 4, '7612', 'Productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001090, 0000000392, NULL, NULL, 4, '7613', 'Activos no corrientes mantenidos para la venta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001091, 0000000393, NULL, NULL, 4, '7621', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001092, 0000000393, NULL, NULL, 4, '7622', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001093, 0000000395, NULL, NULL, 4, '7721', 'Depósitos en instituciones financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001094, 0000000395, NULL, NULL, 4, '7722', 'Cuentas por cobrar comerciales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001095, 0000000395, NULL, NULL, 4, '7723', 'Préstamos otorgados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001096, 0000000395, NULL, NULL, 4, '7724', 'Inversiones a ser mantenidas hasta el vencimiento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001097, 0000000395, NULL, NULL, 4, '7725', 'Instrumentos financieros representativos de derecho patrimonial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000001098, 0000000402, NULL, NULL, 4, '7792', 'Ingresos financieros en medición a valor descontado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000316, 0000000059, 0000000834, 0000000076, 3, '622', 'Otras remuneraciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000317, 0000000059, 0000000834, 0000000076, 3, '623', 'Indemnizaciones al personal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000318, 0000000059, 0000000834, 0000000076, 3, '624', 'Capacitación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000319, 0000000059, 0000000834, 0000000076, 3, '625', 'Atención al personal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000320, 0000000059, 0000000834, 0000000076, 3, '626', 'Gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000322, 0000000059, 0000000834, 0000000076, 3, '628', 'Remuneraciones al directorio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000856, 0000000306, 0000000533, 0000000874, 4, '6011', 'Mercaderías manufacturadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000857, 0000000306, 0000000140, 0000000875, 4, '6012', 'Mercaderías de extracción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000858, 0000000306, 0000000141, 0000000876, 4, '6013', 'Mercaderías agropecuarias y piscícolas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000859, 0000000306, 0000000142, 0000000877, 4, '6014', 'Mercaderías inmuebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000860, 0000000306, 0000000143, 0000000878, 4, '6018', 'Otras mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000861, 0000000307, 0000000160, 0000000879, 4, '6021', 'Materias primas para productos manufacturados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000862, 0000000307, 0000000161, 0000000880, 4, '6022', 'Materias primas para productos de extracción ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000863, 0000000307, 0000000162, 0000000881, 4, '6023', 'Materias primas para productos agropecuarios y piscícolas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000864, 0000000307, 0000000163, 0000000882, 4, '6024', 'Materias primas para productos inmuebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000865, 0000000308, 0000000164, 0000000883, 4, '6031', 'Materiales auxiliares', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000866, 0000000308, 0000000165, 0000000884, 4, '6032', 'Suministros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000867, 0000000308, 0000000166, 0000000885, 4, '6033', 'Repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000868, 0000000309, 0000000167, 0000000886, 4, '6041', 'Envases', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueAmaDeb`, `CueAmaHab`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (0000000869, 0000000309, 0000000168, 0000000887, 4, '6042', 'Embalajes', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`en_p3m_libro_diario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p3m_libro_diario` (`LibDiaCod`,`LibDiaPer`,`EstRegCod`) VALUES (000001,'2016-Oct','A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_descuento`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_descuento` (`TipDesCod`, `TipDesDet`, `EstRegCod`) VALUES ('01', 'Ninguno', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_descuento` (`TipDesCod`, `TipDesDet`, `EstRegCod`) VALUES ('02', 'Bonos', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_descuento` (`TipDesCod`, `TipDesDet`, `EstRegCod`) VALUES ('03', 'Promociones', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_descuento` (`TipDesCod`, `TipDesDet`, `EstRegCod`) VALUES ('04', 'Devolucion', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_descuento` (`TipDesCod`, `TipDesDet`, `EstRegCod`) VALUES ('05', 'Fallas del producto', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_descuento` (`TipDesCod`, `TipDesDet`, `EstRegCod`) VALUES ('06', 'Entregas extenporaneas', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_descuento` (`TipDesCod`, `TipDesDet`, `EstRegCod`) VALUES ('07', 'Errores de envio', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_descuento` (`TipDesCod`, `TipDesDet`, `EstRegCod`) VALUES ('08', 'Otros', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_devolucion`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_devolucion` (`TipDevCod`, `TipDevDet`, `EstRegCod`) VALUES ('01', 'Falla en el producto', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_devolucion` (`TipDevCod`, `TipDevDet`, `EstRegCod`) VALUES ('02', 'Error de solicitud del cliente', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_devolucion` (`TipDevCod`, `TipDevDet`, `EstRegCod`) VALUES ('03', 'Falta de pago', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_devolucion` (`TipDevCod`, `TipDevDet`, `EstRegCod`) VALUES ('04', 'Entregas extemporaneas', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_devolucion` (`TipDevCod`, `TipDevDet`, `EstRegCod`) VALUES ('05', 'Errores de registro', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_devolucion` (`TipDevCod`, `TipDevDet`, `EstRegCod`) VALUES ('06', 'Errores de envio', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_devolucion` (`TipDevCod`, `TipDevDet`, `EstRegCod`) VALUES ('07', 'Productos Faltantes', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_devolucion` (`TipDevCod`, `TipDevDet`, `EstRegCod`) VALUES ('08', 'Otros', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_destinatario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_destinatario` (`TipDstCod`, `TipDstDet`, `EstRegCod`) VALUES ('01', 'Cliente', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_destinatario` (`TipDstCod`, `TipDstDet`, `EstRegCod`) VALUES ('02', 'Proveedor', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_destinatario` (`TipDstCod`, `TipDstDet`, `EstRegCod`) VALUES ('03', 'El Remitente', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_doc_transportista`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `ta_gzz_tipo_doc_transportista` (`TipDocTraCod`,`TipDocTraDet`,`EstRegCod`) VALUES (01,"DNI","A");
INSERT INTO `ta_gzz_tipo_doc_transportista` (`TipDocTraCod`,`TipDocTraDet`,`EstRegCod`) VALUES (02,"RUC","A");
INSERT INTO `ta_gzz_tipo_doc_transportista` (`TipDocTraCod`,`TipDocTraDet`,`EstRegCod`) VALUES (03,"Licencia","A");

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_motivo_traslado`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('01', 'Ventas', 'A');
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('02', 'Compras', 'A');
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('03', 'Devolucion', 'A');
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('04', 'Consignacion', 'A');
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('05', 'Importacion', 'A');
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('06', 'Exportacion', 'A');
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('07', 'Venta sujeta a confirmación', 'A');
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('08', 'Traslado entre establecimientos de la misma empresa', 'A');
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('09', 'Traslado de bienes para transformación', 'A');
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('10', 'Recojo de bienes', 'A');
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('11', 'Traslado por emisor itinerante', 'A');
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('12', 'Traslado zona primaria', 'A');
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('13', 'Venta con entrega a terceros', 'A');
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` (`MotTraCod`, `MotTraDet`, `EstRegCod`) VALUES ('14', 'Otras no incluida en los puntos anteriores', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_estado_uni_transporte`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;

INSERT INTO `ta_gzz_estado_uni_transporte` (`EstUniTraCod`,`EstUniTraDet`,`EstRegCod`) VALUES (01,"Activo","A");
INSERT INTO `ta_gzz_estado_uni_transporte` (`EstUniTraCod`,`EstUniTraDet`,`EstRegCod`) VALUES (02,"Inactivo","A");
INSERT INTO `ta_gzz_estado_uni_transporte` (`EstUniTraCod`,`EstUniTraDet`,`EstRegCod`) VALUES (03,"En Reparacion","A");
INSERT INTO `ta_gzz_estado_uni_transporte` (`EstUniTraCod`,`EstUniTraDet`,`EstRegCod`) VALUES (04,"En Mantenimiento","A");

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_uni_transporte`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `ta_gzz_tipo_uni_transporte` (`TipUniTraCod`,`TipUniTraDet`,`EstRegCod`) VALUES (01,"Vehiculo Caja-Granel","A");
INSERT INTO `ta_gzz_tipo_uni_transporte` (`TipUniTraCod`,`TipUniTraDet`,`EstRegCod`) VALUES (02,"Vehiculo Caja-Embalajes","A");
INSERT INTO `ta_gzz_tipo_uni_transporte` (`TipUniTraCod`,`TipUniTraDet`,`EstRegCod`) VALUES (03,"Vehiculo Caja-Contenedores","A");
INSERT INTO `ta_gzz_tipo_uni_transporte` (`TipUniTraCod`,`TipUniTraDet`,`EstRegCod`) VALUES (04,"Vehiculo Caja-Jaula","A");
INSERT INTO `ta_gzz_tipo_uni_transporte` (`TipUniTraCod`,`TipUniTraDet`,`EstRegCod`) VALUES (05,"Vehiculo Caja-Otros","A");
INSERT INTO `ta_gzz_tipo_uni_transporte` (`TipUniTraCod`,`TipUniTraDet`,`EstRegCod`) VALUES (06,"Cisterna","A");
INSERT INTO `ta_gzz_tipo_uni_transporte` (`TipUniTraCod`,`TipUniTraDet`,`EstRegCod`) VALUES (07,"Otros","A");

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_canal_cliente`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_canal_cliente` (`CanCliCod`, `CanCliDet`, `EstRegCod`) VALUES ('1', 'Minoristas', 'A');
INSERT INTO `episerp`.`ta_gzz_canal_cliente` (`CanCliCod`, `CanCliDet`, `EstRegCod`) VALUES ('2', 'Mayoristas', 'A');
INSERT INTO `episerp`.`ta_gzz_canal_cliente` (`CanCliCod`, `CanCliDet`, `EstRegCod`) VALUES ('3', 'Intermediarios', 'A');
INSERT INTO `episerp`.`ta_gzz_canal_cliente` (`CanCliCod`, `CanCliDet`, `EstRegCod`) VALUES ('4', 'Almacenistas', 'A');
INSERT INTO `episerp`.`ta_gzz_canal_cliente` (`CanCliCod`, `CanCliDet`, `EstRegCod`) VALUES ('5', 'Revendedores', 'A');
INSERT INTO `episerp`.`ta_gzz_canal_cliente` (`CanCliCod`, `CanCliDet`, `EstRegCod`) VALUES ('6', 'Agentes comerciales', 'A');
INSERT INTO `episerp`.`ta_gzz_canal_cliente` (`CanCliCod`, `CanCliDet`, `EstRegCod`) VALUES ('7', 'Industriales', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_falla_producto`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_falla_producto` (`TipFallProCod`, `TipFallProDet`, `EstRegCod`) VALUES ('1', 'Error de Diseño', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_falla_producto` (`TipFallProCod`, `TipFallProDet`, `EstRegCod`) VALUES ('2', 'Error de Empaquetado/Etiquetado', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_falla_producto` (`TipFallProCod`, `TipFallProDet`, `EstRegCod`) VALUES ('3', 'Cantidad Equivocada', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_falla_producto` (`TipFallProCod`, `TipFallProDet`, `EstRegCod`) VALUES ('4', 'Exceso de Almacenamiento', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_falla_producto` (`TipFallProCod`, `TipFallProDet`, `EstRegCod`) VALUES ('5', 'Inadecuado de Almacenamiento', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_falla_producto` (`TipFallProCod`, `TipFallProDet`, `EstRegCod`) VALUES ('6', 'Error de Transformación', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_falla_producto` (`TipFallProCod`, `TipFallProDet`, `EstRegCod`) VALUES ('7', 'Error de Comercialización', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_falla_producto` (`TipFallProCod`, `TipFallProDet`, `EstRegCod`) VALUES ('8', 'No hay error', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('1', 'Administrador', 'Administrador', 'Administrador', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 1, 1, '1990-01-01', 1, 'N', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_cliente`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_cliente` (`TipCliCod`, `TipCliDet`, `EstRegCod`) VALUES ('1', 'Persona Natural', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_cliente` (`TipCliCod`, `TipCliDet`, `EstRegCod`) VALUES ('2', 'Persona Jurídica', 'A');

COMMIT;

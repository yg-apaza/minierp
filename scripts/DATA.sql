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
INSERT INTO `episerp`.`ta_gzz_tipo_usuario` (`TipUsuCod`, `TipUsuDet`, `EstRegCod`) VALUES (3, 'Comprador', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_usuario` (`TipUsuCod`, `TipUsuDet`, `EstRegCod`) VALUES (4, 'Contador', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_sucursal`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES (1, 'Sucursal Arequipa', 'Av. Venezuela s/n', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('41273392', 'Administrador', 'Administrador', 'Administrador', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 1, 1, '1990-01-01', 1, 'N', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_empresa`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p1m_empresa` (`EmpCod`, `EmpNom`, `EmpDes`, `EmpDir`, `EmpTel`, `EmpCor`, `EmpIGV`, `EmpRUC`, `EmpImg`) VALUES (1, 'MOT S.A.', 'Empresa de Desarrollo de Software', 'Av. Venezuela s/n', '054202212', 'mot@episunsa.edu.pe', 18, '10230499411', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_moneda`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_moneda` (`MonCod`, `MonDet`, `EstRegCod`) VALUES (1, 'NUEVOS SOLES', 'A');
INSERT INTO `episerp`.`ta_gzz_moneda` (`MonCod`, `MonDet`, `EstRegCod`) VALUES (2, 'DOLARES AMERICANOS', 'A');
INSERT INTO `episerp`.`ta_gzz_moneda` (`MonCod`, `MonDet`, `EstRegCod`) VALUES (9, 'OTRA MONEDA', 'A');

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
INSERT INTO `episerp`.`ta_gzz_unidad_med` (`UniMedCod`, `UniMedDet`, `EstRegCod`) VALUES (1, 'Unidades', 'A');
INSERT INTO `episerp`.`ta_gzz_unidad_med` (`UniMedCod`, `UniMedDet`, `EstRegCod`) VALUES (2, 'Kilogramos', 'A');
INSERT INTO `episerp`.`ta_gzz_unidad_med` (`UniMedCod`, `UniMedDet`, `EstRegCod`) VALUES (3, 'Litros', 'A');
INSERT INTO `episerp`.`ta_gzz_unidad_med` (`UniMedCod`, `UniMedDet`, `EstRegCod`) VALUES (4, 'Metros', 'A');
INSERT INTO `episerp`.`ta_gzz_unidad_med` (`UniMedCod`, `UniMedDet`, `EstRegCod`) VALUES (5, 'Cajas', 'A');
INSERT INTO `episerp`.`ta_gzz_unidad_med` (`UniMedCod`, `UniMedDet`, `EstRegCod`) VALUES (6, 'Bolsas', 'A');

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
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (1, NULL, 1, '1', 'Activo Disponible y Exigible', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (2, NULL, 1, '2', 'Activo Realizable', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (3, NULL, 1, '3', 'Activo Inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (4, NULL, 1, '4', 'Pasivo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (5, NULL, 1, '5', 'Patrimonio Neto', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (6, NULL, 1, '6', 'Gastos por Naturaleza', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (7, NULL, 1, '7', 'Ingresos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (8, NULL, 1, '8', 'Saldos Intermediarios de gestión y determinación del resultado del ejercicio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (9, NULL, 1, '9', 'Costos de producción y gastos por función', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (10, NULL, 1, '0', 'Cuentas de orden', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (11, 1, 2, '10', 'Efectivo y Equivalentes de Efectivo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (12, 1, 2, '11', 'Inversiones Financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (13, 1, 2, '12', 'Cuentas por Cobrar comerciales - Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (14, 1, 2, '13', 'Cuentas por Cobrar comerciales - Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (15, 1, 2, '14', 'Cuentas por Cobrar al Personal, a los Accionistas (Socios), Directores y Gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (16, 1, 2, '16', 'Cuentas por Cobrar diversas - Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (17, 1, 2, '17', 'Cuentas por Cobrar diversas - Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (18, 1, 2, '18', 'Servicios y otros contratados por anticipado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (19, 1, 2, '19', 'Estimación de cuentas de cobranza dudosa', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (20, 2, 2, '20', 'Mercaderias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (21, 2, 2, '21', 'Productos Terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (22, 2, 2, '22', 'Subproductos, desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (23, 2, 2, '23', 'Productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (24, 2, 2, '24', 'Materias primas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (25, 2, 2, '25', 'Materiales auxiliares, suministros y repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (26, 2, 2, '26', 'Envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (27, 2, 2, '27', 'Activos no corrientes mantenidos para la venta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (28, 2, 2, '28', 'Existencias por recibir', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (29, 2, 2, '29', 'Desvalorización de existencias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (30, 3, 2, '30', 'Inversiones mobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (31, 3, 2, '31', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (32, 3, 2, '32', 'Activos adquiridos en arrendamiento financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (33, 3, 2, '33', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (34, 3, 2, '34', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (35, 3, 2, '35', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (36, 3, 2, '36', 'Desvalorización de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (37, 3, 2, '37', 'Activo diferido', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (38, 3, 2, '38', 'Otros activos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (39, 3, 2, '39', 'Depreciación, amortización y agotamiento acumulados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (40, 4, 2, '40', 'Tributos y aportes al sistema de pensiones y de salud por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (41, 4, 2, '41', 'Remuneraciones y participaciones por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (42, 4, 2, '42', 'Cuentas por Pagar comerciales - Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (43, 4, 2, '43', 'Cuentas por Pagar comerciales - Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (44, 4, 2, '44', 'Cuentas por pagar a los accionistas, directores y gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (45, 4, 2, '45', 'Obligaciones financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (46, 4, 2, '46', 'Cuentas por Pagar diversas - Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (47, 4, 2, '47', 'Cuentas por Pagar diversas - Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (48, 4, 2, '48', 'Provisiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (49, 4, 2, '49', 'Pasivo diferido', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (50, 5, 2, '50', 'Capital', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (51, 5, 2, '51', 'Acciones de inversión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (52, 5, 2, '52', 'Capital adicional', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (53, 5, 2, '56', 'Resultados no realizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (54, 5, 2, '57', 'Excedente de revaluación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (55, 5, 2, '58', 'Reservas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (56, 5, 2, '59', 'Resultados acumulados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (57, 6, 2, '60', 'Compras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (58, 6, 2, '61', 'Variación de existencias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (59, 6, 2, '62', 'Gastos de personal, directores y gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (60, 6, 2, '63', 'Gastos por servicios prestados por terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (61, 6, 2, '64', 'Gastos por tributos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (62, 6, 2, '65', 'Otros gastos de gestión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (63, 6, 2, '66', 'Pérdida por medición de activos no financieros al valor razonble', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (64, 6, 2, '67', 'Gastos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (65, 6, 2, '68', 'Valuación y deterioro de activos y provisiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (66, 6, 2, '69', 'Costo de ventas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (67, 7, 2, '70', 'Ventas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (68, 7, 2, '71', 'Variación de la producción almacenada', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (69, 7, 2, '72', 'Producción de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (70, 7, 2, '73', 'Descuentos, rebajas y bonificaciones obtenidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (71, 7, 2, '74', 'Descuentos, rebajas y bonificiones concedidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (72, 7, 2, '75', 'Otros ingresos de gestión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (73, 7, 2, '76', 'Ganancia por medición de activos no financieros al valor no razonble', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (74, 7, 2, '77', 'Ingresos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (75, 7, 2, '78', 'Cargas cubiertos por provisiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (76, 7, 2, '79', 'Cargas imputables a cuentas de costos y gastos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (77, 8, 2, '80', 'Margen comercial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (78, 8, 2, '81', 'Producción del ejercicio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (79, 8, 2, '82', 'Valor agregado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (80, 8, 2, '83', 'Excedente bruto (insuficiencia bruta) de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (81, 8, 2, '84', 'Resultado de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (82, 8, 2, '85', 'Resultado antes de participaciones e impuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (83, 8, 2, '87', 'Participaciones de los trabajadores', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (84, 8, 2, '88', 'Impuesto a la renta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (85, 8, 2, '89', 'Determinación del resultado del ejercicio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (86, 10, 2, '01', 'Bienes y valores entregados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (87, 10, 2, '02', 'Derechos sobre instrumentos financieros derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (88, 10, 2, '03', 'Otras cuentas de orden deudoras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (89, 10, 2, '04', 'Deudores por contra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (90, 10, 2, '06', 'Bienes y valores recibidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (91, 10, 2, '07', 'Compromisos sobre instrumentos financieros derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (92, 10, 2, '08', 'Otras cuentas de orden acreedoras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (93, 10, 2, '09', 'Acreedoras por contra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (94, 11, 3, '101', 'Caja', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (95, 11, 3, '102', 'Fondos Fijos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (96, 11, 3, '103', 'Efectivo en tránsito', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (97, 11, 3, '104', 'Cuentas corrientes en instituciones financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (98, 11, 3, '105', 'Otros equivalentes de efectivo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (99, 11, 3, '106', 'Depósitos en instituciones financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (100, 11, 3, '107', 'Fondos sujetos a restricción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (101, 12, 3, '111', 'Inversiones mantenidas para negociación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (102, 12, 3, '112', 'Inversiones disponibles para la venta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (103, 12, 3, '113', 'Activos financieros - Acuerdo de compra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (104, 13, 3, '121', 'Facturas, boletas y otros comprobantes por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (105, 13, 3, '122', 'Anticipos de clientes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (106, 13, 3, '123', 'Letras por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (107, 14, 3, '131', 'Facturas, boletas y otros comprobantes por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (108, 14, 3, '132', 'Anticipos recibidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (109, 14, 3, '133', 'Letras por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (110, 15, 3, '141', 'Personal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (111, 15, 3, '142', 'Accionistas (o socios)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (112, 15, 3, '143', 'Directores', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (113, 15, 3, '144', 'Gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (114, 15, 3, '148', 'Diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (115, 16, 3, '161', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (116, 16, 3, '162', 'Reclamaciones a terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (117, 16, 3, '163', 'Intereses, regalías y dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (118, 16, 3, '164', 'Depósitos otorgados en garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (119, 16, 3, '165', 'Venta de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (120, 16, 3, '166', 'Activos por instrumentos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (121, 16, 3, '168', 'Otras cuentas por cobrar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (122, 17, 3, '171', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (123, 17, 3, '173', 'Intereses, regalías y dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (124, 17, 3, '174', 'Depósitos otorgados en garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (125, 17, 3, '175', 'Venta de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (126, 17, 3, '176', 'Activos por instrumentos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (127, 17, 3, '178', 'Otras cuentas por cobrar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (128, 18, 3, '181', 'Costos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (129, 18, 3, '182', 'Seguros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (130, 18, 3, '183', 'Alquileres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (131, 18, 3, '184', 'Primas pagadas por opciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (132, 18, 3, '185', 'Mantenimiento de activos inmovilizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (133, 18, 3, '189', 'Otros gastos contratados por anticipado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (134, 19, 3, '191', 'Cuentas por cobrar comerciales - Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (135, 19, 3, '192', 'Cuentas por cobrar comerciales - Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (136, 19, 3, '193', 'Cuentas por cobrar al personal, a los accionistas (socios), directores y gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (137, 19, 3, '194', 'Cuentas por cobrar diversas - Terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (138, 19, 3, '195', 'Cuentas por cobrar diversas - Relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (139, 20, 3, '201', 'Mercaderías manufacturadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (140, 20, 3, '202', 'Mercaderías de extracción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (141, 20, 3, '203', 'Mercaderías agropecuarias y piscícolas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (142, 20, 3, '204', 'Mercaderías inmuebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (143, 20, 3, '208', 'Otras mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (144, 21, 3, '211', 'Productos  manufacturados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (145, 21, 3, '212', 'Productos de extracción termiandos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (146, 21, 3, '213', 'Productos agropecuarios y piscícolas terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (147, 21, 3, '214', 'Productos inmuebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (148, 21, 3, '215', 'Existencias de servicios terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (149, 21, 3, '217', 'Otros productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (150, 21, 3, '218', 'Costos de financiación - Productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (151, 22, 3, '221', 'Subproductos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (152, 22, 3, '222', 'Desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (153, 23, 3, '231', 'Productos en proceso de manufactura', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (154, 23, 3, '232', 'Productos extraídos en proceso de transformación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (155, 23, 3, '233', 'Productos agropecuarios de piscícolas en proceso ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (156, 23, 3, '234', 'Productos inmuebles en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (157, 23, 3, '235', 'Existencias de servicios en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (158, 23, 3, '237', 'Otros productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (159, 23, 3, '238', 'Costos de financiación - Productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (160, 24, 3, '241', 'Materias primas para productos manufacturados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (161, 24, 3, '242', 'Materias primas para productos de extracción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (162, 24, 3, '243', 'Materias primas para productos agropecuarios y piscícolas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (163, 24, 3, '244', 'Materias primas para productos inmuebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (164, 25, 3, '251', 'Materiales auxiliares', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (165, 25, 3, '252', 'Suministros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (166, 25, 3, '253', 'Repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (167, 26, 3, '261', 'Envases', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (168, 26, 3, '262', 'Embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (169, 27, 3, '271', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (170, 27, 3, '272', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (171, 27, 3, '273', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (172, 27, 3, '274', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (173, 27, 3, '275', 'Depreciación acumulada - Inversión inmobiliaria', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (174, 27, 3, '276', 'Depreciación acumulada - Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (175, 27, 3, '277', 'Amortización acumulada - Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (176, 27, 3, '278', 'Depreciación acumulada - Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (177, 27, 3, '279', 'Desvalorización acumulada', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (178, 28, 3, '281', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (179, 28, 3, '284', 'Materias primas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (180, 28, 3, '285', 'Materiales auxiliares, suministros y repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (181, 28, 3, '286', 'Envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (182, 29, 3, '291', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (183, 29, 3, '292', 'Productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (184, 29, 3, '293', 'Subproductos, desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (185, 29, 3, '294', 'Productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (186, 29, 3, '295', 'Materias primas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (187, 29, 3, '296', 'Materiales auxiliares, suministros y repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (188, 29, 3, '297', 'Envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (189, 29, 3, '298', 'Existencias por recibir', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (190, 30, 3, '301', 'Inversiones a ser mantenidas hasta el vencimiento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (191, 30, 3, '302', 'Instrumentos financieros representativos de derecho patrimonial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (192, 30, 3, '308', 'Inversiones mobiliarias - Acuerdos de compra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (193, 31, 3, '311', 'Terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (194, 31, 3, '312', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (195, 32, 3, '321', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (196, 32, 3, '322', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (197, 33, 3, '331', 'Terrenos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (198, 33, 3, '332', 'Edificaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (199, 33, 3, '333', 'Maquinarias y equipos de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (200, 33, 3, '334', 'Unidades de transporte', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (201, 33, 3, '335', 'Muebles y enseres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (202, 33, 3, '336', 'Equipos diversos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (203, 33, 3, '337', 'Herramientas y unidades de reemplazo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (204, 33, 3, '338', 'Unidades por recibir', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (205, 33, 3, '339', 'Construcciones y obras en curso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (206, 34, 3, '341', 'Concesiones, licencias y otros derechos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (207, 34, 3, '342', 'Patentes y propiedad industrial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (208, 34, 3, '343', 'Programas de computadora (software)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (209, 34, 3, '344', 'Costos de exploración y desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (210, 34, 3, '345', 'Fórmulas, diseños y prototipos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (211, 34, 3, '346', 'Reservas de recursos extraibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (212, 34, 3, '347', 'Plusvalía mercantil', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (213, 34, 3, '349', 'Otros activos intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (214, 35, 3, '351', 'Activos biológicos en producción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (215, 35, 3, '352', 'Activos biológicos en desarrollo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (216, 36, 3, '361', 'Desvalorización en inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (217, 36, 3, '363', 'Desvalorización en inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (218, 36, 3, '364', 'Desvalorización de intangibles ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (219, 36, 3, '365', 'Desvalorización de activos biológicos ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (220, 36, 3, '366', 'Desvalorizaciónv de inversiones mobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (221, 37, 3, '371', 'Impuesto a la renta diferido', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (222, 37, 3, '372', 'Participaciones de los trabajadores diferidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (223, 37, 3, '373', 'Interese diferidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (224, 38, 3, '381', 'Bienes de arte y cultura', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (225, 38, 3, '382', 'Diversos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (226, 39, 3, '391', 'Depreciación acumulada', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (227, 39, 3, '392', 'Amortización acumulada', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (228, 39, 3, '393 ', 'Agotamiento acumulado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (229, 40, 3, '401', 'Gobierno central', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (230, 40, 3, '402', 'Certificados tributarios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (231, 40, 3, '403', 'Instituciones públicas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (232, 40, 3, '405', 'Gobiernos regionales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (233, 40, 3, '406', 'Gobiernos locales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (234, 40, 3, '407', 'Administradoras de fondos de pensiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (235, 40, 3, '408', 'Empresas prestadoras de servicios de salud', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (236, 40, 3, '409', 'Otros costos administrativos e intereses', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (237, 41, 3, '411', 'Remuneraciones por pagar ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (238, 41, 3, '413', 'Participaciones de trabajadores por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (239, 41, 3, '415', 'Beneficios sociales de los trabajadores por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (240, 41, 3, '419', 'Otras remuneraciones y participaciones por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (241, 42, 3, '421', 'Facturas, boletas y otros comprobantes por pagar ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (242, 42, 3, '422', 'Anticipos a proveedores', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (243, 42, 3, '423', 'Letras por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (244, 42, 3, '424', 'Honorarios por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (245, 43, 3, '431', 'Facturas, boletas y otros comprobantes por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (246, 43, 3, '432', 'Anticipos otorgados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (247, 43, 3, '433', 'Letras por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (248, 43, 3, '434', 'Honorarios por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (249, 44, 3, '441', 'Accionistas (o socios)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (250, 44, 3, '442', 'Directores', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (251, 44, 3, '443', 'Gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (252, 45, 3, '451', 'Préstamos de instituciones financieras y otras entidades', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (253, 45, 3, '452', 'Contratos de arrendamiento financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (254, 45, 3, '453', 'Obligaciones emitidas ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (255, 45, 3, '454', 'Otros instrumentos financieros por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (256, 45, 3, '455', 'Costos de financiación por pagar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (257, 45, 3, '456', 'Préstamos con compromisos de recompra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (258, 46, 3, '461', 'Reclamaciones de terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (259, 46, 3, '464', 'Pasivos por instrumentos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (260, 46, 3, '465', 'Pasivos por compra de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (261, 46, 3, '467', 'Dépositos recibidos en garantía ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (262, 46, 3, '469', 'Otras cuentas por pagar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (263, 47, 3, '471', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (264, 47, 3, '472', 'Costos de financiación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (265, 47, 3, '473', 'Anticipos recibidos ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (266, 47, 3, '474', 'Regalías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (267, 47, 3, '475', 'Dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (268, 47, 3, '477', 'Pasivo por compra de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (269, 47, 3, '479', 'Otras cuentas por pagar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (270, 48, 3, '481', 'Provisión para litigios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (271, 48, 3, '482', 'Provisión por desmantelamiento, retiro o rehabilitación del inmovilzado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (272, 48, 3, '483', 'Provisión para reestructuraciones ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (273, 48, 3, '484', 'Provisión para protección y remediación del medio ambiente', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (274, 48, 3, '485', 'Provisión para gastos de responsabilidad social', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (275, 48, 3, '486', 'Provisión para garantías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (276, 48, 3, '489', 'Otras provisiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (277, 49, 3, '491', 'Impuesto a la renta diferido', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (278, 49, 3, '492', 'Participaciones de los trabajadores diferidas ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (279, 49, 3, '493', 'Intereses diferidos ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (280, 49, 3, '494', 'Ganancia en venta con arrendamiento financiero paralelo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (281, 49, 3, '495', 'Subsidios recibidos diferidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (282, 49, 3, '496', 'Ingresos diferidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (283, 49, 3, '497', 'Costos diferidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (284, 50, 3, '501', 'Capital social', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (285, 50, 3, '502', 'Acciones de tesorería', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (286, 51, 3, '511', 'Acciones de inversión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (287, 51, 3, '512', 'Acciones de inversión en tesorería', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (288, 52, 3, '521', 'Primas (descuento) de acciones ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (289, 52, 3, '522', 'Capitalizaciones en trámite', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (290, 52, 3, '523', 'Reducciones de capital pendientes de formalización', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (291, 53, 3, '561', 'Diferencia en cambio de inversiones permanentes en entidades extranjeras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (292, 53, 3, '562', 'Instrumentos financieros - Cobertura de flujo de efectivo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (293, 53, 3, '563', 'Ganancia o pérdida en activos o pasivos financieros disponibles para la venta ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (294, 53, 3, '564', 'Ganancia o pérdida en activos o pasivos financieros disponibles para la venta - Compra o venta convencional fecha de liquidación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (295, 54, 3, '571', 'Excedente de revaluación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (296, 54, 3, '572', 'Excedente de revaluación - Acciones liberadas recibidas ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (297, 54, 3, '573', 'Participación en excedente de revaluación - Inversiones en entidades relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (298, 55, 3, '581', 'Reinversión ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (299, 55, 3, '582', 'Legal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (300, 55, 3, '583', 'Contractuales', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (301, 55, 3, '584', 'Estatutarias ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (302, 55, 3, '585', 'Facultativas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (303, 55, 3, '589', 'Otras reservas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (304, 56, 3, '591', 'Utilidades no distribuidas ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (305, 56, 3, '592', 'Pérdidas acumuladas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (306, 57, 3, '601', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (307, 57, 3, '602', 'Materias primas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (308, 57, 3, '603', 'Materiales auxiliares, suministros y repuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (309, 57, 3, '604', 'Envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (310, 57, 3, '609', 'Costos vinculados con las compras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (311, 58, 3, '611', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (312, 58, 3, '612', 'Materias primas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (313, 58, 3, '613', 'Materiales auxiliares, suministros y repuestos ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (314, 58, 3, '614', 'Envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (315, 59, 3, '621', 'Remuneraciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (316, 59, 3, '622', 'Otras remuneraciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (317, 59, 3, '623', 'Indemnizaciones al personal ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (318, 59, 3, '624', 'Capacitación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (319, 59, 3, '625', 'Atención al personal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (320, 59, 3, '626', 'Gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (321, 59, 3, '627', 'Seguridad, previsión social y otras contribuciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (322, 59, 3, '628', 'Retribuciones al directorio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (323, 59, 3, '629', 'Beneficios sociales de los trabajadores', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (324, 60, 3, '631', 'Transporte, correos y gastos de viaje', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (325, 60, 3, '632', 'Asesoría y consultoría', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (326, 60, 3, '633', 'Producción encargada a terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (327, 60, 3, '634', 'Mantenimiento y reparaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (328, 60, 3, '635', 'Alquileres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (329, 60, 3, '636', 'Servicios básicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (330, 60, 3, '637', 'Publicidad, publicaciones, relaciones públicas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (331, 60, 3, '638', 'Servicios de contratistas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (332, 60, 3, '639', 'Otros servicios prestados por terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (333, 61, 3, '641', 'Gobierno central', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (334, 61, 3, '642', 'Gobierno regional', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (335, 61, 3, '643', 'Gobierno local', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (336, 61, 3, '644', 'Otros gastos por tributos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (337, 62, 3, '651', 'Seguros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (338, 62, 3, '652', 'Regalías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (339, 62, 3, '653', 'Suscipciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (340, 62, 3, '654', 'Licencias y derechos de vigencia ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (341, 62, 3, '655', 'Costo neto de enajenación de activos inmovilizados y operaciones discontinuadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (342, 62, 3, '656', 'Suministros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (343, 62, 3, '658', 'Gestión medio ambiental', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (344, 62, 3, '659', 'Otros gastos de gestión', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (345, 63, 3, '661', 'Activo realizable', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (346, 63, 3, '662', 'Activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (347, 64, 3, '671', 'Gastos en operaciones de endeudamiento y otros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (348, 64, 3, '672', 'Pérdida por instrumentos financieros derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (349, 64, 3, '673', 'Intereses por préstamos y otras obligaciones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (350, 64, 3, '674', 'Gastos en operaciones de factoraje (factoring)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (351, 64, 3, '675', 'Descuentos concedidos por pronto pago', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (352, 64, 3, '676', 'Diferencia de cambio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (353, 64, 3, '677', 'Pérdida por medición de activos y pasivos financieros al valor razonable', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (354, 64, 3, '678', 'Participación en resultados de entidades relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (355, 64, 3, '679', 'Otros gastos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (356, 65, 3, '681', 'Depreciación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (357, 65, 3, '682', 'Amortización de intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (358, 65, 3, '683', 'Agotamiento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (359, 65, 3, '684', 'Valuación de activos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (360, 65, 3, '685', 'Deterioro del valor de los activos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (361, 65, 3, '686', 'Provisiones', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (362, 66, 3, '691', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (363, 66, 3, '692', 'Productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (364, 66, 3, '693', 'Subproductos, desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (365, 66, 3, '694', 'Servicios ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (366, 66, 3, '695', 'Gastos por desvalorización de existencias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (367, 67, 3, '701', 'Mercaderías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (368, 67, 3, '702', 'Productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (369, 67, 3, '703', 'Subproductos, desechos  y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (370, 67, 3, '704', 'Prestación de servicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (371, 67, 3, '709', 'Devoluciones sobre ventas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (372, 68, 3, '711', 'Variación de productos terminados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (373, 68, 3, '712', 'Variación de subproductos, desechos y desperdicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (374, 68, 3, '713', 'Variación de productos en proceso', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (375, 68, 3, '714', 'Variación de envases y embalajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (376, 68, 3, '715', 'Variación de existencias de servicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (377, 69, 3, '721', 'Inversiones inmobiliarias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (378, 69, 3, '722', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (379, 69, 3, '723', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (380, 69, 3, '724', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (381, 69, 3, '725', 'Costos de financiación capitalizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (382, 70, 3, '731', 'Descuentos, rebajas y bonificaciones obtenidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (383, 71, 3, '741', 'Descuentos, rebajas y bonificaciones concedidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (384, 72, 3, '751', 'Servicios en beneficio personal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (385, 72, 3, '752', 'Comisiones y corretajes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (386, 72, 3, '753', 'Regalías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (387, 72, 3, '754', 'Alquileres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (388, 72, 3, '755', 'Recuperación de cuentas de valuación ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (389, 72, 3, '756', 'Enajenación de activos inmovilizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (390, 72, 3, '757', 'Recuperación de deterioro de cuentas de activos inmovilizados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (391, 72, 3, '759', 'Otros ingresos de gestión ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (392, 73, 3, '761', 'Activo realizable', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (393, 73, 3, '762', 'Activo inmobilizable', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (394, 74, 3, '771', 'Ganancia por instrumento financiero derivado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (395, 74, 3, '772', 'Rendimientos ganados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (396, 74, 3, '773', 'Dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (397, 74, 3, '774', 'Ingresos en operaciones de factoraje (factoring)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (398, 74, 3, '775', 'Descuentos obtenidos por pronto pago', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (399, 74, 3, '776', 'Diferencia en cambio', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (400, 74, 3, '777', 'Ganancia por medición de activos y pasivos financieros al valor razonable', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (401, 74, 3, '778', 'Participación en resultados de entidades relacionadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (402, 74, 3, '779', 'Otros ingresos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (403, 75, 3, '781', 'Cargas cubiertas por provisiones ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (404, 76, 3, '791', 'Cargas imputables a cuentas de costos y gastos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (405, 76, 3, '792', 'Gastos financieros imputables a cuentas de existencias', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (406, 77, 3, '801', 'Margen comercial', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (407, 78, 3, '811', 'Producción de bienes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (408, 78, 3, '812', 'Producción de servicios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (409, 78, 3, '813', 'Producción de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (410, 79, 3, '821', 'Valor agregado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (411, 80, 3, '831', 'Excedente bruto (insuficiencia bruta) de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (412, 81, 3, '841', 'Resultado de explotación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (413, 82, 3, '851', 'Resultado antes de participaciones e impuestos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (414, 83, 3, '871', 'Participación de los trabajadores - Corriente', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (415, 83, 3, '872', 'Participación de los trabajadores - Diferida', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (416, 84, 3, '881', 'Impuesto a la renta - Corriente', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (417, 84, 3, '882', 'Impuesto a la renta - Diferido', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (418, 85, 3, '891', 'Utilidad', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (419, 85, 3, '892', 'Pérdida', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (420, 86, 3, '011', 'Bienes en préstamo, custodia y no capitalizables', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (421, 86, 3, '012', 'Valores y bienes entregados en garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (422, 86, 3, '013', 'Activos realizables entregados en consignación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (423, 87, 3, '021', 'Primarios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (424, 87, 3, '022', 'Derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (425, 88, 3, '031', 'Contratos aprobados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (426, 88, 3, '032', 'Bienes dados de baja', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (427, 88, 3, '039', 'Diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (428, 89, 3, '061', 'Bienes recibidos en préstamo y custodia', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (429, 89, 3, '062', 'Valores y bienes recibidos con garantía ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (430, 89, 3, '063', 'Activos realizables recibidos en consignación', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (431, 90, 3, '071', 'Primarios', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (432, 90, 3, '072', 'Derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (433, 91, 3, '089', 'Diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (434, 97, 4, '1041', 'Cuentas corrientes operativas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (435, 97, 4, '1042', 'Cuentas corrientes para fines específicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (436, 98, 4, '1051', 'Otros equivalentes de efectivo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (437, 99, 4, '1061', 'Depósitos de ahorro', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (438, 99, 4, '1062', 'Depósitos a plazo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (439, 100, 4, '1071', 'Fondos Sujetos a Restricción', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (440, 101, 4, '1111', 'Valores emitidos o garantizados por el estado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (441, 101, 4, '1112', 'Valores emitidos por el sistema financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (442, 101, 4, '1113', 'Valores emitidos por empresa', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (443, 101, 4, '1114', 'Otros títulos representativos de deuda', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (444, 101, 4, '1115', 'Participaciones en entidades', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (445, 102, 4, '1121', 'Valores emitidos o garantizados por el estado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (446, 102, 4, '1122', 'Valores emitidos por el sistema financiero', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (447, 102, 4, '1123', 'Valores emitidos por empresas ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (448, 102, 4, '1124', 'Otros títulos representativos de deuda ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (449, 103, 4, '1131', 'Inversiones mantenidas para negociación - Acuerdo de compra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (450, 103, 4, '1132', 'Inversiones disponibles para la venta - Acuerdo de compra', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (451, 104, 4, '1211', 'No emitidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (452, 104, 4, '1212', 'Emitidas en cartera', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (453, 104, 4, '1213', 'En cobranza', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (454, 104, 4, '1214', 'En descuento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (455, 106, 4, '1231', 'En cartera', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (456, 106, 4, '1232', 'En cobranza', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (457, 106, 4, '1233', 'En descuento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (458, 107, 4, '1311', 'No emitidas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (459, 107, 4, '1312', 'Emitidas en cartera', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (460, 107, 4, '1313', 'En cobranza', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (461, 107, 4, '1314', 'En descuento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (462, 108, 4, '1321', 'Anticipos recibidos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (463, 109, 4, '1331', 'En cartera', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (464, 109, 4, '1332', 'En cobranza', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (465, 109, 4, '1333', 'En descuento', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (466, 110, 4, '1411', 'Préstamos ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (467, 110, 4, '1412', 'Adelanto de remuneraciones ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (468, 110, 4, '1413', 'Entregas a rendir cuenta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (469, 110, 4, '1419', 'Otras cuentas por cobrar al personal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (470, 111, 4, '1421', 'Suscripciones por cobrar a socios o accionistas ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (471, 111, 4, '1422', 'Préstamos ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (472, 112, 4, '1431', 'Préstamos ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (473, 112, 4, '1432', 'Adelanto a dietas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (474, 112, 4, '1433', 'Entregas a rendir cuenta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (475, 113, 4, '1441', 'Préstamos ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (476, 113, 4, '1442', 'Adelanto a remuneraciones ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (477, 113, 4, '1443', 'Entregas a rendir cuenta', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (478, 115, 4, '1611', 'Con garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (479, 115, 4, '1612', 'Sin garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (480, 116, 4, '1621', 'Compañías aseguradoras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (481, 116, 4, '1622', 'Transportadoras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (482, 116, 4, '1623', 'Servicios públicos ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (483, 116, 4, '1624', 'Tributos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (484, 116, 4, '1629', 'Otras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (485, 117, 4, '1631', 'Intereses', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (486, 117, 4, '1632', 'Regalías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (487, 117, 4, '1633', 'Dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (488, 118, 4, '1641', 'Préstamos de instituciones financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (489, 118, 4, '1642', 'Préstamos de instituciones no financieras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (490, 118, 4, '1644', 'Depósitos en garantía por alquileres', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (491, 118, 4, '1649', 'Otros depósitos en garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (492, 119, 4, '1651', 'Inversión mobiliaria', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (493, 119, 4, '1652', 'Inversión inmobiliaria', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (494, 119, 4, '1653', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (495, 119, 4, '1654', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (496, 119, 4, '1655', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (497, 120, 4, '1661', 'Instrumentos financieros primarios ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (498, 120, 4, '1662', 'Instrumentos financieros derivados', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (499, 121, 4, '1681', 'Entregas a rendir cuenta a terceros ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (500, 121, 4, '1682', 'Otras cuenta por cobrar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (501, 122, 4, '1711', 'Con garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (502, 122, 4, '1712', 'Sin garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (503, 123, 4, '1731', 'Intereses', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (504, 123, 4, '1732', 'Regalías', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (505, 123, 4, '1733', 'Dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (506, 125, 4, '1751', 'Inversión mobiliaria', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (507, 125, 4, '1752', 'Inversión inmobiliaria', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (508, 125, 4, '1753', 'Inmuebles, maquinaria y equipo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (509, 125, 4, '1754', 'Intangibles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (510, 125, 4, '1755', 'Activos biológicos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (511, 134, 4, '1911', 'Facturas, boletas y otros comprobantes por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (512, 134, 4, '1913', 'Letras por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (513, 135, 4, '1921', 'Facturas, boletas y otros comprobantes por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (514, 135, 4, '1922', 'Letras por cobrar', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (515, 136, 4, '1931', 'Personal', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (516, 136, 4, '1932', 'Accionistas (o socios)', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (517, 136, 4, '1933', 'Directores ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (518, 136, 4, '1934', 'Gerentes', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (519, 136, 4, '1938', 'Diversas ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (520, 137, 4, '1941', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (521, 137, 4, '1942', 'Reclamaciones a terceros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (522, 137, 4, '1943', 'Intereses, regalías y dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (523, 137, 4, '1944', 'Depósitos otorgados en garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (524, 137, 4, '1945', 'Venta de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (525, 137, 4, '1946', 'Activos por instrumentos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (526, 137, 4, '1949', 'Otras cuentas por cobrar diversas ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (527, 138, 4, '1951', 'Préstamos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (528, 138, 4, '1953', 'Intereses, regalías y dividendos', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (529, 138, 4, '1954', 'Depósitos otorgados en garantía', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (530, 138, 4, '1955', 'Venta de activo inmovilizado', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (531, 138, 4, '1956', 'Activos por instrumentos financieros', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (532, 138, 4, '1958', 'Otras cuentas por cobrar diversas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (533, 229, 4, '4011', 'Impuesto general a las ventas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (534, 229, 4, '4012', 'Impuesto selectivo al consumo', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (535, 367, 4, '7011', 'Mercaderías manufacturadas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (536, 367, 4, '7012', 'Mercaderías de extracción ', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (537, 367, 4, '7013', 'Mercaderías agropecuarias y piscícolas', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (538, 367, 4, '7014', 'Mercaderías inmuebles', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (539, 367, 4, '7015', 'Mercaderías - Otras', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (540, 434, 5, '10410', 'CENTRAL DE RESERVA DEL PERU', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (541, 434, 5, '10411', 'NACION', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (542, 434, 5, '10412', 'SCOTIABANK PERU', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (543, 9, 2, '94', 'Gastos Administrativos', 'A');

COMMIT;

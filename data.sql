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
-- Data for table `episerp`.`en_p1m_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('41379060', 'Administrador', 'Administrador', 'Administrador', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 1, '1990-01-01', 1, 'N', 'A');

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

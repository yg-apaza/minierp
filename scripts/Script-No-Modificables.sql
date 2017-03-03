-- -- Script -- --

-- NO MODIFICABLES ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_estado_civil`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_estado_civil` 
(`EstCivCod`, `EstCivDet`, `EstRegCod`) 
VALUES 
('1', 'Soltero', 'A'),
('2', 'Casado', 'A'),
('3', 'Divorciado', 'A'),
('4', 'Viudo', 'A'),
('5', 'No Espesifica', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_usuario` 
(`TipUsuCod`, `TipUsuDet`, `EstRegCod`) 
VALUES 
('1', 'Administrador', 'A'),
('2', 'Vendedor', 'A'),
('3', 'Contador', 'A'),
('4', 'Gerente', 'A'),
('5', 'Cajero', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_sucursal`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p1m_sucursal` 
(`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) 
VALUES 
('1', 'Sucursal Principal', '-', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_punto_venta`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_punto_venta` 
(`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) 
VALUES 
('1', '1', 'Punto de Venta Principal', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_moneda`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `ta_gzz_moneda` 
(`MonCod`,`MonSim`,`MonDet`,`EstRegCod`) 
VALUES 
('01','S/.','Nuevos Soles','A'),
('02','$','Dolares Americanos','A'),
('03','-','Otra Moneda','A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_estado_factura`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_estado_factura` 
(`EstFacCod`, `EstFacDet`, `EstRegCod`) 
VALUES 
('1', 'Cancelado', 'A'),
('2', 'Pagando', 'A'),
('3', 'Atrasado', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_metodo_pago_factura`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_metodo_pago_factura` 
(`MetPagCod`, `MetPagDet`, `EstRegCod`) 
VALUES 
('1', 'Efectivo', 'A'),
('2', 'Tarjeta', 'A'),
('3', 'Cheque', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_pago_factura`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_pago_factura` 
(`TipPagCod`, `TipPagDet`, `EstRegCod`) 
VALUES 
('1', 'Contado', 'A'),
('2', 'Cuotas', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_descuento`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_descuento` 
(`TipDesCod`, `TipDesDet`, `EstRegCod`) 
VALUES 
('01', 'Ninguno', 'A'),
('02', 'Bonos', 'A'),
('03', 'Promociones', 'A'),
('04', 'Devolucion', 'A'),
('05', 'Fallas del producto', 'A'),
('06', 'Entregas extenporaneas', 'A'),
('07', 'Errores de envio', 'A'),
('08', 'Otros', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_devolucion`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_devolucion` 
(`TipDevCod`, `TipDevDet`, `EstRegCod`) 
VALUES 
('01', 'Falla en el producto', 'A'),
('02', 'Error de solicitud del cliente', 'A'),
('03', 'Falta de pago', 'A'),
('04', 'Entregas extemporaneas', 'A'),
('05', 'Errores de registro', 'A'),
('06', 'Errores de envio', 'A'),
('07', 'Productos Faltantes', 'A'),
('08', 'Otros', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_destinatario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_destinatario` 
(`TipDstCod`, `TipDstDet`, `EstRegCod`) 
VALUES 
('01', 'Cliente', 'A'),
('02', 'Proveedor', 'A'),
('03', 'El Remitente', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_motivo_traslado`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_motivo_traslado` 
(`MotTraCod`, `MotTraDet`, `EstRegCod`) 
VALUES 
('01', 'Ventas', 'A'),
('02', 'Compras', 'A'),
('03', 'Devolucion', 'A'),
('04', 'Consignacion', 'A'),
('05', 'Importacion', 'A'),
('06', 'Exportacion', 'A'),
('07', 'Venta sujeta a confirmación', 'A'),
('08', 'Traslado entre establecimientos de la misma empresa', 'A'),
('09', 'Traslado de bienes para transformación', 'A'),
('10', 'Recojo de bienes', 'A'),
('11', 'Traslado por emisor itinerante', 'A'),
('12', 'Traslado zona primaria', 'A'),
('13', 'Venta con entrega a terceros', 'A'),
('14', 'Otras no incluida en los puntos anteriores', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_estado_uni_transporte`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;

INSERT INTO `ta_gzz_estado_uni_transporte` 
(`EstUniTraCod`,`EstUniTraDet`,`EstRegCod`) 
VALUES 
('01',"Activo","A"),
('02',"Inactivo","A"),
('03',"En Reparacion","A"),
('04',"En Mantenimiento","A");

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_uni_transporte`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `ta_gzz_tipo_uni_transporte` 
(`TipUniTraCod`,`TipUniTraDet`,`EstRegCod`) 
VALUES 
('01',"Vehiculo Caja-Granel","A"),
('02',"Vehiculo Caja-Embalajes","A"),
('03',"Vehiculo Caja-Contenedores","A"),
('04',"Vehiculo Caja-Jaula","A"),
('05',"Vehiculo Caja-Otros","A"),
('06',"Cisterna","A"),
('07',"Otros","A");

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_falla_producto`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_falla_producto` 
(`TipFallProCod`, `TipFallProDet`, `EstRegCod`) 
VALUES 
('1', 'Error de Diseño', 'A'),
('2', 'Error de Empaquetado/Etiquetado', 'A'),
('3', 'Cantidad Equivocada', 'A'),
('4', 'Exceso de Almacenamiento', 'A'),
('5', 'Inadecuado de Almacenamiento', 'A'),
('6', 'Error de Transformación', 'A'),
('7', 'Error de Comercialización', 'A'),
('8', 'No hay error', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_doc_cliente`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_doc_cliente`
(`TipDocCliCod`,`TipDocCliDet`,`EstRegCod`)
VALUES
('1','DNI','A'),
('2','RUC','A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_doc_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_doc_usuario`
(`TipDocUsuCod`,`TipDocUsuDet`,`EstRegCod`)
VALUES
('1','DNI','A'),
('2','RUC','A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_doc_transportista`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_doc_transportista`
(`TipDocTraCod`,`TipDocTraDet`,`EstRegCod`)
VALUES
('1','DNI','A'),
('2','RUC','A'),
('3','Licencia Conducir','A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_doc_proveedor`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_doc_proveedor`
(`TipDocProCod`,`TipDocProDet`,`EstRegCod`)
VALUES
('1','DNI','A'),
('2','RUC','A');

COMMIT;
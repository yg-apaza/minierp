-- -----------------------------------------------------
-- Data for table `episerp`.`en_p3m_cuenta_banco`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p3m_cuenta_banco` VALUES (0000000001,01,'3001033189',0000000540,'A');
INSERT INTO `en_p3m_cuenta_banco` VALUES (0000000002,18,'4120239490',0000000541,'A');
INSERT INTO `en_p3m_cuenta_banco` VALUES (0000000003,09,'2003993301',0000000542,'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_cliente`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_cliente` (`CliCod`, `CliNom`, `CliApePat`, `CliApeMat`, `CliSex`, `CliDir`, `CliTelFij`, `CliTelCel`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('72748574', 'Manuel', 'Ramiro', 'Saavedra', 'M', 'Desconocida', '747484', '958142511', 'Desconocido', '01', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `CliNom`, `CliApePat`, `CliApeMat`, `CliSex`, `CliDir`, `CliTelFij`, `CliTelCel`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('39337484', 'Diego', 'Ticona', 'chavez', 'M', 'Desconocida', '194875', '959362541', 'Desconocido', '02', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `CliNom`, `CliApePat`, `CliApeMat`, `CliSex`, `CliDir`, `CliTelFij`, `CliTelCel`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('29854147', 'Geraldine', 'Choque', 'Pumaroles', 'F', 'Desconocida', '332145', '959164578', 'Desconocido', '03', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `CliNom`, `CliApePat`, `CliApeMat`, `CliSex`, `CliDir`, `CliTelFij`, `CliTelCel`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('19584714', 'Alex', 'Flores', 'Neyra', 'M', 'Desconocida', '162635', '959368574', 'Desconocido', '01', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `CliNom`, `CliApePat`, `CliApeMat`, `CliSex`, `CliDir`, `CliTelFij`, `CliTelCel`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('39286411', 'Juan', 'Quispe', 'Alvarado', 'M', 'Desconocida', '879568', '957487514', 'Desconocido', '01', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `CliNom`, `CliApePat`, `CliApeMat`, `CliSex`, `CliDir`, `CliTelFij`, `CliTelCel`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('12345874', 'Maria', 'Loza', 'Luna', 'F', 'Desconocida', '134679', '958214521', 'Desconocido', '02', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `CliNom`, `CliApePat`, `CliApeMat`, `CliSex`, `CliDir`, `CliTelFij`, `CliTelCel`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('98745212', 'Antonio', 'Barcarcel', 'Ruiz', 'M', 'Desconocida', '968574', '956362541', 'Desconocido', '01', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `CliNom`, `CliApePat`, `CliApeMat`, `CliSex`, `CliDir`, `CliTelFij`, `CliTelCel`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('15987412', 'Jose', 'Ortiz', 'Mendoza', 'M', 'Desconocida', '658964', '957841524', 'Desconocido', '02', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `CliNom`, `CliApePat`, `CliApeMat`, `CliSex`, `CliDir`, `CliTelFij`, `CliTelCel`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('85749632', 'Mario', 'Llanos', 'Valderrama', 'M', 'Desconocida', '178945', '958325544', 'Desconocido', '01', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `CliNom`, `CliApePat`, `CliApeMat`, `CliSex`, `CliDir`, `CliTelFij`, `CliTelCel`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('28741222', 'Max', 'Zarate', 'Zegarra', 'M', 'Desconocida', '369877', '959687511', 'Desconocido', '02', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_documento_cliente`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('72748574', '01', '72748574', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('39337484', '01', '39337484', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('29854147', '01', '29854147', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('19584714', '01', '19584714', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('39286411', '01', '39286411', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('12345874', '01', '12345874', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('98745212', '01', '98745212', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('15987412', '01', '15987412', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('85749632', '01', '85749632', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('28741222', '01', '28741222', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('72743604', 'Christian', 'Incalla', 'Nina', 'vendedor', 'e8827f3c0bcc90509b7d6841d446b163a671cac807a5f1bf41218667546ce80b', 2, 1, '1990-11-20', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('76308492', 'Kevin', 'Fernández', 'Nieto', 'comprador', '17f77242a319cd8bf5fac8fd615115a09af269b8d7ec43e84e1ba7005b5c5383', 3, 1,  '1992-05-24', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('70299350', 'Gladys', 'Calle', 'Condori', 'contador', '145e0447253dba54dce5e527e28bcc0f7c160332bfcb7cf5cf4f5b4692aebead', 4, 1, '1995-01-11', 1, 'F', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_documento_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('72743604', 1, '72743604', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('76308492', 1, '76308492', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('70299350', 1, '70299350', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p2m_almacen`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `SucCod`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM01', 'Almacen Principal', 1, '1500', 'Ninguna', 'A');
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `SucCod`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM02', 'Almacen Secundario', 1, '1000', 'Ninguna', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p2m_clase_producto`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p2m_clase_producto` (`ClaProCod`, `ClaProDet`, `EstRegCod`) VALUES ('01', 'Carne y Aves', 'A');
INSERT INTO `en_p2m_clase_producto` (`ClaProCod`, `ClaProDet`, `EstRegCod`) VALUES ('02', 'Pescado y Mariscos', 'A');
INSERT INTO `en_p2m_clase_producto` (`ClaProCod`, `ClaProDet`, `EstRegCod`) VALUES ('03', 'Fruta', 'A');
INSERT INTO `en_p2m_clase_producto` (`ClaProCod`, `ClaProDet`, `EstRegCod`) VALUES ('04', 'Verduras y Hortalizas', 'A');
INSERT INTO `en_p2m_clase_producto` (`ClaProCod`, `ClaProDet`, `EstRegCod`) VALUES ('05', 'Cereales', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`en_p2m_subclase_producto`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('01', '01', 'Cerdo', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('01', '02', 'Pavo', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('01', '03', 'Pollo', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('02', '01', 'Pescado Fresco', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('02', '02', 'Surimi, gulas y derivados', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('02', '03', 'Ahumados', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('03', '01', 'Citricos', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('03', '02', 'Manzana y Pera', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('03', '03', 'Pollo', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('04', '01', 'Ajo y Cebolla', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('04', '02', 'Brocoli y Coliflor', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('04', '03', 'Tomates', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('05', '01', 'Barritas Cereales', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('05', '02', 'Cereales Familiares', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('05', '03', 'Cereales infantiles', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p2m_producto`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '01', '7755523010128', 'cerdo de 1kg', '06', '15.50', '09', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '01', '7755523010137', 'cerdo en rollos', '06', '11.50', '09', '100', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '01', '7755523010146', 'chuleta de cerdo', '06', '15.50', '09', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '02', '7755523010216', 'carne de pavo 1kg', '06', '15.50', '09', '120', '50', 'ALM02', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '02', '7755523010225', 'carne de pavo 1/2kg', '06', '7.50', '09', '120', '50', 'ALM02', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '02', '7755523010234', 'pavo para cena navideña', '06', '15.50', '09', '120', '50', 'ALM02', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '03', '7755523010313', 'alas de pollo', '06', '6.50', '09', '120', '50', 'ALM02', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '03', '7755523010322', 'piernas de pollo', '06', '7.50', '02', '120', '50', 'ALM02', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '03', '7755523010331', 'pechuga de pollo', '06', '7.50', '02', '120', '50', 'ALM02', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '01', '7755523020116', 'bonito', '06', '10.00', '02', '120', '50', 'ALM02', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '01', '7755523020125', 'corvina', '06', '8.00', '02', '120', '50', 'ALM02', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '01', '7755523020134', 'furel', '06', '10.00', '02', '120', '50', 'ALM02', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '02', '7755523020213', 'gula del norte', '06', '10.00', '02', '120', '50', 'ALM02', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '02', '7755523020222', 'krisia surini fresco rayado', '04', '10.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '02', '7755523020231', 'palitos de surini 300 gr', '04', '10.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '03', '7755523020310', 'salmon ahumado 200 gr', '04', '10.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '03', '7755523020329', 'trucha ahumada 200 gr', '04', '10.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '03', '7755523020338', 'pimenton ahumado 100 gr', '04', '8.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('03', '01', '7755523030113', 'naranja zumo de malla', '04', '5.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('03', '01', '7755523030122', 'mandarinas 1kg', '04', '5.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('03', '01', '7755523030131', 'limones 1kg', '04', '5.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('03', '02', '7755523030210', 'pera blanca 1kg', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('03', '02', '7755523030229', 'manzana golden 240gr', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('03', '02', '7755523030238', 'manzana roja 290gr', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '01', '7755523040110', 'ajo morado 1kg', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '01', '7755523040129', 'ajo molido frasco 55gr', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '01', '7755523040138', 'sazonador de ajo 43gr', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '02', '7755523040217', 'brocoli pieza de 500gr', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '02', '7755523040226', 'coliflor en bolsa de 1kg', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '02', '7755523040235', 'repollo 1kg', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '03', '7755523040314', 'tomate fitofrasco de 500gr', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '03', '7755523040323', 'tomate frito casero 500gr', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '03', '7755523040332', 'ensalada de tomate malla 1kg', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '01', '7755523050117', 'barritas de cereales de chocolate', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '01', '7755523050126', 'barritas de cereales nesquick', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '01', '7755523050135', 'barritas de cereales integrales', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '02', '7755523050214', 'cereales corn flakes', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '02', '7755523050223', 'cereales kellogs', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '02', '7755523050232', 'cereales nestle', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '03', '7755523050311', 'mini cereales nestle lion', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '03', '7755523050320', 'mini cereales kellogs', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUni`, `MonCod`, `ProStk`, `ProStkPreVen`, `AlmCod`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '03', '7755523050339', 'mini cereales corn flakes', '04', '6.00', '02', '120', '50', 'ALM01', '100', '10', '100', 'Ninguna','A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_factura_venta_cab`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000001', '72748574', '72743604', '2016-10-09', '1500', '285', '1215', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000002', '39337484', '72743604', '2016-10-09', '1800', '342', '1458', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000003', '29854147', '72743604', '2016-10-10', '2000', '380', '1620', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000004', '19584714', '72743604', '2016-10-10', '1750', '322.5', '1417.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000005', '39286411', '72743604', '2016-10-10', '2500', '475', '2025', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000006', '12345874', '72743604', '2016-10-10', '950', '180.5', '769.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000007', '98745212', '72743604', '2016-10-11', '650', '123.5', '526.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000008', '15987412', '72743604', '2016-10-11', '555', '105.45', '449.55', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000009', '85749632', '72743604', '2016-10-11', '850', '161.5', '688.5', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000010', '28741222', '72743604', '2016-10-11', '740', '140.6', '599.4', '19', 'Ninguna', '02', '02', '02', '01', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1t_factura_venta_det`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000001', '1', '01', '01', '7755523010128', '3', '15.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000001', '2', '01', '01', '7755523010137', '5', '11.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000001', '3', '01', '01', '7755523010146', '7', '15.00');

INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000002', '1', '01', '02', '7755523010216', '3', '15.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000002', '2', '01', '02', '7755523010225', '8', '7.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000002', '3', '01', '02', '7755523010234', '11', '15.00');

INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000003', '1', '01', '03', '7755523010313', '8', '6.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000003', '2', '01', '03', '7755523010322', '4', '7.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000003', '3', '01', '03', '7755523010331', '10', '7.00');

INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000004', '1', '02', '01', '7755523020116', '8', '10.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000004', '2', '02', '01', '7755523020125', '7', '8.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000004', '3', '02', '01', '7755523020134', '6', '10.00');

INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000005', '1', '02', '02', '7755523020213', '9', '10.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000005', '2', '02', '02', '7755523020222', '4', '10.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000005', '3', '02', '02', '7755523020231', '15', '10.00');

INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000006', '1', '02', '03', '7755523020310', '12', '10.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000006', '2', '02', '03', '7755523020329', '9', '10.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000006', '3', '02', '03', '7755523020338', '8', '8.00');

INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000007', '1', '03', '01', '7755523030113', '10', '5.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000007', '2', '03', '01', '7755523030122', '8', '5.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000007', '3', '03', '01', '7755523030131', '7', '5.00');

INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000008', '1', '03', '02', '7755523030210', '10', '6.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000008', '2', '03', '02', '7755523030229', '15', '6.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000008', '3', '03', '02', '7755523030238', '12', '6.00');

INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000009', '1', '05', '03', '7755523050311', '3', '6.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000009', '2', '05', '03', '7755523050320', '3', '6.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000009', '3', '05', '03', '7755523050339', '3', '6.00');

INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000010', '1', '04', '01', '7755523040110', '8', '6.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000010', '2', '04', '01', '7755523040129', '3', '6.00');
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`, `FacVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `FacVenDetCan`, `FacVenDetValUni`) VALUES ('001-000010', '3', '04', '01', '7755523040138', '3', '6.00');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_preventa_cab`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_preventa_cab` (`PreVenCabCod`, `CliCod`, `UsuCod`, `PreVenCabFec`, `PreVenCabPla`, `PreVenCabTot`, `PreVenCabDes`, `PreVenCabSubTot`, `PreVenCabIGV`, `PreVenCabObs`, `MonCod`, `EstRegCod`) VALUES ('001-000001', '72748574', '72743604', '2016-10-09', '1', '1500', '285', '1215', '19', 'Ninguna', '01', 'A');
INSERT INTO `en_p1m_preventa_cab` (`PreVenCabCod`, `CliCod`, `UsuCod`, `PreVenCabFec`, `PreVenCabPla`, `PreVenCabTot`, `PreVenCabDes`, `PreVenCabSubTot`, `PreVenCabIGV`, `PreVenCabObs`, `MonCod`, `EstRegCod`) VALUES ('001-000002', '39337484', '72743604', '2016-10-09', '1', '1800', '342', '1458', '19', 'Ninguna', '01', 'A');
INSERT INTO `en_p1m_preventa_cab` (`PreVenCabCod`, `CliCod`, `UsuCod`, `PreVenCabFec`, `PreVenCabPla`, `PreVenCabTot`, `PreVenCabDes`, `PreVenCabSubTot`, `PreVenCabIGV`, `PreVenCabObs`, `MonCod`, `EstRegCod`) VALUES ('001-000003', '29854147', '72743604', '2016-10-09', '1', '2000', '380', '1620', '19', 'Ninguna', '01', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1t_preventa_det`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1t_preventa_det` (`PreVenCabCod`, `PreVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `PreVenDetCan`, `PreVenDetValUni`) VALUES ('001-000001', '1', '01', '01', '7755523010128', '3', '15.00');
INSERT INTO `en_p1t_preventa_det` (`PreVenCabCod`, `PreVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `PreVenDetCan`, `PreVenDetValUni`) VALUES ('001-000001', '2', '01', '01', '7755523010137', '5', '11.00');
INSERT INTO `en_p1t_preventa_det` (`PreVenCabCod`, `PreVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `PreVenDetCan`, `PreVenDetValUni`) VALUES ('001-000001', '3', '01', '01', '7755523010146', '7', '15.00');

INSERT INTO `en_p1t_preventa_det` (`PreVenCabCod`, `PreVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `PreVenDetCan`, `PreVenDetValUni`) VALUES ('001-000002', '1', '01', '02', '7755523010216', '3', '15.00');
INSERT INTO `en_p1t_preventa_det` (`PreVenCabCod`, `PreVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `PreVenDetCan`, `PreVenDetValUni`) VALUES ('001-000002', '2', '01', '02', '7755523010225', '8', '7.00');
INSERT INTO `en_p1t_preventa_det` (`PreVenCabCod`, `PreVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `PreVenDetCan`, `PreVenDetValUni`) VALUES ('001-000002', '3', '01', '02', '7755523010234', '11', '15.00');

INSERT INTO `en_p1t_preventa_det` (`PreVenCabCod`, `PreVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `PreVenDetCan`, `PreVenDetValUni`) VALUES ('001-000003', '1', '01', '03', '7755523010313', '8', '6.00');
INSERT INTO `en_p1t_preventa_det` (`PreVenCabCod`, `PreVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `PreVenDetCan`, `PreVenDetValUni`) VALUES ('001-000003', '2', '01', '03', '7755523010322', '4', '7.00');
INSERT INTO `en_p1t_preventa_det` (`PreVenCabCod`, `PreVenDetCod`, `ClaProCod`, `SubClaProCod`, `ProCod`, `PreVenDetCan`, `PreVenDetValUni`) VALUES ('001-000003', '3', '01', '03', '7755523010331', '10', '7.00');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1c_preventa_realizadas`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1c_preventa_realizadas` (`PreVenCabCod`, `FacVenCabCod`, `PreVenReaFec`) VALUES ('001-000001', '001-000001', '2016-10-09');
INSERT INTO `en_p1c_preventa_realizadas` (`PreVenCabCod`, `FacVenCabCod`, `PreVenReaFec`) VALUES ('001-000002', '001-000002', '2016-10-09');
INSERT INTO `en_p1c_preventa_realizadas` (`PreVenCabCod`, `FacVenCabCod`, `PreVenReaFec`) VALUES ('001-000003', '001-000003', '2016-10-09');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_pagos_cuotas_cab`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_pagos_cuotas_cab` (`FacVenCabCod`, `PagCuoNumDoc`, `PagCuoNum`, `PagCuoNumPag`, `PagCuoDeuTot`, `PagCuoTotPag`, `PagCuoFecIni`, `PagCuoFecFin`, `PagCuoFecPag`, `EstRegCod`) VALUES ('001-000008', '4360156910904354', '1', '0', '555.00', '0.00', '2016-11-11', '2017-01-11', '2016-11-11', 'A');
INSERT INTO `en_p1m_pagos_cuotas_cab` (`FacVenCabCod`, `PagCuoNumDoc`, `PagCuoNum`, `PagCuoNumPag`, `PagCuoDeuTot`, `PagCuoTotPag`, `PagCuoFecIni`, `PagCuoFecFin`, `PagCuoFecPag`, `EstRegCod`) VALUES ('001-000009', '4651250499464787', '3', '0', '850.00', '0.00', '2016-11-11', '2017-01-11', '2016-11-11', 'A');
INSERT INTO `en_p1m_pagos_cuotas_cab` (`FacVenCabCod`, `PagCuoNumDoc`, `PagCuoNum`, `PagCuoNumPag`, `PagCuoDeuTot`, `PagCuoTotPag`, `PagCuoFecIni`, `PagCuoFecFin`, `PagCuoFecPag`, `EstRegCod`) VALUES ('001-000010', '4395725873044991', '3', '0', '740.00', '0.00', '2016-11-11', '2017-01-11', '2016-11-11', 'A');

COMMIT;

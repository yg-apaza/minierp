-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_sucursal`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00101', 'Cercado Arequipa Sucursal ', 'Calle Portal de Flores 102 - Cercado', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00102', 'Cerro Colorado Arequipa Sucursal ', 'Ciudad Municipal Call. Los Arces 52 – Cerro Colorado', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00103', 'Cayma Arequipa Sucursal ', 'Calle La Unión Comité 25 - Cayma', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00104', ' Yanahuara Arequipa Sucursal ', 'Av. Bolognesi Nº 142 - Yanahuara', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00105', ' Hunter Arequipa Sucursal ', 'Calle los Arces Psje. 23 Lt 32', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00106', 'La Joya Sucursal ', 'El Cruce, Psje Ordoñez Lt 34', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00107', 'Pedregal Majes Sucursal ', 'Av Arequipa Mz J Lt 34', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00108', 'La Punta Camana  Sucursal ', 'La Punta Mz H2 Lt 12', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00109', 'Miraflores Lima Sucursal ', 'Urb Los Guindos Mz D Lt 15', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00110', 'Los Olivos Lima Sucursal ', 'Calle La Merced 413 Of 34 ', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_punto_venta`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('1', '00101', 'Punto de Venta Calle Mercaderes', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('2', '00102', 'VILLEGAS ASOCIADOS', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('3', '00108', 'ZETTA COMUNICADORES LIMITADA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('4', '00105', 'CARTOPEL', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('5', '00101', 'YASAKI METREX', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('6', '00110', 'FEPCO ZONA FRANCA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('7', '00105', 'RAPISCOL', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('8', '00109', 'TEXTILES WAMSUTTA LTDA.', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('9', '00109', 'DISTRIBUIDORA DE CONFECCIONES Y TEXTILES DISCONYTEX LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('10', '00103', 'SERRANO GOMEZ PRETECOR LTDA.', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('11', '00105', 'PREMOLDA LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('12', '00106', 'PRODUCTOS ESPECIALES DE CONCRETO', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('13', '00106', 'TRIMCO', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('14', '00102', 'DITE', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('15', '00108', 'GRUPO INDUCILEMAN LTDA.', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('16', '00102', 'COMPAÑIA METALICA ASOCIADA C M A LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('17', '00102', 'CONSTRUCTORA SANTA ANA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('18', '00106', 'PRODUCTORA ANDINA DE DULCES', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('19', '00103', 'TELESENTINEL LTDA.', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('20', '00108', 'IMPULSO Y MERCADEO', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('21', '00107', 'SOMOS SOLUCIONES LABORALES', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('22', '00102', 'KORN/FERRY INTERNATIONAL COLOMBIA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('23', '00105', 'SOCIEDAD DE COMERCIALIZACION INTERNACIONAL CICOLTA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('24', '00103', 'ANCLA LIMITADA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('25', '00104', 'CONSULTORES UNIDOS', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('26', '00103', 'TECNICONTROL', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('27', '00103', 'GARCIA WERNHER Y CIA S EN C.', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('28', '00102', 'VENTAS Y SERVICIOS', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('29', '00107', 'LISTOS', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('30', '00109', 'LABORALES MEDELLIN', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('31', '00106', 'COMPAÑIA MANUFACTURERA ONIX', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('32', '00108', 'INDUSTRIA DE MUEBLES DEL VALLE LTDA INVAL', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('33', '00107', 'INDUSTRIAS ZABRA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('34', '00102', 'ALUMINIO DEL PACIFICO', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('35', '00109', 'AGROPECUARIA BERGINIE', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('36', '00110', 'COMERCIALIZADORA INTERNACIONAL MOBILER', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('37', '00103', 'COMPAÑIA ATUNERA DEL PACIFICO', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('38', '00108', 'SOCIEDAD AGROMARINA TUMACO LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('39', '00110', 'ESPUMAS SANTANDER LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('40', '00106', 'INDUSTRIAS ALBERT LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('41', '00105', 'INDUSTRIAL DE POLIETILENO LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('42', '00104', 'NOVAMED', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('43', '00102', 'COMERCIALIZADORA INTERNACIONAL DE COLORANTES', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('44', '00103', 'SIMONIZ', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('45', '00104', 'VICAR DE COLOMBIA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('46', '00104', 'FIAMME', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('47', '00105', 'PROMOTORA DE PUBLICIDAD RADIAL', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('48', '00102', 'MARITIMA PROVIDENCIA LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('49', '00102', 'COCO COMPAÑIA DE CONSTRUCCIONES LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('50', '00104', 'INDUSTRIAL DE MEZCLAS ASFALTICA LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('51', '00109', 'INGENIEROS CONTRATISTAS CONSTRUCTORES', 'A');
INSERT INTO `en_p1m_punto_venta` (`PunVenCod`, `SucCod`, `PunVenDes`, `EstRegCod`) VALUES ('52', '001', 'Punto de Venta Principal', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('2', 'Christian', 'Incalla', 'Nina', 'vendedor', 'e8827f3c0bcc90509b7d6841d446b163a671cac807a5f1bf41218667546ce80b', 2, 1, '1990-11-20', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('3', 'Kevin', 'Fernández', 'Nieto', 'comprador', '17f77242a319cd8bf5fac8fd615115a09af269b8d7ec43e84e1ba7005b5c5383', 3, 1,  '1992-05-24', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('4', 'Gladys', 'Calle', 'Condori', 'contador', '145e0447253dba54dce5e527e28bcc0f7c160332bfcb7cf5cf4f5b4692aebead', 4, 1, '1995-01-11', 1, 'F', 'A');

INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('5', 'Mohamed', 'Carbajal', 'Mota', 'Mohamed', '71fd1eba032bb0ba51d4dcd6be1e9799ef98da9e06eb75e98d0dd78331233a25', 2, 101, '1995-01-20', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('6', 'Urtzi', 'Horruitiner', 'Perez', 'Urtzi', 'df8dda963d44a0da33fd4401d1b26e8fa9d5d72ad7145818d437c08a911516c2', 3, 101,  '1995-06-24', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('7', 'Yeray', 'Martinez', 'Posada', 'Yeray', '1c0bd4810282f9de2aa9855a814ee6f76ad3cc4db09079e93f77c2e9bbe2581c', 4, 101, '1995-01-11', 1, 'F', 'A');

INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('8', 'Roger', 'Benavidez', 'Flores', 'Roger', '893b1f8fc0fcc0587bb2f02fa8df1ca3039b9c8deae23935b6b3243e97e857a0', 2, 102, '1995-01-20', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('9', 'Lourent', 'Sol', 'Quispe', 'Lourent', '7bebb31ed4dfad622b99f853c935419d8433208d9a901f179820bee409f28818', 3, 102,  '1995-06-24', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('10', 'Gabriel', 'Gonzalez', 'Quiroa', 'Gabriel', '0c030df5a4e7477d218012c0121ebce6d61bb8dc46e0a6c4f8e1cc8091b946a5', 4, 102, '1995-01-11', 1, 'M', 'A');

INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('11', 'Maria', 'Acevedo', 'Burgos', 'Maria', '9ff18ebe7449349f358e3af0b57cf7a032c1c6b2272cb2656ff85eb112232f16', 2, 103, '1995-01-20', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('12', 'Margot', 'Villegas', 'Agurto', 'Margot', '69f67bd5929e6ddc06b38136029d22d27badafc7f631d892e935e9c6eb19d475', 3, 103,  '1995-06-24', 1, 'F', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('13', 'Aron', 'Rondoy', 'Ramirez', 'Aron', '10ca40162fba796a53892e5a762f08f083fbec419882582e303b793dc9d06201', 4, 103, '1995-01-11', 1, 'M', 'A');

INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('14', 'Ander', 'Espinoza', 'Peláez', 'Ander', '954913091983db96094fcad32f2264ce420964016d0527bec799adf8da7eb522', 2, 104, '1995-01-20', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('15', 'Mario', 'Arana', 'Quispe', 'Mario', '61c8e16ad90d4e6da317180fa445e262e9313bbf21fd4d30b3b9b4425886b2f5', 3, 104,  '1995-06-24', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('16', 'Oinatz', 'Fernandez', 'Quiroa', 'Oinatz', '8abeca4b5e4c95dca0d14da6c2839605ad80df725192b5aaf1d884a9413489bc', 4, 104, '1995-01-11', 1, 'M', 'A');

INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('17', 'Ugaitz', 'Ferro', 'Rico', 'Ugaitz', '6e189ff7297fd3ff4daf4e30c5c0931b923ea74ad05b8f0e5912f227bbabb4b0', 2, 105, '1995-01-20', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('18', 'Marco', 'Salas', 'Mendez', 'Marco', '669017e1461557903e78eff1b6264313025627cf9fd2aa02236ddd221701523d', 3, 105,  '1995-06-24', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('19', 'Adei', 'Flores', 'Jimenez', 'Adei', '2de4e1298e7b60b6e754dfce8b9b5a0b0c437671919b73bde09f0e2dfe8aac8d', 4, 105, '1995-01-11', 1, 'F', 'A');

INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('20', 'Endika', 'Astete', 'Gomez', 'Endika', '3414bff943ad3ae11270453dc807af4db06ab3795c86cec2bf5c5ebaf3517164', 2, 106, '1995-01-20', 1, 'F', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('21', 'Imanol', 'Gamio', 'Gracía', 'Imanol', '7b370061228e572a43efd59228203e70a2195e92110b00efdcc592ad3e347353', 3, 106,  '1995-06-24', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('22', 'Adam', 'Lozano', 'Castro', 'Adam', '3f0c9b03e8e39b03773c7ea7621035cb6fc947cd41ca7c44056d7e7bbaebb3d4', 4, 106, '1995-01-11', 1, 'M', 'A');

INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('23', 'Ian', 'García', 'Uribe', 'Ian', '5dfaaebff3e8ec0b796b47c7c674652150d92a16837946220d7efea32b8a854d', 2, 107, '1995-01-20', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('24', 'Inhar', 'Peralta', 'Florez', 'Inhar', '11383d5e3dbcef5aa997cc1e1b92d2ab5693abcfc264abe382e0a4c34d676eaf', 3, 107,  '1995-06-24', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('25', 'Igor', 'Gutierrez', 'Gonzales', 'Igor', '773079ad807a9694223d69ea5c9a05b0e98a74044a0e5d72ad0fcfcd0b72f20b', 4, 107, '1995-01-11', 1, 'M', 'A');

INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('26', 'Guillermo', 'Gonzales', 'Marquez', 'Guillermo', '418e0211da76c3e1c2c10a01a39786cd56641a009129d76f9bb76aadbe1e6c43', 2, 108, '1995-01-20', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('27', 'Aiert', 'Marlene', 'Molina', 'Aiert', 'd59331efc6229620d0fb55f93ef66e036428aa7b6352145b5504cf5a343c3047', 3, 108,  '1995-06-24', 1, 'F', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('28', 'Hegoi', 'Rodriguez', 'Victoria', 'Hegoi', '8106b02b1043b9056c9ef7f19cae213e27c51352f899ce517322c8bb095163d1', 4, 108, '1995-01-11', 1, 'M', 'A');

INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('29', 'Javier', 'Medina', 'Rojas', 'Javier', '0e1e847b6d1dfa0382c082a9850febd05bebad869f61e8c39e12992f9b87c0ff', 2, 109, '1995-01-20', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('30', 'Joel', 'Gutierrez', 'Serna', 'Joel', '0ec3a5c3a2226141d76557641569a5f01cefeb56a0be9dd2b5bd5ecc8b7194b7', 3, 109,  '1995-06-24', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('31', 'Rayan', 'Velez', 'Zapata', 'Rayan', 'e2f5ab0d9cf0057b7a18086c9062892e4088ec6235b6a22a701f52e7dbd99df1', 4, 109, '1995-01-11', 1, 'M', 'A');

INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('32', 'Ekai', 'Guzman', 'Toro', 'Ekai', 'c7b63e9b27c4a1c2b2b773309c87c0b2139c9bb28a59833b580f5c0afb36f672', 2, 110, '1995-01-20', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('33', 'Eki', 'Chinag', 'Henao', 'Eki', '8a46a31fd50df52e6167ec9573f2e2eb7817d276fcc9b8cd982e41eaa63afa67', 3, 110,  '1995-06-24', 1, 'F', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `SucCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('34', 'Ignacio', 'Guzman', 'Vasquez', 'Ignacio', '64e975e8d7118a89d98852264b5f42ee4402b4b44e984a701720ad15ff1de8f4', 4, 110, '1995-01-11', 1, 'M', 'A');


COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_documento_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('2', 1, '72743604', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('3', 1, '76308492', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('4', 1, '70299350', 'A');

INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('5', 1, '09133603', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('6', 1, '09133603', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('7', 1, '09440802', 'A');

INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('8', 1, '07645842', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('9', 1, '08041434', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('10', 1, '08041434', 'A');

INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('11', 1, '16563254', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('12', 1, '16563254', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('13', 1, '08750640', 'A');

INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('14', 1, '06228803', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('15', 1, '06228803', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('16', 1, '07220467', 'A');

INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('17', 1, '08416243', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('18', 1, '08416243', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('19', 1, '07898939', 'A');

INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('20', 1, '07898939', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('21', 1, '07530677', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('22', 1, '06077366', 'A');

INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('23', 1, '06077366', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('24', 1, '18821017', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('25', 1, '06978793', 'A');

INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('26', 1, '18165640', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('27', 1, '09306044', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('28', 1, '27836254', 'A');

INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('29', 1, '00412636', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('30', 1, '09238948', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('31', 1, '09238948', 'A');

INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('32', 1, '09532012', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('33', 1, '09702038', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('34', 1, '25486147', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`ta_gzz_tipo_cliente`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`ta_gzz_tipo_cliente` (`TipCliCod`, `TipCliDet`, `EstRegCod`) VALUES ('1', 'Persona Natural', 'A');
INSERT INTO `episerp`.`ta_gzz_tipo_cliente` (`TipCliCod`, `TipCliDet`, `EstRegCod`) VALUES ('2', 'Persona Jurídica', 'A');

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_cliente`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_cliente` (`CliCod`, `TipCliCod`, `CliRazSoc`, `CliSex`, `CliDir`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('1', 1,'Manuel Ramiro Saavedra', 'M', 'Desconocido', 'Desconocido', '01', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `TipCliCod`, `CliRazSoc`, `CliSex`, `CliDir`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('2', 2,'Diego Ticona Chavez', 'M', 'Desconocida', 'Desconocido', '02', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `TipCliCod`, `CliRazSoc`, `CliSex`, `CliDir`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('3', 1,'Geraldine Choque Pumaroles', 'F', 'Desconocida', 'Desconocido', '03', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `TipCliCod`, `CliRazSoc`, `CliSex`, `CliDir`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('4', 2,'Alex Flores Neyra', 'M', 'Desconocida', 'Desconocido', '01', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `TipCliCod`, `CliRazSoc`, `CliSex`, `CliDir`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('5', 1,'Juan Quispe Alvarado', 'M', 'Desconocida', 'Desconocido', '01', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `TipCliCod`, `CliRazSoc`, `CliSex`, `CliDir`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('6', 2,'Maria Loza Luna', 'F', 'Desconocida', 'Desconocido', '02', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `TipCliCod`, `CliRazSoc`, `CliSex`, `CliDir`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('7', 1,'Antonio Barcarcel Ruiz', 'M', 'Desconocida', 'Desconocido', '01', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `TipCliCod`, `CliRazSoc`, `CliSex`, `CliDir`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('8', 2,'Jose Ortiz Mendoza', 'M', 'Desconocida', 'Desconocido', '02', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `TipCliCod`, `CliRazSoc`, `CliSex`, `CliDir`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('9', 1,'Mario Llanos Valderrama', 'M', 'Desconocida', 'Desconocido', '01', 'A');
INSERT INTO `en_p1m_cliente` (`CliCod`, `TipCliCod`, `CliRazSoc`, `CliSex`, `CliDir`, `CliEmail`, `EstCivCod`, `EstRegCod`) VALUES ('10', 2,'Max Zarate Zegarra', 'M', 'Desconocida', 'Desconocido', '02', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_documento_cliente`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('1', '01', '72748574', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('2', '01', '39337484', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('3', '01', '29854147', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('4', '01', '19584714', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('5', '01', '39286411', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('6', '01', '12345874', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('7', '01', '98745212', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('8', '01', '15987412', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('9', '01', '85749632', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('10', '01', '28741222', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p2m_almacen`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `SucCod`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM01', 'Almacen Principal', 1, '1500', 'Ninguna', 'A');
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `SucCod`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM02', 'Almacen Secundario', 1, '1000', 'Ninguna', 'A');
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `SucCod`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM03', 'Almacen 01', 1, '50000', 'Almacen en buenas Condiciones', 'A');
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `SucCod`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM04', 'Almacen 02', 1, 50000, 'Almacen en buenas Condiciones', 'A');
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `SucCod`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM05', 'Almacen 03', 1, 50000, 'Almacen en buenas Condiciones', 'A');
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `SucCod`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM06', 'Almacen 04', 1, 50000, 'Almacen en buenas Condiciones', 'A');
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `SucCod`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM07', 'Almacen 05', 1, 50000, 'Almacen en buenas Condiciones', 'A');
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `SucCod`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM08', 'Almacen 06', 1, 50000, 'En mantenimiento', 'I');
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `SucCod`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM09', 'Almacen 07', 1, 50000, 'En mantenimiento', 'I');
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `SucCod`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM10', 'Almacen 08', 1, 50000, 'Almacen en buenas Condiciones', 'A');

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
INSERT INTO `en_p2m_clase_producto` (`ClaProCod`, `ClaProDet`, `EstRegCod`) VALUES ('06', 'Bebidas','A');
INSERT INTO `en_p2m_clase_producto` (`ClaProCod`, `ClaProDet`, `EstRegCod`) VALUES ('07', 'Aceite','A');
INSERT INTO `en_p2m_clase_producto` (`ClaProCod`, `ClaProDet`, `EstRegCod`) VALUES ('08', 'Conservas','A');
INSERT INTO `en_p2m_clase_producto` (`ClaProCod`, `ClaProDet`, `EstRegCod`) VALUES ('09', 'Embutidos','A');
INSERT INTO `en_p2m_clase_producto` (`ClaProCod`, `ClaProDet`, `EstRegCod`) VALUES ('10', 'Helados','A');
INSERT INTO `en_p2m_clase_producto` (`ClaProCod`, `ClaProDet`, `EstRegCod`) VALUES ('11', 'Lacteos','A');
INSERT INTO `en_p2m_clase_producto` (`ClaProCod`, `ClaProDet`, `EstRegCod`) VALUES ('12', 'Golosinas','A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p2m_subclase_producto`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('01', '01', 'Cerdo', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('01', '02', 'Pavo', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('01', '03', 'Pollo', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('01', '04', 'Res', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('02', '01', 'Pescado Fresco', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('02', '02', 'Surimi, gulas y derivados', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('02', '03', 'Ahumados', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('03', '01', 'Citricos', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('03', '02', 'Frutas de grano', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('03', '03', 'Exoticas', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('04', '01', 'Ajo y Cebolla', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('04', '02', 'Brocoli y Coliflor', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('04', '03', 'Tomates', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('05', '01', 'Barritas Cereales', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('05', '02', 'Cereales Familiares', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('05', '03', 'Cereales infantiles', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('06', '01', 'Gaseosas', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('06', '02', 'Jugos', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('06', '03', 'Bebidas Energizantes', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('06', '04', 'Refrescos', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('07', '01', 'Aceites Vegetales', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('07', '02', 'Aceites Animales', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('07', '03', 'Aceites Minerales', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('08', '01', 'Confitura','A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('08', '02', 'Mermelada','A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('08', '03', 'Frutas en almibar', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('09' ,'01', 'Embutidos Frescos', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('09', '02', 'Embutidos cocidos', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('09', '03', 'Embutidos secos o semisecos', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('10' ,'01', 'Helados de crema', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('10', '02', 'Helados de leche', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('10', '03', 'Helados de leche desnatada', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('11' ,'01', 'Leche entera', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('11', '02', 'Leche semidescremada', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('11', '03', 'Leche descremada', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('11', '04', 'Leche sin lactosa', 'A');

INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('12', '01', 'Caramelo', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('12', '02', 'Chicles', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('12', '03', 'Gomitas', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('12', '04', 'Chocolate', 'A');
INSERT INTO `en_p2m_subclase_producto` (`ClaProCod`, `SubClaProCod`, `SubClaProDet`, `EstRegCod`) VALUES ('12', '05', 'Toffie', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p2m_producto`
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Data for table `episerp`.`en_p2m_producto`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '01', '7755523010128', 'cerdo de 1kg', '06', '15.50', '09', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '01', '7755523010137', 'cerdo en rollos', '06', '11.50', '09', '100', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '01', '7755523010146', 'chuleta de cerdo', '06', '15.50', '09', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '02', '7755523010216', 'carne de pavo 1kg', '06', '15.50', '09', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '02', '7755523010225', 'carne de pavo 1/2kg', '06', '7.50', '09', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '02', '7755523010234', 'pavo para cena navideña', '06', '15.50', '09', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '03', '7755523010313', 'alas de pollo', '06', '6.50', '09', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '03', '7755523010322', 'piernas de pollo', '06', '7.50', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('01', '03', '7755523010331', 'pechuga de pollo', '06', '7.50', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');

INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '01', '7755523020116', 'bonito', '06', '10.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '01', '7755523020125', 'corvina', '06', '8.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '01', '7755523020134', 'furel', '06', '10.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '02', '7755523020213', 'gula del norte', '06', '10.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '02', '7755523020222', 'krisia surini fresco rayado', '04', '10.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '02', '7755523020231', 'palitos de surini 300 gr', '04', '10.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '03', '7755523020310', 'salmon ahumado 200 gr', '04', '10.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '03', '7755523020329', 'trucha ahumada 200 gr', '04', '10.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('02', '03', '7755523020338', 'pimenton ahumado 100 gr', '04', '8.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');

INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('03', '01', '7755523030113', 'naranja zumo de malla', '04', '5.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('03', '01', '7755523030122', 'mandarinas 1kg', '04', '5.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('03', '01', '7755523030131', 'limones 1kg', '04', '5.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('03', '02', '7755523030210', 'pera blanca 1kg', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('03', '02', '7755523030229', 'manzana golden 240gr', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('03', '02', '7755523030238', 'manzana roja 290gr', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');

INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '01', '7755523040110', 'ajo morado 1kg', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '01', '7755523040129', 'ajo molido frasco 55gr', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '01', '7755523040138', 'sazonador de ajo 43gr', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '02', '7755523040217', 'brocoli pieza de 500gr', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '02', '7755523040226', 'coliflor en bolsa de 1kg', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '02', '7755523040235', 'repollo 1kg', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna', 'A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '03', '7755523040314', 'tomate fitofrasco de 500gr', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '03', '7755523040323', 'tomate frito casero 500gr', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('04', '03', '7755523040332', 'ensalada de tomate malla 1kg', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna','A');

INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '01', '7755523050117', 'barritas de cereales de chocolate', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '01', '7755523050126', 'barritas de cereales nesquick', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '01', '7755523050135', 'barritas de cereales integrales', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '02', '7755523050214', 'cereales corn flakes', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '02', '7755523050223', 'cereales kellogs', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '02', '7755523050232', 'cereales nestle', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '03', '7755523050311', 'mini cereales nestle lion', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '03', '7755523050320', 'mini cereales kellogs', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('05', '03', '7755523050339', 'mini cereales corn flakes', '04', '6.00', '02', '120', '50', '100', '10', '100', 'Ninguna','A');

INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('08', '02', '7755523050340', 'Mermelada Gloria 500', 3, 5.50, 1, 50, 10, 100, 10, 20, 'Altamente comercializado','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('08', '02', '7755523050341', 'Mermelada Fanny 500', 3, 6.00, 1, 50, 10, 100, 10, 20, 'Altamente comercializado','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('08', '03', '7755523050342', 'Aconcagua Durazno 250', 3, 5.50, 1, 150, 100, 100, 10, 20, 'Altamente comercializado','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('08', '03', '7755523050343', 'Aconcagua Piña 250', 3, 5.50, 1, 90, 10, 100, 10, 20, 'Altamente comercializado','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('09', '02', '7755523050344', 'San Fernando 100', 3, 1.50, 1, 150, 10, 100, 10, 20, 'Altamente comercializado','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('09', '02', '7755523050345', 'La Calera 100', 3, 1.50, 1, 100, 10, 100, 10, 20, 'Altamente comercializado','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('12', '01', '7755523050346', 'Trident Menta', 3, 0.20,1, 500, 10, 100, 10, 20, 'Altamente comercializado','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('12', '01', '7755523050347', 'Chiclets Menta', 3, 0.20, 1, 500, 10, 100, 10, 20, 'Altamente comercializado','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('12', '04', '7755523050348', 'Nikolo', 3, 0.70, 1, 100, 10, 100, 10, 20, 'Altamente comercializado','A');
INSERT INTO `en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `MonCod`, `ProStk`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`) VALUES ('12', '04', '7755523050349', 'Mecano', 3, 1.00, 1, 100, 10, 100, 10, 20, 'Altamente comercializado','A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_factura_venta_cab`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000001', '1', '2', '2016-10-09', '1500', '285', '1215', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000002', '2', '2', '2016-10-09', '23424.20', '342', '1458', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000003', '3', '2', '2016-10-09', '23424.20', '380', '1620', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000004', '4', '2', '2016-10-09', '724', '322.5', '1417.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000005', '5', '2', '2016-10-09', '961', '475', '2025', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000006', '6', '2', '2016-10-09', '153', '180.5', '769.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000007', '7', '2', '2016-10-09', '771', '123.5', '526.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000008', '8', '2', '2016-10-09', '811', '105.45', '449.55', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000009', '9', '2', '2016-10-09', '547', '161.5', '688.5', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000010', '10', '2', '2016-10-09', '778', '140.6', '599.4', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000011', '1', '2', '2016-10-09', '264', '285', '1215', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000012', '2', '2', '2016-10-09', '101', '342', '1458', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000013', '3', '2', '2016-10-09', '966', '380', '1620', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000014', '4', '2', '2016-10-09', '538', '322.5', '1417.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000015', '5', '2', '2016-10-09', '724', '475', '2025', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000016', '6', '2', '2016-10-09', '961', '180.5', '769.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000017', '7', '2', '2016-10-09', '153', '123.5', '526.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000018', '8', '2', '2016-10-09', '771', '105.45', '449.55', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000019', '9', '2', '2016-10-09', '724', '161.5', '688.5', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000020', '10', '2', '2016-10-09', '961', '140.6', '599.4', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000021', '1', '2', '2016-10-09', '153', '285', '1215', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000022', '2', '2', '2016-10-09', '771', '342', '1458', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000023', '3', '2', '2016-10-09', '811', '380', '1620', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000024', '4', '2', '2016-10-09', '547', '322.5', '1417.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000025', '5', '2', '2016-10-09', '778', '475', '2025', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000026', '6', '2', '2016-10-09', '264', '180.5', '769.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000027', '7', '2', '2016-10-09', '101', '123.5', '526.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000028', '8', '2', '2016-10-09', '966', '105.45', '449.55', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000029', '9', '2', '2016-10-09', '538', '161.5', '688.5', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000030', '10', '2', '2016-10-09', '704', '140.6', '599.4', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000031', '1', '2', '2016-10-09', '72', '285', '1215', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000032', '2', '2', '2016-10-09', '724', '342', '1458', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000033', '3', '2', '2016-10-09', '961', '380', '1620', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000034', '4', '2', '2016-10-09', '153', '322.5', '1417.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000035', '5', '2', '2016-10-09', '771', '475', '2025', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000036', '6', '2', '2016-10-09', '811', '180.5', '769.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000037', '7', '2', '2016-10-09', '547', '123.5', '526.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000038', '8', '2', '2016-10-09', '778', '105.45', '449.55', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000039', '9', '2', '2016-10-09', '101', '161.5', '688.5', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000040', '10', '2', '2016-10-09', '966', '140.6', '599.4', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000041', '1', '2', '2016-10-09', '538', '285', '1215', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000042', '2', '2', '2016-10-09', '704', '342', '1458', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000043', '3', '2', '2016-10-09', '72', '380', '1620', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000044', '4', '2', '2016-10-09', '724', '322.5', '1417.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000045', '5', '2', '2016-10-09', '2500', '475', '2025', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000046', '6', '2', '2016-10-09', '961', '180.5', '769.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000047', '7', '2', '2016-10-09', '153', '123.5', '526.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000048', '8', '2', '2016-10-09', '771', '105.45', '449.55', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000049', '9', '2', '2016-10-09', '811', '161.5', '688.5', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000050', '10', '2', '2016-10-09', '547', '140.6', '599.4', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000051', '1', '2', '2016-10-09', '778', '285', '1215', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000052', '2', '2', '2016-10-09', '264', '342', '1458', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000053', '3', '2', '2016-10-09', '101', '380', '1620', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000054', '4', '2', '2016-10-09', '966', '322.5', '1417.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000055', '5', '2', '2016-10-09', '538', '475', '2025', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000056', '6', '2', '2016-10-09', '704', '180.5', '769.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000057', '7', '2', '2016-10-09', '72', '123.5', '526.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000058', '8', '2', '2016-10-09', '724', '105.45', '449.55', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000059', '9', '2', '2016-10-09', '961', '161.5', '688.5', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000060', '10', '2', '2016-10-09', '153', '140.6', '599.4', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000061', '1', '2', '2016-10-09', '771', '285', '1215', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000062', '2', '2', '2016-10-09', '811', '811', '1458', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000063', '3', '2', '2016-10-09', '547', '547', '1620', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000064', '4', '2', '2016-10-09', '778', '322.5', '1417.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000065', '5', '2', '2016-10-09', '264', '475', '2025', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000066', '6', '2', '2016-10-09', '101', '180.5', '769.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000067', '7', '2', '2016-10-09', '966', '123.5', '526.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000068', '8', '2', '2016-10-09', '538', '105.45', '449.55', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000069', '9', '2', '2016-10-09', '704', '161.5', '688.5', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000070', '10', '2', '2016-10-09', '72', '140.6', '599.4', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000071', '1', '2', '2016-10-09', '161', '285', '1215', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000072', '2', '2', '2016-10-09', '150', '342', '1458', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000073', '3', '2', '2016-10-09', '457', '380', '1620', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000074', '4', '2', '2016-10-09', '589', '322.5', '1417.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000075', '5', '2', '2016-10-09', '762', '475', '2025', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000076', '6', '2', '2016-10-09', '41', '180.5', '769.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000077', '7', '2', '2016-10-09', '348', '123.5', '526.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000078', '8', '2', '2016-10-09', '938', '105.45', '449.55', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000079', '9', '2', '2016-10-09', '807', '161.5', '688.5', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000080', '10', '2', '2016-10-09', '451', '140.6', '599.4', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000081', '1', '2', '2016-10-09', '844', '285', '1215', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000082', '2', '2', '2016-10-09', '587', '342', '1458', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000083', '3', '2', '2016-10-09', '798', '380', '1620', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000084', '4', '2', '2016-10-09', '292', '322.5', '1417.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000085', '5', '2', '2016-10-09', '156', '475', '2025', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000086', '6', '2', '2016-10-09', '886', '180.5', '769.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000087', '7', '2', '2016-10-09', '322', '123.5', '526.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000088', '8', '2', '2016-10-09', '712', '105.45', '449.55', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000089', '9', '2', '2016-10-09', '255', '161.5', '688.5', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000090', '10', '2', '2016-10-09', '757', '140.6', '599.4', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000091', '1', '2', '2016-10-09', '368', '285', '1215', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000092', '2', '2', '2016-10-09', '60', '342', '1458', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000093', '3', '2', '2016-10-09', '549', '380', '1620', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000094', '4', '2', '2016-10-09', '105', '322.5', '1417.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000095', '5', '2', '2016-10-09', '786', '475', '2025', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000096', '6', '2', '2016-10-09', '945', '180.5', '769.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000097', '7', '2', '2016-10-09', '196', '123.5', '526.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000098', '8', '2', '2016-10-09', '659', '105.45', '449.55', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000099', '9', '2', '2016-10-09', '186', '161.5', '688.5', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000100', '10', '2', '2016-10-09', '391', '140.6', '599.4', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000101', '1', '2', '2016-10-09', '372', '285', '1215', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000102', '2', '2', '2016-10-09', '270', '342', '1458', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000103', '3', '2', '2016-10-09', '802', '380', '1620', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000104', '4', '2', '2016-10-09', '181', '322.5', '1417.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000105', '5', '2', '2016-10-09', '222', '475', '2025', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000106', '6', '2', '2016-10-09', '170', '180.5', '769.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000107', '7', '2', '2016-10-09', '140', '123.5', '526.5', '19', 'Ninguna', '01', '01', '01', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000108', '8', '2', '2016-10-09', '302', '105.45', '449.55', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000109', '9', '2', '2016-10-09', '119', '161.5', '688.5', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`, `CliCod`, `UsuCod`, `FacVenCabFec`, `FacVenCabTot`, `FacVenCabDes`, `FacVenCabSubTot`, `FacVenCabIGV`, `FacVenCabObs`, `EstFacCod`, `MetPagCod`, `TipPagCod`, `MonCod`, `EstRegCod`) VALUES ('001-000110', '10', '2', '2016-10-09', '315', '140.6', '599.4', '19', 'Ninguna', '02', '02', '02', '01', 'A');
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`,`CliCod`,`UsuCod`,`FacVenCabFec`,`FacVenCabTot`,`FacVenCabDes`,`FacVenCabSubTot`,`FacVenCabIGV`,`FacVenCabObs`,`EstFacCod`,`MetPagCod`,`TipPagCod`,`MonCod`,`EstRegCod`) VALUES ("001-000111","4","2","2016-11-12",281,142,572,19,"Ninguno",2,1,2,1,"A"),("001-000112","6","2","2016-11-22",809,134,203,19,"Ninguno",2,1,1,1,"A"),("001-000113","3","2","2016-10-15",950,125,649,19,"Ninguno",1,2,1,1,"A"),("001-000114","5","2","2016-10-04",469,112,229,19,"Ninguno",1,1,2,1,"A"),("001-000115","4","2","2016-11-06",342,56,393,19,"Ninguno",2,2,2,1,"A"),("001-000116","3","2","2016-10-25",201,124,710,19,"Ninguno",2,1,1,1,"A"),("001-000117","5","2","2016-11-07",249,66,949,19,"Ninguno",2,2,1,1,"A"),("001-000118","3","2","2016-11-07",379,81,513,19,"Ninguno",2,1,1,1,"A"),("001-000119","8","2","2016-10-17",916,148,422,19,"Ninguno",2,1,1,1,"A"),("001-000120","8","2","2016-09-30",900,145,953,19,"Ninguno",2,2,2,1,"A");
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`,`CliCod`,`UsuCod`,`FacVenCabFec`,`FacVenCabTot`,`FacVenCabDes`,`FacVenCabSubTot`,`FacVenCabIGV`,`FacVenCabObs`,`EstFacCod`,`MetPagCod`,`TipPagCod`,`MonCod`,`EstRegCod`) VALUES ("001-000121","1","2","2016-11-14",578,100,465,19,"Ninguno",2,2,2,1,"A"),("001-000122","7","2","2016-11-09",386,94,381,19,"Ninguno",1,2,1,1,"A"),("001-000123","8","2","2016-11-08",978,111,689,19,"Ninguno",2,1,1,1,"A"),("001-000124","5","2","2016-10-26",929,149,470,19,"Ninguno",1,1,2,1,"A"),("001-000125","8","2","2016-10-16",361,96,937,19,"Ninguno",2,1,2,1,"A"),("001-000126","7","2","2016-10-16",829,76,283,19,"Ninguno",2,2,1,1,"A"),("001-000127","3","2","2016-11-07",860,75,408,19,"Ninguno",1,2,1,1,"A"),("001-000128","5","2","2016-10-10",921,52,226,19,"Ninguno",2,1,1,1,"A"),("001-000129","3","2","2016-11-21",740,76,713,19,"Ninguno",2,2,2,1,"A"),("001-000130","9","2","2016-10-25",473,132,903,19,"Ninguno",2,2,2,1,"A");
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`,`CliCod`,`UsuCod`,`FacVenCabFec`,`FacVenCabTot`,`FacVenCabDes`,`FacVenCabSubTot`,`FacVenCabIGV`,`FacVenCabObs`,`EstFacCod`,`MetPagCod`,`TipPagCod`,`MonCod`,`EstRegCod`) VALUES ("001-000131","6","2","2016-09-24",925,148,589,19,"Ninguno",2,2,1,1,"A"),("001-000132","1","2","2016-10-14",635,121,507,19,"Ninguno",1,1,2,1,"A"),("001-000133","9","2","2016-10-31",428,147,943,19,"Ninguno",1,2,2,1,"A"),("001-000134","6","2","2016-10-03",704,123,941,19,"Ninguno",2,1,1,1,"A"),("001-000135","3","2","2016-10-12",696,130,781,19,"Ninguno",2,2,1,1,"A"),("001-000136","7","2","2016-10-22",483,96,415,19,"Ninguno",2,2,2,1,"A"),("001-000137","3","2","2016-11-13",758,97,878,19,"Ninguno",2,1,2,1,"A"),("001-000138","7","2","2016-11-15",441,53,479,19,"Ninguno",1,1,2,1,"A"),("001-000139","1","2","2016-10-09",670,79,305,19,"Ninguno",1,1,1,1,"A"),("001-000140","1","2","2016-10-26",614,65,701,19,"Ninguno",2,2,1,1,"A");
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`,`CliCod`,`UsuCod`,`FacVenCabFec`,`FacVenCabTot`,`FacVenCabDes`,`FacVenCabSubTot`,`FacVenCabIGV`,`FacVenCabObs`,`EstFacCod`,`MetPagCod`,`TipPagCod`,`MonCod`,`EstRegCod`) VALUES ("001-000141","2","2","2016-10-06",608,65,412,19,"Ninguno",1,2,1,1,"A"),("001-000142","4","2","2016-10-26",884,127,953,19,"Ninguno",1,2,2,1,"A"),("001-000143","7","2","2016-10-31",873,136,408,19,"Ninguno",2,2,2,1,"A"),("001-000144","4","2","2016-10-12",411,131,266,19,"Ninguno",1,1,2,1,"A"),("001-000145","8","2","2016-11-13",737,58,452,19,"Ninguno",1,2,2,1,"A"),("001-000146","9","2","2016-10-23",591,68,305,19,"Ninguno",1,1,2,1,"A"),("001-000147","7","2","2016-10-31",240,117,910,19,"Ninguno",1,1,1,1,"A"),("001-000148","10","2","2016-11-16",621,68,366,19,"Ninguno",1,2,2,1,"A"),("001-000149","7","2","2016-10-10",559,104,580,19,"Ninguno",1,1,1,1,"A"),("001-000150","5","2","2016-10-14",272,71,676,19,"Ninguno",2,1,2,1,"A");
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`,`CliCod`,`UsuCod`,`FacVenCabFec`,`FacVenCabTot`,`FacVenCabDes`,`FacVenCabSubTot`,`FacVenCabIGV`,`FacVenCabObs`,`EstFacCod`,`MetPagCod`,`TipPagCod`,`MonCod`,`EstRegCod`) VALUES ("001-000151","3","2","2016-11-08",422,57,390,19,"Ninguno",2,2,2,1,"A"),("001-000152","5","2","2016-10-24",354,107,596,19,"Ninguno",1,1,2,1,"A"),("001-000153","8","2","2016-10-19",439,96,918,19,"Ninguno",2,1,2,1,"A"),("001-000154","3","2","2016-10-02",957,81,659,19,"Ninguno",2,2,1,1,"A"),("001-000155","10","2","2016-10-08",582,64,532,19,"Ninguno",2,2,2,1,"A"),("001-000156","9","2","2016-09-30",438,78,316,19,"Ninguno",1,1,1,1,"A"),("001-000157","4","2","2016-09-22",719,95,971,19,"Ninguno",1,1,2,1,"A"),("001-000158","4","2","2016-09-24",802,64,689,19,"Ninguno",2,2,1,1,"A"),("001-000159","7","2","2016-10-22",997,92,335,19,"Ninguno",2,2,1,1,"A"),("001-000160","3","2","2016-11-04",229,103,870,19,"Ninguno",1,1,1,1,"A");
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`,`CliCod`,`UsuCod`,`FacVenCabFec`,`FacVenCabTot`,`FacVenCabDes`,`FacVenCabSubTot`,`FacVenCabIGV`,`FacVenCabObs`,`EstFacCod`,`MetPagCod`,`TipPagCod`,`MonCod`,`EstRegCod`) VALUES ("001-000161","5","2","2016-11-22",631,129,750,19,"Ninguno",1,1,1,1,"A"),("001-000162","4","2","2016-11-09",723,55,229,19,"Ninguno",2,1,1,1,"A"),("001-000163","7","2","2016-10-16",548,128,647,19,"Ninguno",2,2,2,1,"A"),("001-000164","5","2","2016-10-09",777,67,955,19,"Ninguno",2,1,2,1,"A"),("001-000165","8","2","2016-11-05",225,61,471,19,"Ninguno",2,2,2,1,"A"),("001-000166","3","2","2016-11-19",780,92,854,19,"Ninguno",1,1,1,1,"A"),("001-000167","7","2","2016-11-19",786,80,554,19,"Ninguno",1,1,2,1,"A"),("001-000168","7","2","2016-10-17",805,126,516,19,"Ninguno",1,1,2,1,"A"),("001-000169","6","2","2016-10-15",969,129,679,19,"Ninguno",1,2,2,1,"A"),("001-000170","7","2","2016-11-22",262,97,228,19,"Ninguno",1,2,1,1,"A");
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`,`CliCod`,`UsuCod`,`FacVenCabFec`,`FacVenCabTot`,`FacVenCabDes`,`FacVenCabSubTot`,`FacVenCabIGV`,`FacVenCabObs`,`EstFacCod`,`MetPagCod`,`TipPagCod`,`MonCod`,`EstRegCod`) VALUES ("001-000171","1","2","2016-10-06",420,52,906,19,"Ninguno",1,2,1,1,"A"),("001-000172","6","2","2016-10-11",817,131,304,19,"Ninguno",2,2,2,1,"A"),("001-000173","9","2","2016-09-30",805,53,502,19,"Ninguno",2,1,2,1,"A"),("001-000174","6","2","2016-10-07",767,72,386,19,"Ninguno",2,2,1,1,"A"),("001-000175","3","2","2016-10-20",409,53,641,19,"Ninguno",2,2,1,1,"A"),("001-000176","1","2","2016-10-12",787,145,324,19,"Ninguno",2,1,1,1,"A"),("001-000177","10","2","2016-10-25",391,142,851,19,"Ninguno",1,1,2,1,"A"),("001-000178","4","2","2016-11-02",476,57,973,19,"Ninguno",1,1,1,1,"A"),("001-000179","4","2","2016-10-08",921,143,765,19,"Ninguno",1,2,1,1,"A"),("001-000180","2","2","2016-10-18",333,124,528,19,"Ninguno",1,1,1,1,"A");
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`,`CliCod`,`UsuCod`,`FacVenCabFec`,`FacVenCabTot`,`FacVenCabDes`,`FacVenCabSubTot`,`FacVenCabIGV`,`FacVenCabObs`,`EstFacCod`,`MetPagCod`,`TipPagCod`,`MonCod`,`EstRegCod`) VALUES ("001-000181","8","2","2016-11-14",771,101,618,19,"Ninguno",2,1,1,1,"A"),("001-000182","7","2","2016-10-27",257,138,357,19,"Ninguno",2,1,2,1,"A"),("001-000183","9","2","2016-10-30",984,117,612,19,"Ninguno",1,1,2,1,"A"),("001-000184","7","2","2016-09-24",846,92,701,19,"Ninguno",1,1,1,1,"A"),("001-000185","3","2","2016-10-29",594,84,211,19,"Ninguno",1,2,2,1,"A"),("001-000186","5","2","2016-10-14",814,125,213,19,"Ninguno",2,2,1,1,"A"),("001-000187","4","2","2016-11-01",498,134,933,19,"Ninguno",1,2,1,1,"A"),("001-000188","2","2","2016-10-19",931,58,304,19,"Ninguno",2,2,1,1,"A"),("001-000189","8","2","2016-11-18",397,52,295,19,"Ninguno",1,2,2,1,"A"),("001-000190","6","2","2016-10-28",222,119,906,19,"Ninguno",1,2,1,1,"A");
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`,`CliCod`,`UsuCod`,`FacVenCabFec`,`FacVenCabTot`,`FacVenCabDes`,`FacVenCabSubTot`,`FacVenCabIGV`,`FacVenCabObs`,`EstFacCod`,`MetPagCod`,`TipPagCod`,`MonCod`,`EstRegCod`) VALUES ("001-000191","1","2","2016-11-18",421,127,774,19,"Ninguno",1,2,2,1,"A"),("001-000192","5","2","2016-10-15",826,97,261,19,"Ninguno",2,1,1,1,"A"),("001-000193","8","2","2016-11-21",795,58,940,19,"Ninguno",1,1,1,1,"A"),("001-000194","3","2","2016-10-07",539,95,259,19,"Ninguno",1,1,1,1,"A"),("001-000195","2","2","2016-10-12",339,93,919,19,"Ninguno",1,1,1,1,"A"),("001-000196","6","2","2016-10-08",333,65,340,19,"Ninguno",2,2,1,1,"A"),("001-000197","1","2","2016-10-31",431,117,558,19,"Ninguno",2,1,2,1,"A"),("001-000198","9","2","2016-11-09",687,133,425,19,"Ninguno",2,2,1,1,"A"),("001-000199","9","2","2016-11-19",822,58,542,19,"Ninguno",1,2,1,1,"A"),("001-000200","2","2","2016-10-04",236,106,542,19,"Ninguno",1,2,1,1,"A");
INSERT INTO `en_p1m_factura_venta_cab` (`FacVenCabCod`,`CliCod`,`UsuCod`,`FacVenCabFec`,`FacVenCabTot`,`FacVenCabDes`,`FacVenCabSubTot`,`FacVenCabIGV`,`FacVenCabObs`,`EstFacCod`,`MetPagCod`,`TipPagCod`,`MonCod`,`EstRegCod`) VALUES ("001-000201","9","2","2016-09-23",634,75,392,19,"Ninguno",2,1,1,1,"A"),("001-000202","6","2","2016-10-06",654,57,814,19,"Ninguno",1,1,1,1,"A"),("001-000203","8","2","2016-09-22",540,137,971,19,"Ninguno",1,1,2,1,"A"),("001-000204","3","2","2016-11-03",567,59,974,19,"Ninguno",2,1,1,1,"A"),("001-000205","8","2","2016-11-17",471,56,798,19,"Ninguno",1,2,2,1,"A"),("001-000206","4","2","2016-11-14",981,103,315,19,"Ninguno",1,2,2,1,"A"),("001-000207","6","2","2016-10-22",804,114,521,19,"Ninguno",2,1,2,1,"A"),("001-000208","10","2","2016-09-23",833,139,500,19,"Ninguno",1,1,1,1,"A"),("001-000209","3","2","2016-10-31",764,116,813,19,"Ninguno",2,1,1,1,"A"),("001-000210","5","2","2016-10-24",440,74,322,19,"Ninguno",1,1,1,1,"A");

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
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000111","1",'01', '01', '7755523010128',"6","23.92");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000112","1",'01', '01', '7755523010128',"10","34.66");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000113","1",'01', '01', '7755523010128',"8","5.67");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000114","1",'01', '01', '7755523010128',"19","5.36");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000115","1",'01', '01', '7755523010137',"19","47.05");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000116","1",'01', '01', '7755523010137',"6","8.48");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000117","1",'01', '01', '7755523010137',"16","6.80");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000118","1",'01', '01', '7755523010146',"13","3.52");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000119","1",'01', '01', '7755523010146',"19","12.39");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000120","1",'01', '01', '7755523010146',"5","41.47");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000121","1",'01', '01', '7755523010146',"11","29.23");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000122","1",'01', '02', '7755523010216',"6","26.43");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000123","1",'01', '02', '7755523010216',"10","29.81");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000124","1",'01', '02', '7755523010216',"5","15.67");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000125","1",'01', '02', '7755523010216',"16","13.24");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000126","1",'01', '02', '7755523010216',"12","21.77");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000111","2",'01', '01', '7755523010137',"15","47.30");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000112","2",'01', '01', '7755523010137',"16","15.21");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000113","2",'01', '01', '7755523010137',"20","26.99");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000114","2",'01', '01', '7755523010146',"19","20.46");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000115","2",'01', '01', '7755523010146',"19","13.56");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000116","2",'01', '01', '7755523010146',"14","33.26");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000117","2",'01', '02', '7755523010216',"4","45.95");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000118","2",'01', '02', '7755523010216',"11","4.80");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000119","2",'01', '02', '7755523010216',"7","8.62");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000120","2",'01', '02', '7755523010225',"10","41.48");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000121","2",'01', '02', '7755523010225',"5","39.33");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000122","2",'01', '02', '7755523010225',"14","17.15");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000123","2",'01', '02', '7755523010234',"10","40.95");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000124","2",'01', '02', '7755523010234',"8","5.08");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000111","7",'01', '01', '7755523010146',"8","19.14");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000112","7",'01', '01', '7755523010146',"8","26.38");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000113","7",'01', '01', '7755523010146',"7","26.40");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000114","7",'01', '02', '7755523010225',"13","43.99");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000115","7",'01', '02', '7755523010225',"7","32.91");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000116","7",'01', '02', '7755523010225',"7","48.86");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000117","7",'01', '02', '7755523010234',"16","16.89");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000118","7",'01', '02', '7755523010234',"16","29.42");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000119","7",'01', '02', '7755523010234',"10","17.10");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000120","7",'01', '02', '7755523010216',"17","45.90");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000121","7",'01', '02', '7755523010216',"13","37.81");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000122","7",'01', '03', '7755523010313',"9","12.80");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000123","7",'01', '03', '7755523010313',"12","44.51");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000124","7",'01', '03', '7755523010313',"9","27.11");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000111","3",'01', '02', '7755523010225',"10","34.58");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000112","3",'01', '02', '7755523010225',"20","28.05");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000113","3",'01', '02', '7755523010225',"4","15.87");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000114","3",'01', '03', '7755523010313',"20","30.39");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000115","3",'01', '03', '7755523010313',"13","33.99");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000116","3",'01', '03', '7755523010313',"14","14.45");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000117","3",'01', '03', '7755523010313',"4","29.39");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000118","3",'01', '01', '7755523010137',"17","28.41");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000119","3",'01', '01', '7755523010137',"16","33.41");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000120","3",'01', '01', '7755523010137',"4","9.14");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000121","3",'01', '01', '7755523010137',"20","39.41");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000122","3",'01', '03', '7755523010322',"17","10.51");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000123","3",'01', '03', '7755523010322',"15","41.53");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000124","3",'01', '03', '7755523010322',"4","7.58");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000111","4",'01', '02', '7755523010234',"5","47.55");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000112","4",'01', '02', '7755523010234',"17","27.07");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000113","4",'01', '03', '7755523010331',"19","4.89");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000114","4",'01', '03', '7755523010331',"3","19.32");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000115","4",'02', '01', '7755523020125',"12","36.66");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000116","4",'02', '01', '7755523020125',"3","31.86");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000117","4",'02', '01', '7755523020125',"12","10.72");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000118","4",'02', '01', '7755523020125',"18","30.45");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000119","4",'02', '01', '7755523020116',"10","21.96");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000120","4",'02', '01', '7755523020116',"9","46.95");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000121","4",'02', '01', '7755523020116',"20","13.20");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000122","4",'02', '01', '7755523020134',"4","38.79");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000123","4",'02', '01', '7755523020125',"8","10.52");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000124","4",'02', '01', '7755523020125',"13","15.54");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000111","5",'02', '02', '7755523020213',"14","28.64");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000112","5",'02', '02', '7755523020213',"12","22.72");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000113","5",'02', '02', '7755523020231',"20","41.89");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000114","5",'02', '01', '7755523020116',"17","2.96");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000115","5",'02', '01', '7755523020116',"17","2.74");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000116","5",'02', '02', '7755523020231',"7","31.21");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000117","5",'02', '01', '7755523020134',"17","15.91");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000118","5",'02', '01', '7755523020134',"18","30.71");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000119","5",'02', '02', '7755523020213',"12","39.21");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000120","5",'02', '02', '7755523020231',"16","10.63");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000121","5",'02', '02', '7755523020231',"19","2.48");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000122","5",'01', '01', '7755523010137',"5","31.51");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000123","5",'01', '01', '7755523010137',"12","17.34");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000124","5",'01', '01', '7755523010137',"4","38.62");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000111","6",'01', '03', '7755523010322',"4","48.00");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000112","6",'01', '03', '7755523010322',"15","25.45");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000113","6",'01', '03', '7755523010322',"20","15.67");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000114","6",'01', '03', '7755523010322',"13","13.55");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000115","6",'01', '03', '7755523010322',"12","42.00");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000116","6",'02', '03', '7755523020310',"4","42.05");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000117","6",'02', '03', '7755523020310',"15","41.58");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000118","6",'02', '03', '7755523020310',"13","29.58");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000119","6",'02', '03', '7755523020310',"17","24.58");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000120","6",'02', '03', '7755523020310',"19","43.15");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000121","6",'02', '03', '7755523020310',"12","7.72");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000122","6",'01', '03', '7755523010331',"20","24.36");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000123","6",'01', '03', '7755523010331',"5","4.65");
INSERT INTO `en_p1t_factura_venta_det` (`FacVenCabCod`,`FacVenDetCod`,`ClaProCod`,`SubClaProCod`,`ProCod`,`FacVenDetCan`,`FacVenDetValUni`) VALUES ("001-000124","6",'01', '03', '7755523010331',"20","47.19");

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_movimiento_punto_ven`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('1', '00101', '000005', '1', '001-000001', '2', '2016-10-09', '1500.00', 'A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('2', '00105', '000007', '1', '001-000002', '2', '2016-10-09', '23424.20', 'A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('3', '00105', '000007', '1', '001-000003', '2', '2016-10-09', '23424.20', 'A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('4', '00106', '000013', '1', '001-000004', '2', '2016-10-09', '724','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('5', '00105', '000011', '1', '001-000005', '2', '2016-10-09', '961','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('6', '00108', '000015', '1', '001-000006', '2', '2016-10-09', '153','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('7', '00107', '000029', '1', '001-000007', '2', '2016-10-09', '771','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('8', '00108', '000032', '1', '001-000008', '2', '2016-10-09', '811','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('9', '00105', '000023', '1', '001-000009', '2', '2016-10-09', '547','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('10', '00108', '000003', '1', '001-000010', '2', '2016-10-09', '778','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('11', '00103', '000037', '1', '001-000011', '2', '2016-10-09', '264','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('12', '00101', '000005', '1', '001-000012', '2', '2016-10-09', '101','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('13', '00104', '000046', '1', '001-000013', '2', '2016-10-09', '966','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('14', '00105', '000023', '1', '001-000014', '2', '2016-10-09', '538','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('15', '00102', '000016', '1', '001-000015', '2', '2016-10-09', '724','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('16', '00105', '000011', '1', '001-000016', '2', '2016-10-09', '961','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('17', '00108', '000015', '1', '001-000017', '2', '2016-10-09', '153','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('18', '00107', '000029', '1', '001-000018', '2', '2016-10-09', '771','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('19', '00102', '000016', '1', '001-000019', '2', '2016-10-09', '724','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('20', '00105', '000011', '1', '001-000020', '2', '2016-10-09', '961','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('21', '00108', '000015', '1', '001-000021', '2', '2016-10-09', '153','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('22', '00107', '000029', '1', '001-000022', '2', '2016-10-09', '771','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('23', '00108', '000032', '1', '001-000023', '2', '2016-10-09', '811','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('24', '00105', '000023', '1', '001-000024', '2', '2016-10-09', '547','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('25', '00108', '000003', '1', '001-000025', '2', '2016-10-09', '778','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('26', '00103', '000037', '1', '001-000026', '2', '2016-10-09', '264','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('27', '00101', '000005', '1', '001-000027', '2', '2016-10-09', '101','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('28', '00104', '000046', '1', '001-000028', '2', '2016-10-09', '966','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('29', '00105', '000023', '1', '001-000029', '2', '2016-10-09', '538','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('30', '00102', '000034', '1', '001-000030', '2', '2016-10-09', '704','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('31', '00104', '000045', '1', '001-000031', '2', '2016-10-09', '72','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('32', '00102', '000016', '1', '001-000032', '2', '2016-10-09', '724','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('33', '00105', '000011', '1', '001-000033', '2', '2016-10-09', '961','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('34', '00108', '000015', '1', '001-000034', '2', '2016-10-09', '153','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('35', '00107', '000029', '1', '001-000035', '2', '2016-10-09', '771','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('36', '00108', '000032', '1', '001-000036', '2', '2016-10-09', '811','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('37', '00105', '000023', '1', '001-000037', '2', '2016-10-09', '547','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('38', '00108', '000003', '1', '001-000038', '2', '2016-10-09', '778','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('39', '00103', '000037', '1', '001-000039', '2', '2016-10-09', '264','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('40', '00101', '000005', '1', '001-000040', '2', '2016-10-09', '101','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('41', '00104', '000046', '1', '001-000041', '2', '2016-10-09', '966','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('42', '00105', '000023', '1', '001-000042', '2', '2016-10-09', '538','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('43', '00102', '000034', '1', '001-000043', '2', '2016-10-09', '704','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('44', '00104', '000045', '1', '001-000044', '2', '2016-10-09', '72','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('45', '00102', '000016', '1', '001-000045', '2', '2016-10-09', '724','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('46', '00105', '000011', '1', '001-000046', '2', '2016-10-09', '961','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('47', '00108', '000015', '1', '001-000047', '2', '2016-10-09', '153','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('48', '00107', '000029', '1', '001-000048', '2', '2016-10-09', '771','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('49', '00108', '000032', '1', '001-000049', '2', '2016-10-09', '811','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('50', '00105', '000023', '1', '001-000050', '2', '2016-10-09', '547','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('51', '00108', '000003', '1', '001-000051', '2', '2016-10-09', '778','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('52', '00103', '000037', '1', '001-000052', '2', '2016-10-09', '264','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('53', '00101', '000005', '1', '001-000053', '2', '2016-10-09', '101','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('54', '00104', '000046', '1', '001-000054', '2', '2016-10-09', '966','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('55', '00105', '000023', '1', '001-000055', '2', '2016-10-09', '538','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('56', '00102', '000034', '1', '001-000056', '2', '2016-10-09', '704','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('57', '00104', '000045', '1', '001-000057', '2', '2016-10-09', '72','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('58', '00102', '000016', '1', '001-000058', '2', '2016-10-09', '724','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('59', '00105', '000011', '1', '001-000059', '2', '2016-10-09', '961','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('60', '00108', '000015', '1', '001-000060', '2', '2016-10-09', '153','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('61', '00107', '000029', '1', '001-000061', '2', '2016-10-09', '771','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('62', '00108', '000032', '1', '001-000062', '2', '2016-10-09', '811','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('63', '00105', '000023', '1', '001-000063', '2', '2016-10-09', '547','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('64', '00108', '000003', '1', '001-000064', '2', '2016-10-09', '778','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('65', '00103', '000037', '1', '001-000065', '2', '2016-10-09', '264','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('66', '00101', '000005', '1', '001-000066', '2', '2016-10-09', '101','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('67', '00104', '000046', '1', '001-000067', '2', '2016-10-09', '966','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('68', '00105', '000023', '1', '001-000068', '2', '2016-10-09', '538','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('69', '00102', '000034', '1', '001-000069', '2', '2016-10-09', '704','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('70', '00104', '000045', '1', '001-000070', '2', '2016-10-09', '72','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('71', '00104', '000045', '1', '001-000071', '2', '2016-10-09', '161','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('72', '00106', '000013', '1', '001-000072', '2', '2016-10-09', '150','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('73', '00101', '000005', '1', '001-000073', '2', '2016-10-09', '457','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('74', '00106', '000013', '1', '001-000074', '2', '2016-10-09', '589','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('75', '00101', '000005', '1', '001-000075', '2', '2016-10-09', '762','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('76', '00105', '000007', '1', '001-000076', '2', '2016-10-09', '41','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('77', '00107', '000029', '1', '001-000077', '2', '2016-10-09', '348','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('78', '00102', '000043', '1', '001-000078', '2', '2016-10-09', '938','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('79', '00108', '000020', '1', '001-000079', '2', '2016-10-09', '807','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('80', '00104', '000050', '1', '001-000080', '2', '2016-10-09', '451','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('81', '00107', '000033', '1', '001-000081', '2', '2016-10-09', '844','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('82', '00106', '000031', '1', '001-000082', '2', '2016-10-09', '587','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('83', '00101', '000001', '1', '001-000083', '2', '2016-10-09', '798','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('84', '00110', '000036', '1', '001-000084', '2', '2016-10-09', '292','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('85', '00108', '000038', '1', '001-000085', '2', '2016-10-09', '156','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('86', '00103', '000010', '1', '001-000086', '2', '2016-10-09', '886','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('87', '00103', '000019', '1', '001-000087', '2', '2016-10-09', '322','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('88', '00108', '000032', '1', '001-000088', '2', '2016-10-09', '712','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('89', '00110', '000036', '1', '001-000089', '2', '2016-10-09', '255','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('90', '00103', '000027', '1', '001-000090', '2', '2016-10-09', '757','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('91', '00105', '000007', '1', '001-000091', '2', '2016-10-09', '368','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('92', '00105', '000047', '1', '001-000092', '2', '2016-10-09', '60','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('93', '00104', '000050', '1', '001-000093', '2', '2016-10-09', '549','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('94', '00104', '000025', '1', '001-000094', '2', '2016-10-09', '105','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('95', '00105', '000007', '1', '001-000095', '2', '2016-10-09', '786','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('96', '00106', '000013', '1', '001-000096', '2', '2016-10-09', '945','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('97', '00109', '000009', '1', '001-000097', '2', '2016-10-09', '196','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('98', '00106', '000031', '1', '001-000098', '2', '2016-10-09', '659','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('99', '00105', '000011', '1', '001-000099', '2', '2016-10-09', '186','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('100', '00109', '000030', '1', '001-000100', '2', '2016-10-09', '391','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('101', '00105', '000011', '1', '001-000101', '2', '2016-10-09', '372','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('102', '00108', '000020', '1', '001-000102', '2', '2016-10-09', '270','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('103', '00106', '000012', '1', '001-000103', '2', '2016-10-09', '802','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('104', '00104', '000025', '1', '001-000104', '2', '2016-10-09', '181','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('105', '00104', '000025', '1', '001-000105', '2', '2016-10-09', '222','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('106', '00108', '000015', '1', '001-000106', '2', '2016-10-09', '170','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('107', '00101', '000001', '1', '001-000107', '2', '2016-10-09', '140','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('108', '00110', '000036', '1', '001-000108', '2', '2016-10-09', '302','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('109', '00104', '000045', '1', '001-000109', '2', '2016-10-09', '119','A');
INSERT INTO `en_p1m_movimiento_punto_ven` (`MovPunVenCod`, `SucCod`, `PunVenCod`, `TipComCod`, `MovPunVenComCod`, `UsuCod`, `MovPunVenFec`, `MovPunVenMon`, `EstRegCod`) VALUES ('110', '00101', '000005', '1', '001-000110', '2', '2016-10-09', '315','A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_preventa_cab`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_preventa_cab` (`PreVenCabCod`, `CliCod`, `UsuCod`, `PreVenCabFec`, `PreVenCabPla`, `PreVenCabTot`, `PreVenCabDes`, `PreVenCabSubTot`, `PreVenCabIGV`, `PreVenCabObs`, `MonCod`, `EstRegCod`) VALUES ('001-000001', '1', '2', '2016-10-09', '1', '1500', '285', '1215', '19', 'Ninguna', '01', 'A');
INSERT INTO `en_p1m_preventa_cab` (`PreVenCabCod`, `CliCod`, `UsuCod`, `PreVenCabFec`, `PreVenCabPla`, `PreVenCabTot`, `PreVenCabDes`, `PreVenCabSubTot`, `PreVenCabIGV`, `PreVenCabObs`, `MonCod`, `EstRegCod`) VALUES ('001-000002', '2', '2', '2016-10-09', '1', '1800', '342', '1458', '19', 'Ninguna', '01', 'A');
INSERT INTO `en_p1m_preventa_cab` (`PreVenCabCod`, `CliCod`, `UsuCod`, `PreVenCabFec`, `PreVenCabPla`, `PreVenCabTot`, `PreVenCabDes`, `PreVenCabSubTot`, `PreVenCabIGV`, `PreVenCabObs`, `MonCod`, `EstRegCod`) VALUES ('001-000003', '3', '2', '2016-10-09', '1', '2000', '380', '1620', '19', 'Ninguna', '01', 'A');

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
-- Data for table `episerp`.`en_p3m_cuenta`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (541, 434, 5, '10410', 'CENTRAL DE RESERVA DEL PERU', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (542, 434, 5, '10411', 'NACION', 'A');
INSERT INTO `episerp`.`en_p3m_cuenta` (`CueCod`, `CuePad`, `CueNiv`, `CueNum`, `CueDes`, `EstRegCod`) VALUES (543, 434, 5, '10412', 'SCOTIABANK PERU', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p3m_cuenta_banco`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p3m_cuenta_banco` VALUES (1, 01, '3001033189', 541, 'A');
INSERT INTO `en_p3m_cuenta_banco` VALUES (2, 18, '4120239490', 542, 'A');
INSERT INTO `en_p3m_cuenta_banco` VALUES (3, 09, '2003993301', 543, 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p4m_proveedor`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
START TRANSACTION;
USE `episerp`;
INSERT INTO `episerp`.`en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('123456789121', 'ARCON', 'Milagros Aguilar Zuñiga', 'Mz. C Lt.9 Las Mercedes Cerro Colorado','054454908', '945995506', 'arcon@proveedores.com', 'www.arcon.com', '', 'A');
INSERT INTO `episerp`.`en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('789456123121', 'Central Hisumer', 'Melina Alvarez Obregon', 'Calle 28 de Julio Vallecito Cercado', '054124578', '94563524178', 'hisumer@proveedores.com', 'www.centralhisumer.com', '', 'A');
INSERT INTO `episerp`.`en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('147258369121', 'IberCorte', 'Erick Cruz Salinas', 'Urb. Santa Cecilia A-2 Yanahuara', '054784512', '945120346', 'ibercorte@proveedores.com', 'www.ibercorte.com', '', 'A');
INSERT INTO `episerp`.`en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('369258147121', 'Grupo Guerra Distribuidores', 'Walter Toledo Turpo', 'Calle Paz Soldan 407 Yanahuara', '054968574', '940784512', 'guerra@distribuidores.com', 'www.guerradistribuidores.com', '', 'A');
INSERT INTO `episerp`.`en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('258147369121', 'EHOSA', 'Grisseldy Arenas Orejuela', 'Av. San Martin 205 Miraflores', '054326598', '945023678', 'ehosa@proveedores.com', 'www.ehosadistribuidores.com', '', 'A');
INSERT INTO `episerp`.`en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('321654987121', 'Disconfa', 'Sharon Bedregal Machaca', 'Av. La Paz 509', '054368971', '948152634', 'disconfa@proveedores.com', 'www.proveedoresdisconfa.com', '', 'A');
INSERT INTO `episerp`.`en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('987654321121', 'Import Export', 'José Paiva Franco', 'Centro Comercial Cayma 3er Piso', '054867219', '945007184', 'importexport@proveedores.com', 'www.importexport.com', '', 'A');
INSERT INTO `episerp`.`en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('654321987121', 'NavaRioja', 'Abelardo Alvarez Martinez', 'Via Evitamiento Km3 Cerro Colorado', '054237816', '945301020', 'navarioja@proveedores.com', 'www.navarioja.com', '', 'A');
INSERT INTO `episerp`.`en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('456123789121', 'Dadyma', 'Carlos Gershy Pinto', 'Av. San Martin 603 Miraflores', '054789123', '945781266', 'dadyma@proveedores.com', 'www.dadyma.com', '', 'A');
INSERT INTO `episerp`.`en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('456741852121', 'Alcamar', 'Gretel Cama Pizarro', 'Coorp. 19 D-10 Paucarpata', '054962317', '945662322', 'alcamar@proveedores.com', 'www.alcamar.com', '', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p4m_documento_proveedor`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p4m_documento_proveedor` (`PrvCod`, `TipDocProCod`, `DocProNum`, `EstRegCod`) VALUES ('123456789121', 2, '123456789121', 'A');
INSERT INTO `en_p4m_documento_proveedor` (`PrvCod`, `TipDocProCod`, `DocProNum`, `EstRegCod`) VALUES ('789456123121', 2, '789456123121', 'A');
INSERT INTO `en_p4m_documento_proveedor` (`PrvCod`, `TipDocProCod`, `DocProNum`, `EstRegCod`) VALUES ('147258369121', 2, '147258369121', 'A');
INSERT INTO `en_p4m_documento_proveedor` (`PrvCod`, `TipDocProCod`, `DocProNum`, `EstRegCod`) VALUES ('369258147121', 2, '369258147121', 'A');
INSERT INTO `en_p4m_documento_proveedor` (`PrvCod`, `TipDocProCod`, `DocProNum`, `EstRegCod`) VALUES ('258147369121', 2, '258147369121', 'A');
INSERT INTO `en_p4m_documento_proveedor` (`PrvCod`, `TipDocProCod`, `DocProNum`, `EstRegCod`) VALUES ('321654987121', 2, '321654987121', 'A');
INSERT INTO `en_p4m_documento_proveedor` (`PrvCod`, `TipDocProCod`, `DocProNum`, `EstRegCod`) VALUES ('987654321121', 2, '987654321121', 'A');
INSERT INTO `en_p4m_documento_proveedor` (`PrvCod`, `TipDocProCod`, `DocProNum`, `EstRegCod`) VALUES ('654321987121', 2, '654321987121', 'A');
INSERT INTO `en_p4m_documento_proveedor` (`PrvCod`, `TipDocProCod`, `DocProNum`, `EstRegCod`) VALUES ('456123789121', 2, '456123789121', 'A');
INSERT INTO `en_p4m_documento_proveedor` (`PrvCod`, `TipDocProCod`, `DocProNum`, `EstRegCod`) VALUES ('456741852121', 2, '456741852121', 'A');

COMMIT;

/*
-- Query: SELECT * FROM episerp.en_p3m_libro_diario
LIMIT 0, 1000

-- Date: 2016-10-27 17:33
*/
INSERT INTO `en_p3m_libro_diario` (`LibDiaCod`,`LibDiaPer`,`EstRegCod`) VALUES (000001,'2016-Oct','A');

/*
-- Query: SELECT * FROM episerp.en_p3m_asiento_cab
LIMIT 0, 1000

-- Date: 2016-10-27 17:26
*/
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000001,'M','factura 001-4678','2016-08-26',01,'001-4678',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000002,'M','ón en la factura 001-4678','2016-08-26',01,'001-4678',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000003,'M','la adquirida con factura 001-4678','2016-08-26',01,'001-4678',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000004,'M','la factura 002-3675','2016-08-29',01,'002-3675',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000005,'M','la factura 002-3675','2016-08-29',01,'002-3675',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000006,'M','001-3454','2016-08-30',03,'001-3454',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000007,'M','ón en la 001-3454','2016-08-30',03,'001-3454',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000008,'M','la adquirida mediante 001-3454','2016-08-30',03,'001-3454',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000009,'M','la segun 002-3326','2016-09-02',03,'002-3326',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000010,'M','la 002-3326','2016-09-02',03,'002-3326',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000011,'M','factura 003-3498','2016-09-05',01,'003-3498',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000012,'M','ón en la factura 003-3498','2016-09-05',01,'003-3498',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000013,'M','la adquirida con factura 003-3498','2016-09-05',01,'003-3498',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000014,'M','la factura 004-7437','2016-09-06',01,'004-7437',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000015,'M','la factura 004-7437','2016-09-06',01,'004-7437',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000016,'M','003-7588','2016-09-07',03,'003-7588',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000017,'M','ón en la 003-7588','2016-09-07',03,'003-7588',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000018,'M','la adquirida mediante 003-7588','2016-09-07',03,'003-7588',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000019,'M','la segun 004-4361','2016-09-08',03,'004-4361',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000020,'M','la 004-4361','2016-09-08',03,'004-4361',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000021,'A','uscripción la  a 100 acción Escritura Pública','2016-09-12',03,'004-4362',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000022,'A','aportes los socios informe los','2016-09-12',03,'004-4363',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000023,'M','provisión mes','2016-09-14',03,'004-4364',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000024,'M','destino','2016-09-14',03,'004-4365',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000025,'M','  001-503','2016-09-14',03,'001-503',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000026,'M','depósitos en corrientesrias: y/o recaudados las','2016-09-15',03,'004-4366',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000027,'M','vehiculo factura 054-012569','2016-09-22',01,'054-012569',01,'A');
INSERT INTO `en_p3m_asiento_cab` (`LibDiaCod`,`AsiCabCod`,`AsiCabTip`,`AsiCabGlo`,`AsiCabFec`,`TipComCod`,`AsiCabNumCom`,`MonCod`,`EstRegCod`) VALUES (000001,0000000028,'M','ón factura 054-012569','2016-09-22',01,'054-012569',01,'A');




/*
-- Query: SELECT * FROM episerp.en_p3t_asiento_det
LIMIT 0, 1000

-- Date: 2016-10-27 17:27
*/
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000001,0000000001,0000000306,1,500.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000001,0000000002,0000000229,1,90.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000001,0000000003,0000000241,0,590.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000002,0000000004,0000000241,1,590.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000002,0000000005,0000000094,0,590.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000003,0000000006,0000000020,1,500.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000003,0000000007,0000000311,0,500.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000004,0000000008,0000000453,1,1180.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000004,0000000009,0000000533,0,180.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000004,0000000010,0000000535,0,1000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000005,0000000011,0000000094,0,1180.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000005,0000000012,0000000453,1,1180.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000006,0000000013,0000000307,1,400.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000006,0000000014,0000000229,1,72.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000006,0000000015,0000000241,0,472.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000007,0000000016,0000000241,1,472.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000007,0000000017,0000000094,0,472.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000008,0000000018,0000000024,1,400.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000008,0000000019,0000000312,0,400.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000009,0000000020,0000000453,1,1416.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000009,0000000021,0000000533,0,216.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000009,0000000022,0000000368,0,1200.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000010,0000000023,0000000094,0,1416.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000010,0000000024,0000000453,1,1416.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000011,0000000025,0000000306,1,350.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000011,0000000026,0000000229,1,63.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000011,0000000027,0000000241,0,413.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000012,0000000028,0000000241,1,413.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000012,0000000029,0000000094,0,413.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000013,0000000030,0000000020,1,350.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000013,0000000031,0000000311,0,350.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000014,0000000032,0000000453,1,1534.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000014,0000000033,0000000533,0,234.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000014,0000000034,0000000535,0,1300.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000015,0000000035,0000000094,0,1534.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000015,0000000036,0000000453,1,1534.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000016,0000000037,0000000307,1,450.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000016,0000000038,0000000229,1,81.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000016,0000000039,0000000241,0,531.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000017,0000000040,0000000241,1,531.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000017,0000000041,0000000094,0,531.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000018,0000000042,0000000024,1,450.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000018,0000000043,0000000312,0,450.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000019,0000000044,0000000453,1,1652.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000019,0000000045,0000000533,0,252.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000019,0000000046,0000000368,0,1400.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000020,0000000047,0000000094,0,1652.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000020,0000000048,0000000453,1,1652.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000021,0000000049,0000000470,1,25000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000021,0000000050,0000000284,0,25000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000022,0000000051,0000000540,1,10000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000022,0000000052,0000000139,1,5000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000022,0000000053,0000000199,1,10000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000022,0000000054,0000000470,0,25000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000023,0000000055,0000000327,1,5000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000023,0000000056,0000000229,0,500.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000023,0000000057,0000000244,0,4500.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000024,0000000058,0000000543,1,5000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000024,0000000059,0000000076,0,5000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000025,0000000060,0000000244,1,5000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000025,0000000061,0000000541,0,5000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000026,0000000062,0000000097,0,280000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000026,0000000063,0000000540,1,105000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000026,0000000064,0000000435,1,175000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000026,0000000065,0000000011,0,280000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000026,0000000066,0000000094,1,105000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000026,0000000067,0000000094,1,175000.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000027,0000000068,0000000200,1,15400.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000027,0000000069,0000000533,1,2772.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000027,0000000070,0000000241,0,18172.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000028,0000000071,0000000241,1,18172.00);
INSERT INTO `en_p3t_asiento_det` (`LibDiaCod`,`AsiCabCod`,`AsiDetCod`,`CueCod`,`AsiDetDebHab`,`AsiDetMon`) VALUES (000001,0000000028,0000000072,0000000542,0,18172.00);

/*Transporte*/
START TRANSACTION;
USE `episerp`;

INSERT INTO `ta_gzz_estado_uni_transporte` (`EstUniTraCod`,`EstUniTraDet`,`EstRegCod`) VALUES (01,"Activo","A");
INSERT INTO `ta_gzz_estado_uni_transporte` (`EstUniTraCod`,`EstUniTraDet`,`EstRegCod`) VALUES (02,"Inactivo","A");
INSERT INTO `ta_gzz_estado_uni_transporte` (`EstUniTraCod`,`EstUniTraDet`,`EstRegCod`) VALUES (03,"En Reparacion","A");
INSERT INTO `ta_gzz_estado_uni_transporte` (`EstUniTraCod`,`EstUniTraDet`,`EstRegCod`) VALUES (04,"En Mantenimiento","A");

COMMIT;

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

START TRANSACTION;
USE `episerp`;

INSERT INTO `ta_gzz_tipo_doc_transportista` (`TipDocTraCod`,`TipDocTraDet`,`EstRegCod`) VALUES (01,"DNI","A");
INSERT INTO `ta_gzz_tipo_doc_transportista` (`TipDocTraCod`,`TipDocTraDet`,`EstRegCod`) VALUES (02,"RUC","A");
INSERT INTO `ta_gzz_tipo_doc_transportista` (`TipDocTraCod`,`TipDocTraDet`,`EstRegCod`) VALUES (03,"Licencia","A");

COMMIT;

START TRANSACTION;
USE `episerp`;

INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("1",1,"Bravo","Fiat",89179,"F3X-826",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("2",4,"Ka","Ford",97858,"F2K-393",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("3",5,"Civic","Honda",5892,"C6H-393",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("4",1,"Fit","Honda",60078,"W0D-549",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("5",4,"207","Peugeot",26461,"I6S-530",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("6",1,"Uno","Fiat",60041,"V8U-405",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("7",2,"City","Honda",28620,"V3B-611",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("9",7,"Cerato","Chery",92719,"V8O-504",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("10",7,"QQ","Citroen",68314,"A6Y-629",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("11",1,"C3","Mini",35632,"Y9A-352",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("12",3,"307","Peugeot",79501,"V6K-724",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("13",4,"X1","Bmw",63784,"Q6B-350",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("14",6,"Fiesta","Ford",64454,"O5O-540",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("15",7,"Focus","Ford",66692,"E3H-923",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("16",2,"i30","Hyundai",80505,"W4N-935",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("17",3,"Wylie","Jeep",16363,"V9K-861",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("18",4,"A3","Audi",19763,"N7B-180",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("19",2,"X6","Bmw",63309,"V5E-637",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("20",4,"Face","Chery",85381,"N5K-492",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("21",1,"Aircross","Citroen",36183,"D9B-212",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("22",3,"Punto","Fiat",72794,"Z3X-742",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("23",4,"Ford","Fusion",93631,"V4L-479",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("24",5,"ix35","Hyundai",5808,"N0C-532",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("25",2,"Sonata","Hyundai",17445,"U9U-969",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("26",6,"Picanto","Kia",74961,"R2Z-676",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("27",5,"3008","Peugeot",59153,"P0A-263",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("28",6,"234","Ssangyong",70966,"O8G-208",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("29",2,"A1","Audi",59660,"L5A-916",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("30",7,"R8","Audi",48591,"V2P-269",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("31",1,"Camaro","Chevrolet",90069,"Y2A-628",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("32",6,"C4","Citroen",1505,"S7V-336",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("33",2,"C4","Fiat",78949,"Z3I-023",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("34",3,"Edge","Ford",39550,"K1S-614",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("35",5,"Asx","Mitsubishi",72640,"X6A-263",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("36",1,"408","Peugeot",32553,"V5W-120",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("37",4,"Journey","Dodge",52780,"V4J-777",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("38",5,"Stilo","Fiat",6860,"J2C-778",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("39",7,"Sorento","Kia",99176,"O1W-675",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("40",2,"Livina","Nissan",56445,"O7I-012",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("41",7,"Cayenne","Porsche",1578,"L7Y-594",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("42",6,"Corolla","Toyota",85972,"I3T-698",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("43",3,"Martin","Aston",15732,"T3R-348",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("44",3,"A8","Audi",99059,"J9D-554",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("45",6,"Agile","Chevrolet",73627,"Q6L-429",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("46",2,"Idea","Fiat",80922,"P2B-621",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("47",6,"Strada","Fiat",25515,"V6K-599",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("48",2,"Frontier","Nissan",29829,"M1W-437",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("49",3,"C30","Volvo",89439,"X2C-121",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("50",3,"XC60","Volvo",94454,"D7O-877",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("51",5,"A4","Audi",88682,"K4V-765",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("52",6,"X5","Bmw",98851,"P0E-182",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("53",2,"Tiggo","Chery",19384,"Y6O-077",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("54",2,"Linea","Flat",41755,"B4O-300",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("55",2,"Gallardo","Lamborghini",93828,"I5G-558",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("56",3,"Tilda","Nissan",78059,"V2I-647",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("57",3,"Logan","Renault",38392,"L9D-111",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("58",7,"Impresa","Subaru",90726,"G9T-777",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("59",1,"Z4","Bmw",47210,"F3N-021",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("60",2,"300C","Chysler",52052,"Y9Q-895",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("61",6,"C5","Citroen",37170,"A3S-832",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("62",7,"Palio","Fiat",39303,"O6Z-375",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("63",4,"Tucson","Hyundai",61101,"J5S-751",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("64",7,"Santra","Nissan",31998,"O7V-674",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("65",4,"207","Peugeot",53860,"G2Y-817",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("66",4,"Q7","Audi",88903,"O3E-092",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("67",7,"M100","Effa",31732,"D6L-602",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("68",2,"Doblo","Fiat",68185,"H9E-805",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("69",1,"Ranger","Ford",6145,"R7F-659",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("70",6,"Daily","Iveco",73117,"B7M-192",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("71",6,"Panamera","Porsche",20048,"I3R-363",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("72",5,"Symbol","Renault",7955,"V3W-185",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("73",5,"SX4","Suzuki",14100,"P8J-473",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("74",4,"A7","Audi",53170,"N8X-530",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("75",4,"California","Ferrari",17266,"T2E-717",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("76",1,"Siena","Fiat",85858,"T9U-801",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("77",5,"HR","Hyundai",5568,"J1V-207",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("78",3,"Cherokee","Jeep",62057,"L7U-885",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("79",7,"Cadenza","Kia",68720,"U0M-471",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("80",2,"Accord","Honda",9321,"Z4X-507",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("81",2,"Bongo","Kia",56637,"G3J-968",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("82",1,"Defender","Land Rover",55898,"D8T-077",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("83",5,"350z","Nissan",71186,"A8I-124",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("84",3,"March","Nissan",25463,"B2H-875",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("85",4,"Hoggar","Peugeot",69642,"T3B-580",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("86",4,"Gol","Volkswagen",36132,"X9E-983",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("87",3,"Q5","Audi",87143,"G9Q-204",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("88",4,"X3","Bmw",16752,"T8G-657",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("89",4,"C4 Pallas","Citroen",79087,"Z3K-421",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("90",7,"458 Italia","Ferrari",85416,"E9R-637",2,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("91",1,"Ecosport","Ford",90967,"H3E-055",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("92",4,"Azera","Hyundai",9868,"F2F-751",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("93",4,"Santa Fe","Hyundai",7341,"A8Q-360",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("94",2,"Outlander","Mitsubishi",20731,"N9J-636",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("95",5,"407","Peugeot",2425,"F0Y-420",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("96",4,"Master","Renault",52954,"H0S-481",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("97",2,"Scenic","Renault",62626,"L3G-807",1,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("98",3,"Forester","Subaru",76298,"B3R-477",4,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("99",2,"A5","Audi",17680,"J5N-544",3,"A");
INSERT INTO `en_p2m_unidad_transporte` (`UniTraCod`,`TipUniTraCod`,`UniTraMod`,`UniTraMar`,`UniTraPes`,`UniTraNumPla`,`EstUniTraCod`,`EstRegCod`) VALUES ("100",1,"A6","Audi",76307,"P0P-168",3,"A");


COMMIT;
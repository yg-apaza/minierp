-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_empresa`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_empresa` (`EmpCod`,`EmpRazSoc`,`EmpNomCom`,`EmpDomFis`,`EmpDes`,`EmpDir`,`EmpTel`,`EmpEmail`,`EmpIGV`,`EmpTipCamCom`,`EmpTipCamVen`,`EmpRUC`,`EmpLot`,`EmpImgURL`) VALUES (2,"Amet Company","Rutrum Institute","P.O. Box 739, 8802 Auctor. Av.","Ninguna","P.O. Box 726, 2750 Elit Av.","(389) 01-2280","gravida.Praesent@disparturient.ca",19,12,13,"57733020499",2,"Crestor"),(3,"Vivamus Nisi LLC","Arcu Aliquam Ltd","Ap #306-9657 Nec, Ave","Ninguna","Ap #254-6721 Aliquet Rd.","(518) 53-4236","sed@CrasinterdumNunc.com",19,13,11,"65245964599",3,"Prednisone"),(4,"At Velit Cras Corporation","Porttitor Vulputate Foundation","9780 Sed Rd.","Ninguna","731-2531 Maecenas St.","(112) 08-0254","Pellentesque.habitant.morbi@at.com",19,15,14,"88207288999",4,"Klor-Con M20"),(5,"Semper Tellus Consulting","Sem Magna Institute","Ap #714-3248 Donec St.","Ninguna","406-4486 Sed Ave","(664) 49-0426","Nulla.dignissim.Maecenas@Donecfelis.ca",19,15,18,"94608674199",5,"Furosemide");
COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_sucursal`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00101', 'Cercado Arequipa Sucursal ', 'Calle Portal de Flores 102 - Cercado', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00102', 'Cerro Colorado Arequipa Sucursal ', 'Ciudad Municipal Call. Los Arces 52 – Cerro Colorado', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00103', 'Cayma Arequipa Sucursal ', 'Calle La Unión Comité 25 - Cayma', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00104', 'Yanahuara Arequipa Sucursal ', 'Av. Bolognesi Nº 142 - Yanahuara', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00105', 'Hunter Arequipa Sucursal ', 'Calle los Arces Psje. 23 Lt 32', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00106', 'La Joya Sucursal ', 'El Cruce, Psje Ordoñez Lt 34', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00107', 'Pedregal Majes Sucursal ', 'Av Arequipa Mz J Lt 34', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00108', 'La Punta Camana Sucursal ', 'La Punta Mz H2 Lt 12', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00109', 'Miraflores Lima Sucursal ', 'Urb Los Guindos Mz D Lt 15', 'A');
INSERT INTO `en_p1m_sucursal` (`SucCod`, `SucDes`, `SucDir`, `EstRegCod`) VALUES ('00110', 'Los Olivos Lima Sucursal ', 'Calle La Merced 413 Of 34 ', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_punto_venta`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00101', '1', 'Punto de Venta Calle Mercaderes', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00102', '2', 'VILLEGAS ASOCIADOS', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00108', '3', 'ZETTA COMUNICADORES LIMITADA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00105', '4', 'CARTOPEL', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00101', '5', 'YASAKI METREX', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00110', '6', 'FEPCO ZONA FRANCA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00105', '7', 'RAPISCOL', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00109', '8', 'TEXTILES WAMSUTTA LTDA.', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00109', '9', 'DISTRIBUIDORA DE CONFECCIONES Y TEXTILES DISCONYTEX LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00103', '10', 'SERRANO GOMEZ PRETECOR LTDA.', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00105', '11', 'PREMOLDA LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00106', '12', 'PRODUCTOS ESPECIALES DE CONCRETO', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00106', '13', 'TRIMCO', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00102', '14', 'DITE', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00108', '15', 'GRUPO INDUCILEMAN LTDA.', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00102', '16', 'COMPAÑIA METALICA ASOCIADA C M A LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00102', '17', 'CONSTRUCTORA SANTA ANA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00106', '18', 'PRODUCTORA ANDINA DE DULCES', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00103', '19', 'TELESENTINEL LTDA.', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00108', '20', 'IMPULSO Y MERCADEO', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00107', '21', 'SOMOS SOLUCIONES LABORALES', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00102', '22', 'KORN/FERRY INTERNATIONAL COLOMBIA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00105', '23', 'SOCIEDAD DE COMERCIALIZACION INTERNACIONAL CICOLTA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00103', '24', 'ANCLA LIMITADA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00104', '25', 'CONSULTORES UNIDOS', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00103', '26', 'TECNICONTROL', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00103', '27', 'GARCIA WERNHER Y CIA S EN C.', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00102', '28', 'VENTAS Y SERVICIOS', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00107', '29', 'LISTOS', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00109', '30', 'LABORALES MEDELLIN', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00106', '31', 'COMPAÑIA MANUFACTURERA ONIX', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00108', '32', 'INDUSTRIA DE MUEBLES DEL VALLE LTDA INVAL', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00107', '33', 'INDUSTRIAS ZABRA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00102', '34', 'ALUMINIO DEL PACIFICO', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00109', '35', 'AGROPECUARIA BERGINIE', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00110', '36', 'COMERCIALIZADORA INTERNACIONAL MOBILER', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00103', '37', 'COMPAÑIA ATUNERA DEL PACIFICO', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00108', '38', 'SOCIEDAD AGROMARINA TUMACO LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00110', '39', 'ESPUMAS SANTANDER LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00106', '40', 'INDUSTRIAS ALBERT LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00105', '41', 'INDUSTRIAL DE POLIETILENO LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00104', '42', 'NOVAMED', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00102', '43', 'COMERCIALIZADORA INTERNACIONAL DE COLORANTES', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00103', '44', 'SIMONIZ', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00104', '45', 'VICAR DE COLOMBIA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00104', '46', 'FIAMME', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00105', '47', 'PROMOTORA DE PUBLICIDAD RADIAL', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00102', '48', 'MARITIMA PROVIDENCIA LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00102', '49', 'COCO COMPAÑIA DE CONSTRUCCIONES LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00104', '50', 'INDUSTRIAL DE MEZCLAS ASFALTICA LTDA', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00109', '51', 'INGENIEROS CONTRATISTAS CONSTRUCTORES', 'A');
INSERT INTO `en_p1m_punto_venta` (`SucCod`, `PunVenCod`, `PunVenDes`, `EstRegCod`) VALUES ( '00001', '01', 'PUNTO DE VENTA PARA ADMINISTRADOR', 'A'); /* Added just for testing*/

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
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('1',01,'',NULL,'Calle del Horno, 9','Manuel','Ramiro','Saavedra','M','Desconocido',01,'','962610568','Desconocido','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('2',01,'',NULL,'Pérez Galdós, 5','Diego','Ticona','Chavez','M','Desconocida',02,NULL,'990326927','Desconocido','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('3',01,'',NULL,'Azorín, 2','Geraldine','Choque','Pumaroles','F','Desconocida',03,'447 0057','9628-1145','Desconocido','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('4',01,'',NULL,'Princesa, 33','Alex','Flores','Neyra','M','Desconocida',01,'433-8715',' 9926-6412','Desconocido','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('5',01,'',NULL,'Paulino Caballero, 45','Juan','Quispe','Alvarado','M','Desconocida',01,'4711272','995654474','Desconocido','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('6',01,'',NULL,'Guevara, 26','Maria','Loza','Luna','F','Desconocida',02,NULL,'958956021','Desconocido','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('7',01,'',NULL,'	Avda. Francia, 6','Antonio','Barcarcel','Ruiz','M','Desconocida',01,NULL,'976369819','Desconocido','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('8',01,'',NULL,'Músico Ayllón, 39','Jose','Ortiz','Mendoza','M','Desconocida',02,NULL,'98235147','Desconocido','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('9',01,'',NULL,'	Cerrada, 11','Mario','Llanos','Valderrama','M','Desconocida',01,'368 0373','997573481','Desconocido','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('10',01,'',NULL,'Bruch, 131','Max','Zarate','Zegarra','M','Desconocida',02,NULL,'956280695','Desconocido','A');

INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('11',02,'LCTR SAC LOGICENTER','LOGICENTER','Edif. Don Mateo I Of. 303 Cayma (PERU/AREQUIPA/AREQUIPA/CAYMA)',NULL,NULL,NULL,'N','Desconocida',01,'054-484646','997573485','maria.vignes@logicenter.com.pe','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('12',02,'ALEXMAR MUSIC S.R.L','ALEXMAR','Av. porongoche 500 Tienda 2062 (PERU/AREQUIPA/AREQUIPA/AREQUIPA)',NULL,NULL,NULL,'N','Desconocida',01,'448 2458','958956029','aventuraplaza@alexmarmusic.com.pe','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('13',02,'GRUPO UPGRADE S.A.C','GRUPO UPGRADE','Urb. Magisterial II B-4',NULL,NULL,NULL,'N','Desconocida',01,'054 - 614738','959477586','yosimar.alata@upgrade.com.pe','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('14',02,'GENACK SRL','GENACK','Urb. Mariscal Caceres Mz. I Lt. 7 (PERU/AYACUCHO/HUAMANGA/AYACUCHO)',NULL,NULL,NULL,'N','Desconocida',01,'(054)628535','959504262','genack.team@gmail.com','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('15',02,'CLIC SERVICE','CLIC','Av. Salaverry 1910 Jesús María',NULL,NULL,NULL,'N','Desconocida',01,'310655','999747894','clicservice@yahoo.com','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('16',02,'DESYTEC PERU EIRL','DESYTEC PERU','AV. HIPOLITO UNANUE N° 300 (PERU/CALLAO/CALLAO/CALLAO)',NULL,NULL,NULL,'N','Desconocida',01,'076341792','996688680','ventas@desytecperu.com,pe','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('17',02,'ARNEBUK PERU SAC','ARNEBUK PERU','Jr. Horacio Urteaga 660 - Campo de Marte - Jesús María',NULL,NULL,NULL,'N','Desconocida',01,'	4643299','975063939','franco.padilla@arnebukperu.com','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('18',02,'MULTIMPORT S.R.L.','MULTIMPORT','Calle Aguamarina 122 (PERU/CALLAO/CALLAO/BELLAVISTA)',NULL,NULL,NULL,'N','Desconocida',01,'6527189','993022806','dayala@multimport.com.pe','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('19',02,'CONSULTORIA JYH SAC','ECOBISEC JYH SAC','Espigón 4 Circuito de Playas, Miraflores',NULL,NULL,NULL,'N','Desconocida',01,'4290000','998327377','jbejaranoi@ecobisec.com','A');
INSERT INTO `en_p1m_cliente` (`CliCod`,`TipCliCod`,`CliRazSoc`,`CliNomCom`,`CliDomFis`,`CliNom`,`CliApePat`,`CliApeMat`,`CliSex`,`CliDir`,`EstCivCod`,`CliTelFij`,`CliTelCel`,`CliEmail`,`EstRegCod`) VALUES ('20',02,'La GREK S.R.L','LA GREK','Av. República de Chile 190 - Jesús María',NULL,NULL,NULL,'N','Desconocida',01,'4290000','998327377','la.grek@gmail.com','A');

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

INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('11', '02', '20552171226', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('12', '02', '20558318318', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('13', '02', '20370435163', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('14', '02', '20454043660', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('15', '02', '20534760150', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('16', '02', '20453796397', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('17', '02', '20555098244', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('18', '02', '20546456359', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('19', '02', '20266228326', 'A');
INSERT INTO `en_p1m_documento_cliente` (`CliCod`, `TipDocCliCod`, `DocCliNum`, `EstRegCod`) VALUES ('20', '02', '20266228326', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p4m_proveedor`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvRazSoc`,`PrvNomCom`,`PrvDomFis`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('123456789121','ARCON','ARCON S.R.L','ARCON','Mz. C Lt.9 Las Mercedes Cerro Colorado','Milagros Aguilar Zuñiga','Mz. C Lt.9 Las Mercedes Cerro Colorado','054454908','945995506','arcon@proveedores.com','www.arcon.com','','A');
INSERT INTO `en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvRazSoc`,`PrvNomCom`,`PrvDomFis`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('147258369121','IberCorte','IberCorte S.A.C.','IberCorte','Urb. Santa Cecilia A-2 Yanahuara','Erick Cruz Salinas','Urb. Santa Cecilia A-2 Yanahuara','054784512','945120346','ibercorte@proveedores.com','www.ibercorte.com','','A');
INSERT INTO `en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvRazSoc`,`PrvNomCom`,`PrvDomFis`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('258147369121','EHOSA','EHOSA E.I.R.L','EHOSA','Av. San Martin 205 Miraflores','Grisseldy Arenas Orejuela','Av. San Martin 205 Miraflores','054326598','945023678','ehosa@proveedores.com','www.ehosadistribuidores.com','','A');
INSERT INTO `en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvRazSoc`,`PrvNomCom`,`PrvDomFis`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('321654987121','Disconfa','Disconfa S.A.C','Disconfa','Av. La Paz 509','Sharon Bedregal Machaca','Av. La Paz 509','054368971','948152634','disconfa@proveedores.com','www.proveedoresdisconfa.com','','A');
INSERT INTO `en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvRazSoc`,`PrvNomCom`,`PrvDomFis`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('369258147121','Grupo Guerra Distribuidores','Grupo Guerra Distribuidores S.A.C','Grupo Guerra Distribuidores','Calle Paz Soldan 407 Yanahuara','Walter Toledo Turpo','Calle Paz Soldan 407 Yanahuara','054968574','940784512','guerra@distribuidores.com','www.guerradistribuidores.com','','A');
INSERT INTO `en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvRazSoc`,`PrvNomCom`,`PrvDomFis`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('456123789121','Dadyma','Dadyma S.A.C','Dadyma','Av. San Martin 603 Miraflores','Carlos Gershy Pinto','Av. San Martin 603 Miraflores','054789123','945781266','dadyma@proveedores.com','www.dadyma.com','','A');
INSERT INTO `en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvRazSoc`,`PrvNomCom`,`PrvDomFis`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('456741852121','Alcamar','Alcamar S.A.C','Alcamar','Coorp. 19 D-10 Paucarpata','Gretel Cama Pizarro','Coorp. 19 D-10 Paucarpata','054962317','945662322','alcamar@proveedores.com','www.alcamar.com','','A');
INSERT INTO `en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvRazSoc`,`PrvNomCom`,`PrvDomFis`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('654321987121','NavaRioja','NavaRioja S.A.C.','NavaRioja','Via Evitamiento Km3 Cerro Colorado','Abelardo Alvarez Martinez','Via Evitamiento Km3 Cerro Colorado','054237816','945301020','navarioja@proveedores.com','www.navarioja.com','','A');
INSERT INTO `en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvRazSoc`,`PrvNomCom`,`PrvDomFis`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('789456123121','Central Hisumer','Central Hisumer S.A.C.','Central Hisumer','Calle 28 de Julio Vallecito Cercado','Melina Alvarez Obregon','Calle 28 de Julio Vallecito Cercado','054124578','94563524178','hisumer@proveedores.com','www.centralhisumer.com','','A');
INSERT INTO `en_p4m_proveedor` (`PrvCod`,`PrvDet`,`PrvRazSoc`,`PrvNomCom`,`PrvDomFis`,`PrvCon`,`PrvDir`,`PrvTelFij`,`PrvTelCel`,`PrvEmail`,`PrvPagWeb`,`PrvObs`,`EstRegCod`) VALUES ('987654321121','Import Export','Import Export S.A.C','Import Export','Centro Comercial Cayma 3er Piso','José Paiva Franco','Centro Comercial Cayma 3er Piso','054867219','945007184','importexport@proveedores.com','www.importexport.com','','A');

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
-- Data for table `episerp`.`en_p1m_cartera_clientes`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_cartera_clientes`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (22,15,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (8,9,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (26,5,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (11,13,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (14,9,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (13,9,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (5,6,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (26,8,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (10,3,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (12,18,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (1,16,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (17,5,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (25,17,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (4,9,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (24,14,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (10,8,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (3,7,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (9,12,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (30,4,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (30,9,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (5,2,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (18,11,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (14,11,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (23,17,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (5,15,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (15,15,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (2,11,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (23,1,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (10,12,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (29,10,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (4,4,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (2,5,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (12,17,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (12,1,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (1,11,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (11,8,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (23,16,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (20,18,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (19,12,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (9,5,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (29,4,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (11,5,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (28,4,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (8,5,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (19,16,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (28,8,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (17,7,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (1,3,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (27,6,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (21,16,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (1,2,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (9,16,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (28,1,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (5,5,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (12,16,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (30,14,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (9,18,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (27,8,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (30,11,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (24,5,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (19,2,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (16,18,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (17,20,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (18,7,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (29,17,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (22,5,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (4,10,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (26,13,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (13,14,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (15,10,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (23,5,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (21,17,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (4,12,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (4,18,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (21,3,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (26,15,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (5,8,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (14,18,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (4,15,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (11,11,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (16,4,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (3,20,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (29,16,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (29,18,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (15,8,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (26,10,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (10,1,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (10,18,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (27,4,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (24,10,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (14,3,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (7,1,"Estrella","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (14,2,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (24,18,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (6,16,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (3,18,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (8,18,"Estatus","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (9,1,"Racionales","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (7,2,"Estrategicos","A");
INSERT INTO `en_p1m_cartera_clientes` (`UsuCod`,`CliCod`,`UsuCliDes`,`UsuCliEstReg`) VALUES (2,1,"Estrategicos","A");

COMMIT;

-- -----------------------------------------------------
-- Data for table `episerp`.`en_p2m_producto`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;

INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('01','01','1','7755523010128','ALM01','cerdo de 1kg','6','15.5','15.6','15.7','15.8','9','120','120','50','100','10','100','Ninguna','A','17');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('01','01','2','7755523010137','ALM01','cerdo en rollos','6','11.5','11.6','11.7','11.8','9','100','100','50','100','10','100','Ninguna','A','25');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('01','01','3','7755523010146','ALM01','chuleta de cerdo','6','15.5','15.6','15.7','15.8','9','120','120','50','100','10','100','Ninguna','A','17');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('01','02','4','7755523010216','ALM01','carne de pavo 1kg','6','15.5','15.6','15.7','15.8','9','120','120','50','100','10','100','Ninguna','A','20');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('01','02','5','7755523010225','ALM01','carne de pavo 1/2kg','6','7.5','7.6','7.7','7.8','9','120','120','50','100','10','100','Ninguna','A','22');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('01','02','6','7755523010234','ALM01','pavo para cena navideña','6','15.5','15.6','15.7','15.8','9','120','120','50','100','10','100','Ninguna','A','33');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('01','03','7','7755523010313','ALM01','alas de pollo','6','6.5','6.6','6.7','6.8','9','120','120','50','100','10','100','Ninguna','A','32');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('01','03','8','7755523010322','ALM01','piernas de pollo','6','7.5','7.6','7.7','7.8','2','120','120','50','100','10','100','Ninguna','A','31');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('01','03','9','7755523010331','ALM01','pechuga de pollo','6','7.5','7.6','7.7','7.8','2','120','120','50','100','10','100','Ninguna','A','33');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('02','01','10','7755523020116','ALM02','bonito','6','10','10.1','10.2','10.3','2','120','120','50','100','10','100','Ninguna','A','18');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('02','01','11','7755523020125','ALM02','corvina','6','8','8.1','8.2','8.3','2','120','120','50','100','10','100','Ninguna','A','13');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('02','01','12','7755523020134','ALM02','furel','6','10','10.1','10.2','10.3','2','120','120','50','100','10','100','Ninguna','A','28');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('02','02','13','7755523020213','ALM02','gula del norte','6','10','10.1','10.2','10.3','2','120','120','50','100','10','100','Ninguna','A','34');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('02','02','14','7755523020222','ALM03','krisia surini fresco rayado','4','10','10.1','10.2','10.3','2','120','120','50','100','10','100','Ninguna','A','19');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('02','02','15','7755523020231','ALM03','palitos de surini 300 gr','4','10','10.1','10.2','10.3','2','120','120','50','100','10','100','Ninguna','A','21');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('02','03','16','7755523020310','ALM03','salmon ahumado 200 gr','4','10','10.1','10.2','10.3','2','120','120','50','100','10','100','Ninguna','A','19');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('02','03','17','7755523020329','ALM03','trucha ahumada 200 gr','4','10','10.1','10.2','10.3','2','120','120','50','100','10','100','Ninguna','A','23');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('02','03','18','7755523020338','ALM04','pimenton ahumado 100 gr','4','8','8.1','8.2','8.3','2','120','120','50','100','10','100','Ninguna','A','17');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('03','01','19','7755523030113','ALM05','naranja zumo de malla','4','5','5.1','5.2','5.3','2','120','120','50','100','10','100','Ninguna','A','29');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('03','01','20','7755523030122','ALM05','mandarinas 1kg','4','5','5.1','5.2','5.3','2','120','120','50','100','10','100','Ninguna','A','24');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('03','01','21','7755523030131','ALM05','limones 1kg','4','5','5.1','5.2','5.3','2','120','120','50','100','10','100','Ninguna','A','14');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('03','02','22','7755523030210','ALM05','pera blanca 1kg','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','13');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('03','02','23','7755523030229','ALM05','manzana golden 240gr','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','15');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('03','02','24','7755523030238','ALM05','manzana roja 290gr','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','10');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('04','01','25','7755523040110','ALM06','ajo morado 1kg','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','17');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('04','01','26','7755523040129','ALM06','ajo molido frasco 55gr','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','28');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('04','01','27','7755523040138','ALM06','sazonador de ajo 43gr','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','26');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('04','02','28','7755523040217','ALM06','brocoli pieza de 500gr','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','23');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('04','02','29','7755523040226','ALM06','coliflor en bolsa de 1kg','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','29');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('04','02','30','7755523040235','ALM06','repollo 1kg','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','20');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('04','03','31','7755523040314','ALM07','tomate fitofrasco de 500gr','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','29');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('04','03','32','7755523040323','ALM07','tomate frito casero 500gr','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','34');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('04','03','33','7755523040332','ALM07','ensalada de tomate malla 1kg','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','31');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('05','01','34','7755523050117','ALM08','barritas de cereales de chocolate','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','14');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('05','01','35','7755523050126','ALM08','barritas de cereales nesquick','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','30');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('05','01','36','7755523050135','ALM08','barritas de cereales integrales','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','18');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('05','02','37','7755523050214','ALM08','cereales corn flakes','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','29');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('05','02','38','7755523050223','ALM08','cereales kellogs','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','30');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('05','02','39','7755523050232','ALM08','cereales nestle','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','25');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('05','03','40','7755523050311','ALM09','mini cereales nestle lion','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','30');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('05','03','41','7755523050320','ALM09','mini cereales kellogs','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','10');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('05','03','42','7755523050339','ALM09','mini cereales corn flakes','4','6','6.1','6.2','6.3','2','120','120','50','100','10','100','Ninguna','A','12');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('08','02','43','7755523050340','ALM09','Mermelada Gloria 500','3','5.5','5.6','5.7','5.8','1','50','50','10','100','10','20','Altamente comercializado','A','25');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('08','02','44','7755523050341','ALM09','Mermelada Fanny 500','3','6','6.1','6.2','6.3','1','50','50','10','100','10','20','Altamente comercializado','A','25');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('08','03','45','7755523050342','ALM09','Aconcagua Durazno 250','3','5.5','5.6','5.7','5.8','1','150','150','100','100','10','20','Altamente comercializado','A','26');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('08','03','46','7755523050343','ALM09','Aconcagua Piña 250','3','5.5','5.6','5.7','5.8','1','90','90','10','100','10','20','Altamente comercializado','A','29');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('09','02','47','7755523050344','ALM10','San Fernando 100','3','1.5','1.6','1.7','1.8','1','150','150','10','100','10','20','Altamente comercializado','A','33');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('09','02','48','7755523050345','ALM10','La Calera 100','3','1.5','1.6','1.7','1.8','1','100','100','10','100','10','20','Altamente comercializado','A','34');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('12','01','49','7755523050346','ALM10','Trident Menta','3','0.2','0.3','0.4','0.5','1','500','500','10','100','10','20','Altamente comercializado','A','20');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('12','01','50','7755523050347','ALM10','Chiclets Menta','3','0.2','0.3','0.4','0.5','1','500','500','10','100','10','20','Altamente comercializado','A','11');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('12','04','51','7755523050348','ALM10','Nikolo','3','0.7','0.8','0.9','1','1','100','100','10','100','10','20','Altamente comercializado','A','23');
INSERT INTO `episerp`.`en_p2m_producto` (`ClaProCod`, `SubClaProCod`, `ProCod`, `ProCodBar`, `AlmCod`, `ProDet`, `UniMedCod`, `ProPreUniVen`, `ProPreUniCom`, `ProPreUniMar`, `ProPreUniFle`, `MonCod`, `ProStk`, `ProStkRea`, `ProStkPreVen`, `VolUniAlm`, `ProStkMin`, `ProStkMax`, `ProObs`, `EstRegCod`, `ProPesNet`) VALUES ('12','04','52','7755523050349','ALM10','Mecano','3','1','1.1','1.2','1.3','1','100','100','10','100','10','20','Altamente comercializado','A','18');


COMMIT;
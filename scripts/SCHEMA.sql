-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema episerp
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `episerp` ;

-- -----------------------------------------------------
-- Schema episerp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `episerp` DEFAULT CHARACTER SET utf8 ;
USE `episerp` ;

-- -----------------------------------------------------
-- Table `episerp`.`ta_gzz_estado_civil`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`ta_gzz_estado_civil` ;

CREATE TABLE IF NOT EXISTS `episerp`.`ta_gzz_estado_civil` (
  `EstCivCod` INT(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `EstCivDet` CHAR(20) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`EstCivCod`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1m_cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1m_cliente` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1m_cliente` (
  `CliCod` CHAR(15) NOT NULL,
  `CliNom` CHAR(90) NULL DEFAULT NULL,
  `CliApePat` CHAR(90) NULL DEFAULT NULL,
  `CliApeMat` CHAR(90) NULL DEFAULT NULL,
  `CliSex` CHAR(1) NOT NULL,
  `CliDir` CHAR(90) NOT NULL DEFAULT 'Desconocida',
  `CliTelFij` CHAR(15) NULL DEFAULT NULL,
  `CliTelCel` CHAR(15) NULL DEFAULT NULL,
  `CliEmail` CHAR(50) NOT NULL DEFAULT 'Desconocido',
  `EstCivCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`CliCod`),
  INDEX `IX_Relationship28` (`EstCivCod` ASC),
  CONSTRAINT `Relationship28`
    FOREIGN KEY (`EstCivCod`)
    REFERENCES `episerp`.`ta_gzz_estado_civil` (`EstCivCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`ta_gzz_tipo_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`ta_gzz_tipo_usuario` ;

CREATE TABLE IF NOT EXISTS `episerp`.`ta_gzz_tipo_usuario` (
  `TipUsuCod` INT(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `TipUsuDet` CHAR(20) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`TipUsuCod`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1m_sucursal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1m_sucursal` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1m_sucursal` (
  `SucCod` INT(5) ZEROFILL NOT NULL AUTO_INCREMENT,
  `SucDes` CHAR(60) NULL,
  `SucDir` CHAR(100) NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`SucCod`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1m_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1m_usuario` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1m_usuario` (
  `UsuCod` CHAR(15) NOT NULL,
  `UsuNom` CHAR(90) NULL DEFAULT NULL,
  `UsuApePat` CHAR(20) NULL DEFAULT NULL,
  `UsuApeMat` CHAR(20) NULL DEFAULT NULL,
  `UsuLog` CHAR(30) NOT NULL,
  `UsuPas` CHAR(80) NOT NULL,
  `TipUsuCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `SucCod` INT(5) ZEROFILL NOT NULL,
  `UsuFecNac` DATE NULL DEFAULT NULL,
  `EstCivCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `UsuSex` CHAR(1) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`UsuCod`),
  INDEX `IX_Relationship26` (`TipUsuCod` ASC),
  INDEX `IX_Relationship27` (`EstCivCod` ASC),
  INDEX `fk_en_p1m_usuario_en_p1m_sucursal1_idx` (`SucCod` ASC),
  CONSTRAINT `Relationship26`
    FOREIGN KEY (`TipUsuCod`)
    REFERENCES `episerp`.`ta_gzz_tipo_usuario` (`TipUsuCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship27`
    FOREIGN KEY (`EstCivCod`)
    REFERENCES `episerp`.`ta_gzz_estado_civil` (`EstCivCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_en_p1m_usuario_en_p1m_sucursal1`
    FOREIGN KEY (`SucCod`)
    REFERENCES `episerp`.`en_p1m_sucursal` (`SucCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`ta_gzz_moneda`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`ta_gzz_moneda` ;

CREATE TABLE IF NOT EXISTS `episerp`.`ta_gzz_moneda` (
  `MonCod` INT(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `MonDet` CHAR(90) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`MonCod`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1m_preventa_cab`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1m_preventa_cab` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1m_preventa_cab` (
  `PreVenCabCod` CHAR(10) NOT NULL,
  `CliCod` CHAR(15) NOT NULL,
  `UsuCod` CHAR(15) NOT NULL,
  `PreVenCabFec` DATE NOT NULL,
  `PreVenCabPla` INT(3) NOT NULL,
  `PreVenCabTot` DOUBLE(10,2) NOT NULL,
  `PreVenCabDes` DOUBLE(10,2) NOT NULL,
  `PreVenCabSubTot` DOUBLE(10,2) NOT NULL,
  `PreVenCabIGV` INT(3) NOT NULL DEFAULT '19',
  `PreVenCabObs` CHAR(90) NOT NULL DEFAULT 'Ninguna',
  `MonCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`PreVenCabCod`),
  INDEX `IX_Relationship3` (`CliCod` ASC),
  INDEX `IX_Relationship4` (`UsuCod` ASC),
  INDEX `IX_Relationship5` (`MonCod` ASC),
  CONSTRAINT `Relationship3`
    FOREIGN KEY (`CliCod`)
    REFERENCES `episerp`.`en_p1m_cliente` (`CliCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship4`
    FOREIGN KEY (`UsuCod`)
    REFERENCES `episerp`.`en_p1m_usuario` (`UsuCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship5`
    FOREIGN KEY (`MonCod`)
    REFERENCES `episerp`.`ta_gzz_moneda` (`MonCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`ta_gzz_estado_factura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`ta_gzz_estado_factura` ;

CREATE TABLE IF NOT EXISTS `episerp`.`ta_gzz_estado_factura` (
  `EstFacCod` INT(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `EstFacDet` CHAR(10) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`EstFacCod`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`ta_gzz_metodo_pago_factura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`ta_gzz_metodo_pago_factura` ;

CREATE TABLE IF NOT EXISTS `episerp`.`ta_gzz_metodo_pago_factura` (
  `MetPagCod` INT(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `MetPagDet` CHAR(10) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`MetPagCod`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`ta_gzz_tipo_pago_factura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`ta_gzz_tipo_pago_factura` ;

CREATE TABLE IF NOT EXISTS `episerp`.`ta_gzz_tipo_pago_factura` (
  `TipPagCod` INT(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `TipPagDet` CHAR(10) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`TipPagCod`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1m_factura_venta_cab`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1m_factura_venta_cab` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1m_factura_venta_cab` (
  `FacVenCabCod` CHAR(10) NOT NULL,
  `CliCod` CHAR(15) NOT NULL,
  `UsuCod` CHAR(15) NOT NULL,
  `FacVenCabFec` DATE NOT NULL,
  `FacVenCabTot` DOUBLE(10,2) NOT NULL,
  `FacVenCabDes` DOUBLE(10,2) NOT NULL,
  `FacVenCabSubTot` DOUBLE(10,2) NOT NULL,
  `FacVenCabIGV` INT(3) NOT NULL DEFAULT '19',
  `FacVenCabObs` CHAR(90) NOT NULL DEFAULT 'Ninguna',
  `EstFacCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `MetPagCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `TipPagCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `MonCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`FacVenCabCod`),
  INDEX `IX_Relationship12` (`UsuCod` ASC),
  INDEX `IX_Relationship13` (`CliCod` ASC),
  INDEX `IX_Relationship14` (`EstFacCod` ASC),
  INDEX `IX_Relationship15` (`MetPagCod` ASC),
  INDEX `IX_Relationship16` (`TipPagCod` ASC),
  INDEX `IX_Relationship17` (`MonCod` ASC),
  CONSTRAINT `Relationship12`
    FOREIGN KEY (`UsuCod`)
    REFERENCES `episerp`.`en_p1m_usuario` (`UsuCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship13`
    FOREIGN KEY (`CliCod`)
    REFERENCES `episerp`.`en_p1m_cliente` (`CliCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship14`
    FOREIGN KEY (`EstFacCod`)
    REFERENCES `episerp`.`ta_gzz_estado_factura` (`EstFacCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship15`
    FOREIGN KEY (`MetPagCod`)
    REFERENCES `episerp`.`ta_gzz_metodo_pago_factura` (`MetPagCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship16`
    FOREIGN KEY (`TipPagCod`)
    REFERENCES `episerp`.`ta_gzz_tipo_pago_factura` (`TipPagCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship17`
    FOREIGN KEY (`MonCod`)
    REFERENCES `episerp`.`ta_gzz_moneda` (`MonCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1c_preventa_realizadas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1c_preventa_realizadas` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1c_preventa_realizadas` (
  `PreVenCabCod` CHAR(10) NOT NULL,
  `FacVenCabCod` CHAR(10) NOT NULL,
  `PreVenReaFec` DATE NOT NULL,
  PRIMARY KEY (`PreVenCabCod`, `FacVenCabCod`),
  INDEX `Relationship11` (`FacVenCabCod` ASC),
  CONSTRAINT `Relationship10`
    FOREIGN KEY (`PreVenCabCod`)
    REFERENCES `episerp`.`en_p1m_preventa_cab` (`PreVenCabCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship11`
    FOREIGN KEY (`FacVenCabCod`)
    REFERENCES `episerp`.`en_p1m_factura_venta_cab` (`FacVenCabCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`ta_gzz_tipo_doc_cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`ta_gzz_tipo_doc_cliente` ;

CREATE TABLE IF NOT EXISTS `episerp`.`ta_gzz_tipo_doc_cliente` (
  `TipDocCliCod` INT(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `TipDocCliDet` CHAR(90) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`TipDocCliCod`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1m_documento_cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1m_documento_cliente` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1m_documento_cliente` (
  `CliCod` CHAR(15) NOT NULL,
  `TipDocCliCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `DocCliNum` CHAR(30) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`CliCod`, `TipDocCliCod`),
  INDEX `Relationship25` (`TipDocCliCod` ASC),
  CONSTRAINT `Relationship24`
    FOREIGN KEY (`CliCod`)
    REFERENCES `episerp`.`en_p1m_cliente` (`CliCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship25`
    FOREIGN KEY (`TipDocCliCod`)
    REFERENCES `episerp`.`ta_gzz_tipo_doc_cliente` (`TipDocCliCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`ta_gzz_tipo_doc_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`ta_gzz_tipo_doc_usuario` ;

CREATE TABLE IF NOT EXISTS `episerp`.`ta_gzz_tipo_doc_usuario` (
  `TipDocUsuCod` INT(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `TipDocUsuDet` CHAR(90) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`TipDocUsuCod`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1m_documento_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1m_documento_usuario` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1m_documento_usuario` (
  `UsuCod` CHAR(15) NOT NULL,
  `TipDocUsuCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `DocUsuNum` CHAR(30) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`UsuCod`, `TipDocUsuCod`),
  INDEX `Relationship30` (`TipDocUsuCod` ASC),
  CONSTRAINT `Relationship29`
    FOREIGN KEY (`UsuCod`)
    REFERENCES `episerp`.`en_p1m_usuario` (`UsuCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship30`
    FOREIGN KEY (`TipDocUsuCod`)
    REFERENCES `episerp`.`ta_gzz_tipo_doc_usuario` (`TipDocUsuCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1m_pagos_cuotas_cab`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1m_pagos_cuotas_cab` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1m_pagos_cuotas_cab` (
  `FacVenCabCod` CHAR(10) NOT NULL,
  `PagCuoNumDoc` CHAR(50) NOT NULL,
  `PagCuoNum` INT(2) NOT NULL,
  `PagCuoNumPag` INT(2) NOT NULL DEFAULT '0',
  `PagCuoDeuTot` DOUBLE(10,2) NOT NULL,
  `PagCuoTotPag` DOUBLE(10,2) NOT NULL,
  `PagCuoFecIni` DATE NOT NULL,
  `PagCuoFecFin` DATE NOT NULL,
  `PagCuoFecPag` DATE NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`FacVenCabCod`),
  CONSTRAINT `Relationship20`
    FOREIGN KEY (`FacVenCabCod`)
    REFERENCES `episerp`.`en_p1m_factura_venta_cab` (`FacVenCabCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p2m_almacen`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p2m_almacen` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p2m_almacen` (
  `AlmCod` CHAR(15) NOT NULL,
  `AlmDet` CHAR(90) NULL DEFAULT NULL,
  `SucCod` INT(5) ZEROFILL NOT NULL,
  `AlmVolTot` DOUBLE(10,2) NULL DEFAULT NULL,
  `AlmObs` CHAR(90) NOT NULL DEFAULT 'Ninguna',
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`AlmCod`),
  INDEX `fk_en_p2m_almacen_en_p1m_sucursal1_idx` (`SucCod` ASC),
  CONSTRAINT `fk_en_p2m_almacen_en_p1m_sucursal1`
    FOREIGN KEY (`SucCod`)
    REFERENCES `episerp`.`en_p1m_sucursal` (`SucCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`ta_gzz_unidad_med`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`ta_gzz_unidad_med` ;

CREATE TABLE IF NOT EXISTS `episerp`.`ta_gzz_unidad_med` (
  `UniMedCod` INT(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `UniMedDet` CHAR(90) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`UniMedCod`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p2m_clase_producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p2m_clase_producto` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p2m_clase_producto` (
  `ClaProCod` CHAR(2) NOT NULL,
  `ClaProDet` CHAR(90) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`ClaProCod`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p2m_subclase_producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p2m_subclase_producto` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p2m_subclase_producto` (
  `ClaProCod` CHAR(2) NOT NULL,
  `SubClaProCod` CHAR(2) NOT NULL,
  `SubClaProDet` CHAR(90) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`SubClaProCod`, `ClaProCod`),
  INDEX `Relationship7` (`ClaProCod` ASC),
  CONSTRAINT `Relationship7`
    FOREIGN KEY (`ClaProCod`)
    REFERENCES `episerp`.`en_p2m_clase_producto` (`ClaProCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p2m_producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p2m_producto` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p2m_producto` (
  `ClaProCod` CHAR(2) NOT NULL,
  `SubClaProCod` CHAR(2) NOT NULL,
  `ProCod` CHAR(15) NOT NULL,
  `ProDet` CHAR(90) NOT NULL,
  `UniMedCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `ProPreUni` DOUBLE(10,2) NOT NULL,
  `MonCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `ProStk` DOUBLE(10,2) NOT NULL,
  `ProStkPreVen` DOUBLE(10,2) NOT NULL DEFAULT '0.00',
  `AlmCod` CHAR(15) NOT NULL,
  `VolUniAlm` DOUBLE(10,2) NULL DEFAULT NULL,
  `ProStkMin` DOUBLE(10,2) NULL DEFAULT NULL,
  `ProStkMax` DOUBLE(10,2) NULL DEFAULT NULL,
  `ProObs` CHAR(90) NOT NULL DEFAULT 'Ninguna',
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`ProCod`, `SubClaProCod`, `ClaProCod`),
  INDEX `IX_Relationship32` (`AlmCod` ASC),
  INDEX `IX_Relationship33` (`UniMedCod` ASC),
  INDEX `Relationship8` (`SubClaProCod` ASC, `ClaProCod` ASC),
  INDEX `Relationship31` (`MonCod` ASC),
  CONSTRAINT `Relationship31`
    FOREIGN KEY (`MonCod`)
    REFERENCES `episerp`.`ta_gzz_moneda` (`MonCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship32`
    FOREIGN KEY (`AlmCod`)
    REFERENCES `episerp`.`en_p2m_almacen` (`AlmCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship33`
    FOREIGN KEY (`UniMedCod`)
    REFERENCES `episerp`.`ta_gzz_unidad_med` (`UniMedCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship8`
    FOREIGN KEY (`SubClaProCod` , `ClaProCod`)
    REFERENCES `episerp`.`en_p2m_subclase_producto` (`SubClaProCod` , `ClaProCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1t_factura_venta_det`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1t_factura_venta_det` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1t_factura_venta_det` (
  `FacVenCabCod` CHAR(10) NOT NULL,
  `FacVenDetCod` INT(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `ClaProCod` CHAR(2) NOT NULL,
  `SubClaProCod` CHAR(2) NOT NULL,
  `ProCod` CHAR(15) NOT NULL,
  `FacVenDetCan` DOUBLE(10,2) NOT NULL,
  `FacVenDetValUni` DOUBLE(10,2) NOT NULL,
  PRIMARY KEY (`FacVenDetCod`, `FacVenCabCod`),
  INDEX `IX_Relationship19` (`ProCod` ASC, `SubClaProCod` ASC, `ClaProCod` ASC),
  INDEX `Relationship18` (`FacVenCabCod` ASC),
  CONSTRAINT `Relationship18`
    FOREIGN KEY (`FacVenCabCod`)
    REFERENCES `episerp`.`en_p1m_factura_venta_cab` (`FacVenCabCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship19`
    FOREIGN KEY (`ProCod` , `SubClaProCod` , `ClaProCod`)
    REFERENCES `episerp`.`en_p2m_producto` (`ProCod` , `SubClaProCod` , `ClaProCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1t_pagos_cuotas_det`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1t_pagos_cuotas_det` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1t_pagos_cuotas_det` (
  `FacVenCabCod` CHAR(10) NOT NULL,
  `PagCuoDetCod` INT(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `PagCuoDetTotPag` DOUBLE(10,2) NOT NULL,
  PRIMARY KEY (`PagCuoDetCod`, `FacVenCabCod`),
  INDEX `Relationship21` (`FacVenCabCod` ASC),
  CONSTRAINT `Relationship21`
    FOREIGN KEY (`FacVenCabCod`)
    REFERENCES `episerp`.`en_p1m_pagos_cuotas_cab` (`FacVenCabCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1t_preventa_det`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1t_preventa_det` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1t_preventa_det` (
  `PreVenCabCod` CHAR(10) NOT NULL,
  `PreVenDetCod` INT(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `ClaProCod` CHAR(2) NOT NULL,
  `SubClaProCod` CHAR(2) NOT NULL,
  `ProCod` CHAR(15) NOT NULL,
  `PreVenDetCan` DOUBLE(10,2) NOT NULL,
  `PreVenDetValUni` DOUBLE(10,2) NOT NULL,
  PRIMARY KEY (`PreVenDetCod`, `PreVenCabCod`),
  INDEX `IX_Relationship9` (`ProCod` ASC, `SubClaProCod` ASC, `ClaProCod` ASC),
  INDEX `Relationship6` (`PreVenCabCod` ASC),
  CONSTRAINT `Relationship6`
    FOREIGN KEY (`PreVenCabCod`)
    REFERENCES `episerp`.`en_p1m_preventa_cab` (`PreVenCabCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship9`
    FOREIGN KEY (`ProCod` , `SubClaProCod` , `ClaProCod`)
    REFERENCES `episerp`.`en_p2m_producto` (`ProCod` , `SubClaProCod` , `ClaProCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p3m_libro_diario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p3m_libro_diario` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p3m_libro_diario` (
  `LibDiaCod` INT(6) ZEROFILL NOT NULL AUTO_INCREMENT,
  `LibDiaPer` CHAR(20) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`LibDiaCod`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`ta_gzz_tipo_comprobante`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`ta_gzz_tipo_comprobante` ;

CREATE TABLE IF NOT EXISTS `episerp`.`ta_gzz_tipo_comprobante` (
  `TipComCod` INT(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  `TipComDet` CHAR(100) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`TipComCod`))
ENGINE = InnoDB
AUTO_INCREMENT = 100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p3m_asiento_cab`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p3m_asiento_cab` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p3m_asiento_cab` (
  `LibDiaCod` INT(6) UNSIGNED ZEROFILL NOT NULL,
  `AsiCabCod` INT(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `AsiCabTip` CHAR(1) NOT NULL,
  `AsiCabGlo` CHAR(60) NULL DEFAULT NULL,
  `AsiCabFec` DATE NOT NULL,
  `TipComCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `AsiCabNumCom` CHAR(15) NULL DEFAULT NULL,
  `MonCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`AsiCabCod`, `LibDiaCod`),
  INDEX `IX_Relationship41` (`MonCod` ASC),
  INDEX `IX_Relationship59` (`TipComCod` ASC),
  INDEX `Relationship40` (`LibDiaCod` ASC),
  CONSTRAINT `Relationship40`
    FOREIGN KEY (`LibDiaCod`)
    REFERENCES `episerp`.`en_p3m_libro_diario` (`LibDiaCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship41`
    FOREIGN KEY (`MonCod`)
    REFERENCES `episerp`.`ta_gzz_moneda` (`MonCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship59`
    FOREIGN KEY (`TipComCod`)
    REFERENCES `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p3m_cuenta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p3m_cuenta` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p3m_cuenta` (
  `CueCod` INT(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `CuePad` INT(10) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `CueNiv` INT(2) NOT NULL,
  `CueNum` CHAR(10) NOT NULL,
  `CueDes` CHAR(150) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`CueCod`),
  INDEX `IX_Relationship37` (`CuePad` ASC),
  CONSTRAINT `Relationship37`
    FOREIGN KEY (`CuePad`)
    REFERENCES `episerp`.`en_p3m_cuenta` (`CueCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 540
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`ta_gzz_banco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`ta_gzz_banco` ;

CREATE TABLE IF NOT EXISTS `episerp`.`ta_gzz_banco` (
  `BanCod` INT(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `BanDet` CHAR(90) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`BanCod`))
ENGINE = InnoDB
AUTO_INCREMENT = 100
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p3m_cuenta_banco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p3m_cuenta_banco` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p3m_cuenta_banco` (
  `CueBanCod` INT(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `BanCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `CueBanNum` CHAR(20) NOT NULL,
  `CueCod` INT(10) UNSIGNED ZEROFILL NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`CueBanCod`),
  INDEX `IX_Relationship38` (`BanCod` ASC),
  INDEX `IX_Relationship39` (`CueCod` ASC),
  CONSTRAINT `Relationship38`
    FOREIGN KEY (`BanCod`)
    REFERENCES `episerp`.`ta_gzz_banco` (`BanCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship39`
    FOREIGN KEY (`CueCod`)
    REFERENCES `episerp`.`en_p3m_cuenta` (`CueCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p3m_plantilla_cab`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p3m_plantilla_cab` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p3m_plantilla_cab` (
  `PlaCod` INT(10) ZEROFILL NOT NULL AUTO_INCREMENT,
  `PlaDet` CHAR(90) NULL DEFAULT NULL,
  `PlaGlo` CHAR(60) NULL DEFAULT NULL,
  `PlaHab` TINYINT(1) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`PlaCod`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p3t_asiento_det`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p3t_asiento_det` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p3t_asiento_det` (
  `LibDiaCod` INT(6) UNSIGNED ZEROFILL NOT NULL,
  `AsiCabCod` INT(10) UNSIGNED ZEROFILL NOT NULL,
  `AsiDetCod` INT(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `CueCod` INT(10) UNSIGNED ZEROFILL NOT NULL,
  `AsiDetDebHab` TINYINT(1) NOT NULL,
  `AsiDetMon` DOUBLE(10,2) NOT NULL,
  PRIMARY KEY (`AsiDetCod`, `AsiCabCod`, `LibDiaCod`),
  INDEX `IX_Relationship43` (`CueCod` ASC),
  INDEX `Relationship42` (`AsiCabCod` ASC, `LibDiaCod` ASC),
  CONSTRAINT `Relationship42`
    FOREIGN KEY (`AsiCabCod` , `LibDiaCod`)
    REFERENCES `episerp`.`en_p3m_asiento_cab` (`AsiCabCod` , `LibDiaCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship43`
    FOREIGN KEY (`CueCod`)
    REFERENCES `episerp`.`en_p3m_cuenta` (`CueCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p3t_plantilla_det`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p3t_plantilla_det` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p3t_plantilla_det` (
  `PlaCod` INT(10) UNSIGNED ZEROFILL NOT NULL,
  `PlaDetCod` INT(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `PlaDetDebHab` TINYINT(1) NOT NULL,
  `PlaDetPor` DOUBLE(5,2) NOT NULL,
  `CueCod` INT(10) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`PlaDetCod`, `PlaCod`),
  INDEX `IX_Relationship36` (`CueCod` ASC),
  INDEX `Relationship34` (`PlaCod` ASC),
  CONSTRAINT `Relationship34`
    FOREIGN KEY (`PlaCod`)
    REFERENCES `episerp`.`en_p3m_plantilla_cab` (`PlaCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship36`
    FOREIGN KEY (`CueCod`)
    REFERENCES `episerp`.`en_p3m_cuenta` (`CueCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p4m_proveedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p4m_proveedor` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p4m_proveedor` (
  `ProCod` CHAR(15) NOT NULL,
  `ProDet` CHAR(90) NOT NULL,
  `ProCon` CHAR(90) NULL DEFAULT NULL,
  `ProDir` CHAR(90) NULL DEFAULT 'Desconocida',
  `ProTelFij` CHAR(15) NULL DEFAULT NULL,
  `ProTelCel` CHAR(15) NULL DEFAULT NULL,
  `ProEmail` CHAR(50) NULL DEFAULT 'Desconocido',
  `ProPagWeb` CHAR(50) NULL DEFAULT 'Desconocida',
  `ProObs` CHAR(90) NULL DEFAULT 'Ninguna',
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`ProCod`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`ta_gzz_tipo_doc_proveedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`ta_gzz_tipo_doc_proveedor` ;

CREATE TABLE IF NOT EXISTS `episerp`.`ta_gzz_tipo_doc_proveedor` (
  `TipDocProCod` INT(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `TipDocProDet` CHAR(90) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`TipDocProCod`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p4m_documento_proveedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p4m_documento_proveedor` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p4m_documento_proveedor` (
  `ProCod` CHAR(15) NOT NULL,
  `TipDocProCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `DocProNum` CHAR(30) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`ProCod`, `TipDocProCod`),
  INDEX `Relationship58` (`TipDocProCod` ASC),
  CONSTRAINT `Relationship57`
    FOREIGN KEY (`ProCod`)
    REFERENCES `episerp`.`en_p4m_proveedor` (`ProCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship58`
    FOREIGN KEY (`TipDocProCod`)
    REFERENCES `episerp`.`ta_gzz_tipo_doc_proveedor` (`TipDocProCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p4m_factura_compra_cab`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p4m_factura_compra_cab` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p4m_factura_compra_cab` (
  `FacComCabCod` CHAR(10) NOT NULL,
  `ProCod` CHAR(15) NOT NULL,
  `UsuCod` CHAR(15) NOT NULL,
  `FacComCabFec` DATE NOT NULL,
  `FacComCabTot` DOUBLE(10,2) NOT NULL,
  `FacComCabDes` DOUBLE(10,2) NOT NULL,
  `FacComCabSubTot` DOUBLE(10,2) NOT NULL,
  `FacComCabIGV` INT(3) NOT NULL DEFAULT '19',
  `FacComCabObs` CHAR(90) NOT NULL DEFAULT 'Ninguna',
  `EstFacCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `MetPagCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `TipPagCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `MonCod` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`FacComCabCod`),
  INDEX `IX_Relationship49` (`ProCod` ASC),
  INDEX `IX_Relationship50` (`UsuCod` ASC),
  INDEX `IX_Relationship51` (`EstFacCod` ASC),
  INDEX `IX_Relationship52` (`MetPagCod` ASC),
  INDEX `IX_Relationship53` (`TipPagCod` ASC),
  INDEX `IX_Relationship54` (`MonCod` ASC),
  CONSTRAINT `Relationship49`
    FOREIGN KEY (`ProCod`)
    REFERENCES `episerp`.`en_p4m_proveedor` (`ProCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship50`
    FOREIGN KEY (`UsuCod`)
    REFERENCES `episerp`.`en_p1m_usuario` (`UsuCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship51`
    FOREIGN KEY (`EstFacCod`)
    REFERENCES `episerp`.`ta_gzz_estado_factura` (`EstFacCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship52`
    FOREIGN KEY (`MetPagCod`)
    REFERENCES `episerp`.`ta_gzz_metodo_pago_factura` (`MetPagCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship53`
    FOREIGN KEY (`TipPagCod`)
    REFERENCES `episerp`.`ta_gzz_tipo_pago_factura` (`TipPagCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship54`
    FOREIGN KEY (`MonCod`)
    REFERENCES `episerp`.`ta_gzz_moneda` (`MonCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p4m_guia_compra_cab`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p4m_guia_compra_cab` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p4m_guia_compra_cab` (
  `GuiComCabCod` CHAR(10) NOT NULL,
  `FacComCabCod` CHAR(10) NOT NULL,
  `ProCod` CHAR(15) NOT NULL,
  `GuiComCabPunPar` CHAR(30) NULL DEFAULT NULL,
  `GuiComCabPunLle` CHAR(30) NULL DEFAULT NULL,
  `GuiComCabFec` DATE NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`GuiComCabCod`),
  INDEX `IX_Relationship44` (`FacComCabCod` ASC),
  INDEX `IX_Relationship45` (`ProCod` ASC),
  CONSTRAINT `Relationship44`
    FOREIGN KEY (`FacComCabCod`)
    REFERENCES `episerp`.`en_p4m_factura_compra_cab` (`FacComCabCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship45`
    FOREIGN KEY (`ProCod`)
    REFERENCES `episerp`.`en_p4m_proveedor` (`ProCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p4t_factura_compra_det`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p4t_factura_compra_det` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p4t_factura_compra_det` (
  `FacComCabCod` CHAR(10) NOT NULL,
  `FacComDetCod` INT(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `ClaProCod` CHAR(2) NOT NULL,
  `SubClaProCod` CHAR(2) NOT NULL,
  `ProCod` CHAR(15) NOT NULL,
  `FacComDetCan` DOUBLE(10,2) NOT NULL,
  `FacComDetValUni` DOUBLE(10,2) NOT NULL,
  PRIMARY KEY (`FacComDetCod`, `FacComCabCod`),
  INDEX `IX_Relationship56` (`ProCod` ASC, `SubClaProCod` ASC, `ClaProCod` ASC),
  INDEX `Relationship55` (`FacComCabCod` ASC),
  CONSTRAINT `Relationship55`
    FOREIGN KEY (`FacComCabCod`)
    REFERENCES `episerp`.`en_p4m_factura_compra_cab` (`FacComCabCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship56`
    FOREIGN KEY (`ProCod` , `SubClaProCod` , `ClaProCod`)
    REFERENCES `episerp`.`en_p2m_producto` (`ProCod` , `SubClaProCod` , `ClaProCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p4t_guia_compra_det`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p4t_guia_compra_det` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p4t_guia_compra_det` (
  `GuiComCabCod` CHAR(10) NOT NULL,
  `GuiComDetCod` INT(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `ClaProCod` CHAR(2) NOT NULL,
  `SubClaProCod` CHAR(2) NOT NULL,
  `ProCod` CHAR(15) NOT NULL,
  `GuiComDetCan` DOUBLE(10,2) NOT NULL,
  PRIMARY KEY (`GuiComDetCod`, `GuiComCabCod`),
  INDEX `IX_Relationship47` (`ProCod` ASC, `SubClaProCod` ASC, `ClaProCod` ASC),
  INDEX `Relationship46` (`GuiComCabCod` ASC),
  CONSTRAINT `Relationship46`
    FOREIGN KEY (`GuiComCabCod`)
    REFERENCES `episerp`.`en_p4m_guia_compra_cab` (`GuiComCabCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Relationship47`
    FOREIGN KEY (`ProCod` , `SubClaProCod` , `ClaProCod`)
    REFERENCES `episerp`.`en_p2m_producto` (`ProCod` , `SubClaProCod` , `ClaProCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1m_empresa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1m_empresa` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1m_empresa` (
  `EmpCod` INT(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  `EmpNom` CHAR(80) NOT NULL,
  `EmpDes` VARCHAR(200) NULL,
  `EmpDir` CHAR(100) NOT NULL,
  `EmpTel` CHAR(20) NULL,
  `EmpCor` CHAR(50) NULL,
  `EmpIGV` DOUBLE(5,2) NOT NULL,
  `EmpRUC` CHAR(11) NOT NULL,
  `EmpImg` BLOB NULL,
  PRIMARY KEY (`EmpCod`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1m_punto_venta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1m_punto_venta` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1m_punto_venta` (
  `PunVenCod` INT(6) ZEROFILL NOT NULL AUTO_INCREMENT,
  `SucCod` INT(5) ZEROFILL NOT NULL,
  `PunVenDes` CHAR(60) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`PunVenCod`, `SucCod`),
  INDEX `fk_en_p1m_punto_venta_en_p1m_sucursal1_idx` (`SucCod` ASC),
  CONSTRAINT `fk_en_p1m_punto_venta_en_p1m_sucursal1`
    FOREIGN KEY (`SucCod`)
    REFERENCES `episerp`.`en_p1m_sucursal` (`SucCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `episerp`.`en_p1m_movimiento_punto_ven`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episerp`.`en_p1m_movimiento_punto_ven` ;

CREATE TABLE IF NOT EXISTS `episerp`.`en_p1m_movimiento_punto_ven` (
  `MovPunVenCod` INT(10) ZEROFILL NOT NULL AUTO_INCREMENT,
  `SucCod` INT(5) ZEROFILL NOT NULL,
  `PunVenCod` INT(6) ZEROFILL NOT NULL,
  `TipComCod` INT(2) ZEROFILL NOT NULL,
  `MovPunVenComCod` CHAR(10) NOT NULL,
  `UsuCod` CHAR(15) NOT NULL,
  `MovPunVenFec` DATE NOT NULL,
  `MovPunVenMon` DOUBLE(10,2) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`MovPunVenCod`, `SucCod`, `PunVenCod`),
  INDEX `fk_en_p1m_movimiento_punto_ven_en_p1m_punto_venta1_idx` (`SucCod` ASC, `PunVenCod` ASC),
  INDEX `fk_en_p1m_movimiento_punto_ven_en_p1m_usuario1_idx` (`UsuCod` ASC),
  INDEX `fk_en_p1m_movimiento_punto_ven_ta_gzz_tipo_comprobante1_idx` (`TipComCod` ASC),
  CONSTRAINT `fk_en_p1m_movimiento_punto_ven_en_p1m_punto_venta1`
    FOREIGN KEY (`SucCod` , `PunVenCod`)
    REFERENCES `episerp`.`en_p1m_punto_venta` (`SucCod` , `PunVenCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_en_p1m_movimiento_punto_ven_en_p1m_usuario1`
    FOREIGN KEY (`UsuCod`)
    REFERENCES `episerp`.`en_p1m_usuario` (`UsuCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_en_p1m_movimiento_punto_ven_ta_gzz_tipo_comprobante1`
    FOREIGN KEY (`TipComCod`)
    REFERENCES `episerp`.`ta_gzz_tipo_comprobante` (`TipComCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

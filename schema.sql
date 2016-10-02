-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema minierp
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `minierp` ;

-- -----------------------------------------------------
-- Schema minierp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `minierp` DEFAULT CHARACTER SET utf8 ;
USE `minierp` ;

-- -----------------------------------------------------
-- Table `minierp`.`ta_gzz_tipo_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `minierp`.`ta_gzz_tipo_usuario` ;

CREATE TABLE IF NOT EXISTS `minierp`.`ta_gzz_tipo_usuario` (
  `TipUsuCod` INT(2) NOT NULL,
  `TipUsuDet` CHAR(20) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`TipUsuCod`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `minierp`.`ta_gzz_estado_civil`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `minierp`.`ta_gzz_estado_civil` ;

CREATE TABLE IF NOT EXISTS `minierp`.`ta_gzz_estado_civil` (
  `EstCivCod` INT(2) NOT NULL,
  `EstCivDet` CHAR(20) NOT NULL,
  `EstRegCod` CHAR(1) NOT NULL,
  PRIMARY KEY (`EstCivCod`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `minierp`.`en_p1m_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `minierp`.`en_p1m_usuario` ;

CREATE TABLE IF NOT EXISTS `minierp`.`en_p1m_usuario` (
  `UsuCod` CHAR(10) NOT NULL,
  `UsuNom` CHAR(90) NULL,
  `UsuApePat` CHAR(20) NULL,
  `UsuApeMat` CHAR(20) NULL,
  `UsuPas` CHAR(64) NOT NULL,
  `TipUsuCod` INT(2) NOT NULL,
  `UsuFecNac` DATE NULL,
  `UsuSex` CHAR(1) NOT NULL,
  `EstCivCod` INT(2) NOT NULL,
  `EstRegCod` CHAR(1) NULL,
  PRIMARY KEY (`UsuCod`),
  INDEX `fk_en_p1m_usuario_ta_gzz_tipo_usuario_idx` (`TipUsuCod` ASC),
  INDEX `fk_en_p1m_usuario_ta_gzz_estado_civil1_idx` (`EstCivCod` ASC),
  CONSTRAINT `fk_en_p1m_usuario_ta_gzz_tipo_usuario`
    FOREIGN KEY (`TipUsuCod`)
    REFERENCES `minierp`.`ta_gzz_tipo_usuario` (`TipUsuCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_en_p1m_usuario_ta_gzz_estado_civil1`
    FOREIGN KEY (`EstCivCod`)
    REFERENCES `minierp`.`ta_gzz_estado_civil` (`EstCivCod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `minierp`.`ta_gzz_tipo_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `minierp`;
INSERT INTO `minierp`.`ta_gzz_tipo_usuario` (`TipUsuCod`, `TipUsuDet`, `EstRegCod`) VALUES (1, 'Administrador', 'A');
INSERT INTO `minierp`.`ta_gzz_tipo_usuario` (`TipUsuCod`, `TipUsuDet`, `EstRegCod`) VALUES (2, 'Vendedor', 'A');
INSERT INTO `minierp`.`ta_gzz_tipo_usuario` (`TipUsuCod`, `TipUsuDet`, `EstRegCod`) VALUES (3, 'Logistica', 'A');
INSERT INTO `minierp`.`ta_gzz_tipo_usuario` (`TipUsuCod`, `TipUsuDet`, `EstRegCod`) VALUES (4, 'Contador', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `minierp`.`ta_gzz_estado_civil`
-- -----------------------------------------------------
START TRANSACTION;
USE `minierp`;
INSERT INTO `minierp`.`ta_gzz_estado_civil` (`EstCivCod`, `EstCivDet`, `EstRegCod`) VALUES (1, 'Soltero', 'A');
INSERT INTO `minierp`.`ta_gzz_estado_civil` (`EstCivCod`, `EstCivDet`, `EstRegCod`) VALUES (2, 'Casado', 'A');
INSERT INTO `minierp`.`ta_gzz_estado_civil` (`EstCivCod`, `EstCivDet`, `EstRegCod`) VALUES (3, 'Divorciado', 'A');
INSERT INTO `minierp`.`ta_gzz_estado_civil` (`EstCivCod`, `EstCivDet`, `EstRegCod`) VALUES (5, 'Viudo', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `minierp`.`en_p1m_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `minierp`;
INSERT INTO `minierp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuPas`, `TipUsuCod`, `UsuFecNac`, `UsuSex`, `EstCivCod`, `EstRegCod`) VALUES ('admin', 'Administrador', 'Administrador', 'Administrador', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 1, '1990-1-1', 'N', 1, 'A');

COMMIT;


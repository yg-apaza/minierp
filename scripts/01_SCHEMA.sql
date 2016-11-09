SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema episerp
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `episerp` ;
CREATE SCHEMA IF NOT EXISTS `episerp` DEFAULT CHARACTER SET utf8 ;
USE `episerp` ;

-- Create tables section -------------------------------------------------

-- Table episerp.en_p1m_preventa_cab

CREATE TABLE en_p1m_preventa_cab
(
  PreVenCabCod Char(10) NOT NULL,
  CliCod Char(15) NOT NULL,
  CatRutCod Int(3) ZEROFILL,
  UsuCod Char(15) NOT NULL,
  PreVenCabFecEmi Date NOT NULL,
  PreVenCabFecVen Date,
  PreVenCabPla Int(3) NOT NULL,
  PreVenCabTot Double(10,2) NOT NULL,
  TipDesCod Int(2) ZEROFILL,
  PreVenPorDes Int(3),
  PreVenCabSubTot Double(10,2) NOT NULL,
  PreVenCabIGV Int(3) NOT NULL DEFAULT 19,
  PreVenCabObs Char(90) NOT NULL DEFAULT 'Ninguna',
  MonCod Int(2) ZEROFILL NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p1m_preventa_cab ADD PRIMARY KEY (PreVenCabCod)
;

CREATE INDEX IX_Relationship3 ON en_p1m_preventa_cab (CliCod)
;

CREATE INDEX IX_Relationship4 ON en_p1m_preventa_cab (UsuCod)
;

CREATE INDEX IX_Relationship5 ON en_p1m_preventa_cab (MonCod)
;

CREATE INDEX IX_Relationship104 ON en_p1m_preventa_cab (TipDesCod)
;

CREATE INDEX IX_Relationship110 ON en_p1m_preventa_cab (CatRutCod)
;

-- Table episerp.en_p1t_preventa_det

CREATE TABLE en_p1t_preventa_det
(
  PreVenCabCod Char(10) NOT NULL,
  PreVenDetCod Int(3) ZEROFILL NOT NULL,
  ClaProCod Char(2) NOT NULL,
  SubClaProCod Char(2) NOT NULL,
  ProCod Char(15) NOT NULL,
  PreVenDetCan Double(10,2) NOT NULL,
  PreVenDetValUni Double(10,2) NOT NULL
)
;

ALTER TABLE en_p1t_preventa_det ADD PRIMARY KEY (PreVenDetCod,PreVenCabCod)
;

CREATE INDEX IX_Relationship9 ON en_p1t_preventa_det (ProCod,SubClaProCod,ClaProCod)
;

-- Table episerp.en_p1c_preventa_realizadas

CREATE TABLE en_p1c_preventa_realizadas
(
  PreVenCabCod Char(10) NOT NULL,
  FacVenCabCod Char(10) NOT NULL,
  PreVenReaFec Date NOT NULL
)
;

ALTER TABLE en_p1c_preventa_realizadas ADD PRIMARY KEY (PreVenCabCod,FacVenCabCod)
;

-- Table episerp.en_p1m_factura_venta_cab

CREATE TABLE en_p1m_factura_venta_cab
(
  FacVenCabCod Char(10) NOT NULL,
  GuiRemRemNum Char(15),
  GuiRemTraNum Char(15),
  CliCod Char(15) NOT NULL,
  CatRutCod Int(3) ZEROFILL,
  UsuCod Char(15) NOT NULL,
  FacVenCabModVen Char(1),
  FacVenCabFecEmi Date NOT NULL,
  FacVenCabFecVen Date,
  FacVenCabTot Double(10,2) NOT NULL,
  TipDesCod Int(2) ZEROFILL,
  FacVenPorDes Int(3),
  FacVenCabSubTot Double(10,2) NOT NULL,
  FacVenCabIGV Int(3) NOT NULL DEFAULT 19,
  FacVenCabObs Char(90) NOT NULL DEFAULT 'Ninguna',
  EstFacCod Int(2) ZEROFILL NOT NULL,
  MetPagCod Int(2) ZEROFILL NOT NULL,
  TipPagCod Int(2) ZEROFILL NOT NULL,
  MonCod Int(2) ZEROFILL NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p1m_factura_venta_cab ADD PRIMARY KEY (FacVenCabCod)
;

CREATE INDEX IX_Relationship12 ON en_p1m_factura_venta_cab (UsuCod)
;

CREATE INDEX IX_Relationship13 ON en_p1m_factura_venta_cab (CliCod)
;

CREATE INDEX IX_Relationship14 ON en_p1m_factura_venta_cab (EstFacCod)
;

CREATE INDEX IX_Relationship15 ON en_p1m_factura_venta_cab (MetPagCod)
;

CREATE INDEX IX_Relationship16 ON en_p1m_factura_venta_cab (TipPagCod)
;

CREATE INDEX IX_Relationship17 ON en_p1m_factura_venta_cab (MonCod)
;

CREATE INDEX IX_Relationship91 ON en_p1m_factura_venta_cab (TipDesCod)
;

CREATE INDEX IX_Relationship99 ON en_p1m_factura_venta_cab (GuiRemTraNum)
;

CREATE INDEX IX_Relationship100 ON en_p1m_factura_venta_cab (GuiRemRemNum)
;

CREATE INDEX IX_Relationship109 ON en_p1m_factura_venta_cab (CatRutCod)
;

-- Table episerp.en_p1t_factura_venta_det

CREATE TABLE en_p1t_factura_venta_det
(
  FacVenCabCod Char(10) NOT NULL,
  FacVenDetCod Int(3) ZEROFILL NOT NULL,
  ClaProCod Char(2) NOT NULL,
  SubClaProCod Char(2) NOT NULL,
  ProCod Char(15) NOT NULL,
  FacVenDetCan Double(10,2) NOT NULL,
  FacVenDetValUni Double(10,2) NOT NULL
)
;

ALTER TABLE en_p1t_factura_venta_det ADD PRIMARY KEY (FacVenDetCod,FacVenCabCod)
;

CREATE INDEX IX_Relationship19 ON en_p1t_factura_venta_det (ProCod,SubClaProCod,ClaProCod)
;

-- Table episerp.en_p1m_pagos_cuotas_cab

CREATE TABLE en_p1m_pagos_cuotas_cab
(
  FacVenCabCod Char(10) NOT NULL,
  PagCuoNum Int(2) NOT NULL,
  PagCuoNumPag Int(2) NOT NULL DEFAULT 0,
  PagCuoDeuTot Double(10,2) NOT NULL,
  PagCuoTotPag Double(10,2) NOT NULL,
  PagCuoMonXCuo Double(10,2) NOT NULL,
  PagCuoFecIni Date NOT NULL,
  PagCuoFecFin Date NOT NULL,
  PagCuoFecPag Date NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p1m_pagos_cuotas_cab ADD PRIMARY KEY (FacVenCabCod)
;

-- Table episerp.en_p1t_pagos_cuotas_det

CREATE TABLE en_p1t_pagos_cuotas_det
(
  FacVenCabCod Char(10) NOT NULL,
  PagCuoDetCod Int(3) ZEROFILL NOT NULL AUTO_INCREMENT,
  PagCuoDetTotPag Double(10,2) NOT NULL,
 PRIMARY KEY (PagCuoDetCod,FacVenCabCod)
)
;

-- Table episerp.en_p1m_cliente

CREATE TABLE en_p1m_cliente
(
  CliCod Char(15) NOT NULL,
  TipCliCod Int(2) ZEROFILL,
  CanCliCod Int(2) ZEROFILL,
  CliRazSoc Char(90) NOT NULL,
  CliNomCom Char(90),
  CliDomFis Char(90),
  CliNom Char(90),
  CliApePat Char(90),
  CliApeMat Char(90),
  CliSex Char(1) NOT NULL,
  CliDir Char(90) NOT NULL DEFAULT 'Desconocida',
  EstCivCod Int(2) ZEROFILL NOT NULL,
  CliTelFij Char(15),
  CliTelCel Char(15),
  CliEmail Char(50) NOT NULL DEFAULT 'Desconocido',
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p1m_cliente ADD PRIMARY KEY (CliCod)
;

CREATE INDEX IX_Relationship28 ON en_p1m_cliente (EstCivCod)
;

CREATE INDEX IX_Relationship95 ON en_p1m_cliente (TipCliCod)
;

CREATE INDEX IX_Relationship119 ON en_p1m_cliente (CanCliCod)
;

-- Table episerp.en_p1m_documento_cliente

CREATE TABLE en_p1m_documento_cliente
(
  CliCod Char(15) NOT NULL,
  TipDocCliCod Int(2) ZEROFILL NOT NULL,
  DocCliNum Char(30) NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p1m_documento_cliente ADD PRIMARY KEY (CliCod,TipDocCliCod)
;

-- Table episerp.en_p1m_usuario

CREATE TABLE en_p1m_usuario
(
  UsuCod Char(15) NOT NULL,
  UsuNom Char(90),
  UsuApePat Char(20),
  UsuApeMat Char(20),
  UsuLog Char(30) NOT NULL,
  UsuPas Char(80) NOT NULL,
  TipUsuCod Int(2) ZEROFILL NOT NULL,
  SucCod Int(5) ZEROFILL,
  UsuFecNac Date,
  EstCivCod Int(2) ZEROFILL NOT NULL,
  UsuSex Char(1) NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p1m_usuario ADD PRIMARY KEY (UsuCod)
;

CREATE INDEX IX_Relationship26 ON en_p1m_usuario (TipUsuCod)
;

CREATE INDEX IX_Relationship27 ON en_p1m_usuario (EstCivCod)
;

CREATE INDEX IX_Relationship60 ON en_p1m_usuario (SucCod)
;

-- Table episerp.en_p1m_documento_usuario

CREATE TABLE en_p1m_documento_usuario
(
  UsuCod Char(15) NOT NULL,
  TipDocUsuCod Int(2) ZEROFILL NOT NULL,
  DocUsuNum Char(30) NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p1m_documento_usuario ADD PRIMARY KEY (UsuCod,TipDocUsuCod)
;

-- Table episerp.en_p2m_clase_producto

CREATE TABLE en_p2m_clase_producto
(
  ClaProCod Char(2) NOT NULL,
  ClaProDet Char(90) NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p2m_clase_producto ADD PRIMARY KEY (ClaProCod)
;

-- Table episerp.en_p2m_subclase_producto

CREATE TABLE en_p2m_subclase_producto
(
  ClaProCod Char(2) NOT NULL,
  SubClaProCod Char(2) NOT NULL,
  SubClaProDet Char(90) NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p2m_subclase_producto ADD PRIMARY KEY (SubClaProCod,ClaProCod)
;

-- Table episerp.en_p2m_producto

CREATE TABLE en_p2m_producto
(
  ClaProCod Char(2) NOT NULL,
  SubClaProCod Char(2) NOT NULL,
  ProCod Char(15) NOT NULL,
  ProCodBar Char(30),
  AlmCod Char(15),
  MonCod Int(2) ZEROFILL,
  ProDet Char(90) NOT NULL,
  UniMedCod Int(2) ZEROFILL NOT NULL,
  ProPreUniVen Double(10,2) NOT NULL,
  ProPreUniCom Double(10,2) NOT NULL,
  ProPreUniMar Double(10,2) NOT NULL,
  ProPreUniFle Double(10,2) NOT NULL,
  ProPesNet Double(10,2),
  ProStk Double(10,2) NOT NULL,
  ProStkRea Double(10,2),
  ProStkPreVen Double(10,2) NOT NULL DEFAULT 0,
  VolUniAlm Double(10,2),
  ProStkMin Double(10,2),
  ProStkMax Double(10,2),
  ProObs Char(90) NOT NULL DEFAULT 'Ninguna',
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p2m_producto ADD PRIMARY KEY (ProCod,SubClaProCod,ClaProCod)
;

CREATE INDEX IX_Relationship33 ON en_p2m_producto (UniMedCod)
;

CREATE INDEX IX_Relationship114 ON en_p2m_producto (AlmCod)
;

CREATE INDEX IX_Relationship120 ON en_p2m_producto (MonCod)
;

-- Table episerp.en_p2m_almacen

CREATE TABLE en_p2m_almacen
(
  AlmCod Char(15) NOT NULL,
  AlmDet Char(90),
  SucCod Int(5) ZEROFILL NOT NULL,
  AlmVolTot Double(10,2),
  AlmObs Char(90) NOT NULL DEFAULT 'Ninguna',
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p2m_almacen ADD PRIMARY KEY (AlmCod)
;

CREATE INDEX IX_Relationship61 ON en_p2m_almacen (SucCod)
;

-- Table episerp.en_p3m_plantilla_cab

CREATE TABLE en_p3m_plantilla_cab
(
  PlaCod Int(10) ZEROFILL NOT NULL AUTO_INCREMENT,
  PlaDet Char(90),
  PlaGlo Char(60),
  PlaHab Bool NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (PlaCod)
)
;

-- Table episerp.en_p3t_plantilla_det

CREATE TABLE en_p3t_plantilla_det
(
  PlaCod Int(10) ZEROFILL NOT NULL,
  PlaDetCod Int(10) ZEROFILL NOT NULL AUTO_INCREMENT,
  PlaDetDebHab Bool NOT NULL,
  PlaDetPor Double(5,2) NOT NULL,
  CueCod Int(10) ZEROFILL NOT NULL,
 PRIMARY KEY (PlaDetCod,PlaCod)
)
;

CREATE INDEX IX_Relationship36 ON en_p3t_plantilla_det (CueCod)
;

-- Table episerp.en_p3m_cuenta

CREATE TABLE en_p3m_cuenta
(
  CueCod Int(10) ZEROFILL NOT NULL AUTO_INCREMENT,
  CuePad Int(10) ZEROFILL,
  CueAmaDeb Int(10) ZEROFILL,
  CueAmaHab Int(10) ZEROFILL,
  CueNiv Int(2) NOT NULL,
  CueNum Char(10) NOT NULL,
  CueDes Char(150) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (CueCod)
)
;

CREATE INDEX IX_Relationship37 ON en_p3m_cuenta (CuePad)
;

CREATE INDEX IX_Relationship111 ON en_p3m_cuenta (CueAmaDeb)
;

CREATE INDEX IX_Relationship113 ON en_p3m_cuenta (CueAmaHab)
;

-- Table episerp.en_p3m_cuenta_banco

CREATE TABLE en_p3m_cuenta_banco
(
  CueBanCod Int(10) ZEROFILL NOT NULL AUTO_INCREMENT,
  BanCod Int(2) ZEROFILL NOT NULL,
  CueBanNum Char(20) NOT NULL,
  CueCod Int(10) ZEROFILL NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (CueBanCod)
)
;

CREATE INDEX IX_Relationship38 ON en_p3m_cuenta_banco (BanCod)
;

CREATE INDEX IX_Relationship39 ON en_p3m_cuenta_banco (CueCod)
;

-- Table episerp.en_p3m_libro_diario

CREATE TABLE en_p3m_libro_diario
(
  LibDiaCod Int(6) ZEROFILL NOT NULL AUTO_INCREMENT,
  LibDiaPer Char(20) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (LibDiaCod)
)
;

-- Table episerp.en_p3m_asiento_cab

CREATE TABLE en_p3m_asiento_cab
(
  LibDiaCod Int(6) ZEROFILL NOT NULL,
  AsiCabCod Int(10) ZEROFILL NOT NULL AUTO_INCREMENT,
  AsiCabTip Char(1) NOT NULL,
  AsiCabGlo Char(150),
  AsiCabFec Date NOT NULL,
  TipComCod Int(2) ZEROFILL NOT NULL,
  AsiCabNumCom Char(15),
  MonCod Int(2) ZEROFILL NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (AsiCabCod,LibDiaCod)
)
;

CREATE INDEX IX_Relationship41 ON en_p3m_asiento_cab (MonCod)
;

CREATE INDEX IX_Relationship59 ON en_p3m_asiento_cab (TipComCod)
;

-- Table episerp.en_p3t_asiento_det

CREATE TABLE en_p3t_asiento_det
(
  LibDiaCod Int(6) ZEROFILL NOT NULL,
  AsiCabCod Int(10) ZEROFILL NOT NULL,
  AsiDetCod Int(10) ZEROFILL NOT NULL AUTO_INCREMENT,
  CueCod Int(10) ZEROFILL NOT NULL,
  AsiDetDebHab Bool NOT NULL,
  AsiDetMon Double(10,2) NOT NULL,
 PRIMARY KEY (AsiDetCod,AsiCabCod,LibDiaCod)
)
;

CREATE INDEX IX_Relationship43 ON en_p3t_asiento_det (CueCod)
;

-- Table episerp.en_p4m_factura_compra_cab

CREATE TABLE en_p4m_factura_compra_cab
(
  FacComCabCod Char(10) NOT NULL,
  GuiRemRemNum Char(15),
  GuiRemTraNum Char(15),
  PrvCod Char(15) NOT NULL,
  UsuCod Char(15) NOT NULL,
  FacComCabFecEmi Date NOT NULL,
  FacComCabFecVen Date,
  FacComCabTot Double(10,2) NOT NULL,
  TipDesCod Int(2) ZEROFILL,
  FacComPorDes Int(3),
  FacComCabSubTot Double(10,2) NOT NULL,
  FacComCabIGV Int(3) NOT NULL DEFAULT 19,
  FacComCabObs Char(90) NOT NULL DEFAULT 'Ninguna',
  EstFacCod Int(2) ZEROFILL NOT NULL,
  MetPagCod Int(2) ZEROFILL NOT NULL,
  TipPagCod Int(2) ZEROFILL NOT NULL,
  MonCod Int(2) ZEROFILL NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p4m_factura_compra_cab ADD PRIMARY KEY (FacComCabCod)
;

CREATE INDEX IX_Relationship49 ON en_p4m_factura_compra_cab (PrvCod)
;

CREATE INDEX IX_Relationship50 ON en_p4m_factura_compra_cab (UsuCod)
;

CREATE INDEX IX_Relationship51 ON en_p4m_factura_compra_cab (EstFacCod)
;

CREATE INDEX IX_Relationship52 ON en_p4m_factura_compra_cab (MetPagCod)
;

CREATE INDEX IX_Relationship53 ON en_p4m_factura_compra_cab (TipPagCod)
;

CREATE INDEX IX_Relationship54 ON en_p4m_factura_compra_cab (MonCod)
;

CREATE INDEX IX_Relationship92 ON en_p4m_factura_compra_cab (TipDesCod)
;

CREATE INDEX IX_Relationship101 ON en_p4m_factura_compra_cab (GuiRemTraNum)
;

CREATE INDEX IX_Relationship102 ON en_p4m_factura_compra_cab (GuiRemRemNum)
;

-- Table episerp.en_p4t_factura_compra_det

CREATE TABLE en_p4t_factura_compra_det
(
  FacComCabCod Char(10) NOT NULL,
  FacComDetCod Int(3) ZEROFILL NOT NULL,
  ClaProCod Char(2) NOT NULL,
  SubClaProCod Char(2) NOT NULL,
  ProCod Char(15) NOT NULL,
  FacComDetCan Double(10,2) NOT NULL,
  FacComDetValUni Double(10,2) NOT NULL
)
;

ALTER TABLE en_p4t_factura_compra_det ADD PRIMARY KEY (FacComDetCod,FacComCabCod)
;

CREATE INDEX IX_Relationship56 ON en_p4t_factura_compra_det (ProCod,SubClaProCod,ClaProCod)
;

-- Table episerp.en_p4m_proveedor

CREATE TABLE en_p4m_proveedor
(
  PrvCod Char(15) NOT NULL,
  PrvDet Char(90) NOT NULL,
  PrvRazSoc Char(90),
  PrvNomCom Char(90),
  PrvDomFis Char(90),
  PrvCon Char(90),
  PrvDir Char(90) DEFAULT 'Desconocida',
  PrvTelFij Char(15),
  PrvTelCel Char(15),
  PrvEmail Char(50) DEFAULT 'Desconocido',
  PrvPagWeb Char(50) DEFAULT 'Desconocida',
  PrvObs Char(90) DEFAULT 'Ninguna',
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p4m_proveedor ADD PRIMARY KEY (PrvCod)
;

-- Table episerp.en_p4m_documento_proveedor

CREATE TABLE en_p4m_documento_proveedor
(
  PrvCod Char(15) NOT NULL,
  TipDocProCod Int(2) ZEROFILL NOT NULL,
  DocProNum Char(30) NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p4m_documento_proveedor ADD PRIMARY KEY (PrvCod,TipDocProCod)
;

-- Table episerp.ta_gzz_unidad_med

CREATE TABLE ta_gzz_unidad_med
(
  UniMedCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  UniMedSim Char(5),
  UniMedDet Char(90) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (UniMedCod)
)
;

-- Table episerp.ta_gzz_moneda

CREATE TABLE ta_gzz_moneda
(
  MonCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  MonSim Char(5),
  MonDet Char(90) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (MonCod)
)
;

-- Table episerp.ta_gzz_estado_factura

CREATE TABLE ta_gzz_estado_factura
(
  EstFacCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  EstFacDet Char(10) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (EstFacCod)
)
;

-- Table episerp.ta_gzz_metodo_pago_factura

CREATE TABLE ta_gzz_metodo_pago_factura
(
  MetPagCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  MetPagDet Char(10) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (MetPagCod)
)
;

-- Table episerp.ta_gzz_tipo_pago_factura

CREATE TABLE ta_gzz_tipo_pago_factura
(
  TipPagCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  TipPagDet Char(10) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (TipPagCod)
)
;

-- Table episerp.ta_gzz_tipo_usuario

CREATE TABLE ta_gzz_tipo_usuario
(
  TipUsuCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  TipUsuDet Char(20) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (TipUsuCod)
)
;

-- Table episerp.ta_gzz_estado_civil

CREATE TABLE ta_gzz_estado_civil
(
  EstCivCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  EstCivDet Char(20) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (EstCivCod)
)
;

-- Table episerp.ta_gzz_banco

CREATE TABLE ta_gzz_banco
(
  BanCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  BanDet Char(90) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (BanCod)
)
;

-- Table episerp.ta_gzz_tipo_doc_usuario

CREATE TABLE ta_gzz_tipo_doc_usuario
(
  TipDocUsuCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  TipDocUsuDet Char(90) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (TipDocUsuCod)
)
;

-- Table episerp.ta_gzz_tipo_doc_proveedor

CREATE TABLE ta_gzz_tipo_doc_proveedor
(
  TipDocProCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  TipDocProDet Char(90) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (TipDocProCod)
)
;

-- Table episerp.ta_gzz_tipo_doc_cliente

CREATE TABLE ta_gzz_tipo_doc_cliente
(
  TipDocCliCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  TipDocCliDet Char(90) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (TipDocCliCod)
)
;

-- Table episerp.ta_gzz_tipo_comprobante

CREATE TABLE ta_gzz_tipo_comprobante
(
  TipComCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  TipComDet Char(100) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (TipComCod)
)
;

-- Table episerp.en_p1m_sucursal

CREATE TABLE en_p1m_sucursal
(
  SucCod Int(5) ZEROFILL NOT NULL AUTO_INCREMENT,
  SucDes Char(60),
  SucDir Char(100),
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (SucCod)
)
;

-- Table episerp.en_p1m_punto_venta

CREATE TABLE en_p1m_punto_venta
(
  SucCod Int(5) ZEROFILL NOT NULL,
  PunVenCod Int(6) ZEROFILL NOT NULL AUTO_INCREMENT,
  PunVenDes Char(60),
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (PunVenCod,SucCod)
)
;

-- Table episerp.en_p1m_empresa

CREATE TABLE en_p1m_empresa
(
  EmpCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  EmpRazSoc Char(90) NOT NULL,
  EmpNomCom Char(90) NOT NULL,
  EmpDomFis Char(90),
  EmpDes Char(200),
  EmpDir Char(100) NOT NULL,
  EmpTel Char(20),
  EmpEmail Char(50),
  EmpIGV Double(5,2) NOT NULL,
  EmpTipCamCom Double(10,2),
  EmpTipCamVen Double(10,2),
  EmpRUC Char(11) NOT NULL,
  EmpLot Int(3),
  EmpImgURL Char(100),
 PRIMARY KEY (EmpCod)
)
;

-- Table episerp.ta_gzz_motivo_traslado

CREATE TABLE ta_gzz_motivo_traslado
(
  MotTraCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  MotTraDet Char(90) NOT NULL,
  EstRegCod Char(1),
 PRIMARY KEY (MotTraCod)
)
;

-- Table episerp.ta_gzz_tipo_destinatario

CREATE TABLE ta_gzz_tipo_destinatario
(
  TipDstCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  TipDstDet Char(90) NOT NULL,
  EstRegCod Char(1),
 PRIMARY KEY (TipDstCod)
)
;

-- Table episerp.ta_gzz_tipo_uni_transporte

CREATE TABLE ta_gzz_tipo_uni_transporte
(
  TipUniTraCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  TipUniTraDet Char(90) NOT NULL,
  EstRegCod Char(1),
 PRIMARY KEY (TipUniTraCod)
)
;

-- Table episerp.ta_gzz_estado_uni_transporte

CREATE TABLE ta_gzz_estado_uni_transporte
(
  EstUniTraCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  EstUniTraDet Char(90) NOT NULL,
  EstRegCod Char(1),
 PRIMARY KEY (EstUniTraCod)
)
;

-- Table episerp.ta_gzz_tipo_doc_transportista

CREATE TABLE ta_gzz_tipo_doc_transportista
(
  TipDocTraCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  TipDocTraDet Char(90) NOT NULL,
  EstRegCod Char(1),
 PRIMARY KEY (TipDocTraCod)
)
;

-- Table episerp.ta_gzz_tipo_devolucion

CREATE TABLE ta_gzz_tipo_devolucion
(
  TipDevCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  TipDevDet Char(90) NOT NULL,
  EstRegCod Char(1),
 PRIMARY KEY (TipDevCod)
)
;

-- Table episerp.ta_gzz_tipo_cliente

CREATE TABLE ta_gzz_tipo_cliente
(
  TipCliCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  TipCliDet Char(90) NOT NULL,
  EstRegCod Char(1),
 PRIMARY KEY (TipCliCod)
)
;

-- Table episerp.ta_gzz_tipo_descuento

CREATE TABLE ta_gzz_tipo_descuento
(
  TipDesCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  TipDesDet Char(90) NOT NULL,
  EstRegCod Char(1),
 PRIMARY KEY (TipDesCod)
)
;

-- Table episerp.en_p2m_guia_rem_remitente

CREATE TABLE en_p2m_guia_rem_remitente
(
  GuiRemRemNum Char(15) NOT NULL,
  GuiRemRemDen Char(50) NOT NULL DEFAULT 'GUÍA DE REMISIÓN-REMINTENTE',
  MotTraCod Int(2) ZEROFILL NOT NULL,
  EmpCod Int(2) ZEROFILL NOT NULL,
  TipDstCod Int(2) ZEROFILL NOT NULL,
  GuiRemRemDes Char(15) NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p2m_guia_rem_remitente ADD PRIMARY KEY (GuiRemRemNum)
;

CREATE INDEX IX_Relationship71 ON en_p2m_guia_rem_remitente (MotTraCod)
;

CREATE INDEX IX_Relationship72 ON en_p2m_guia_rem_remitente (TipDstCod)
;

CREATE INDEX IX_Relationship73 ON en_p2m_guia_rem_remitente (EmpCod)
;

-- Table episerp.en_p2m_guia_rem_transportista

CREATE TABLE en_p2m_guia_rem_transportista
(
  GuiRemTraNum Char(15) NOT NULL,
  GuiRemTraDen Char(50) NOT NULL DEFAULT 'GUÍA DE REMISIÓN -TRANSPORTISTA',
  TraCod Char(15) NOT NULL,
  UniTraCod Char(15) NOT NULL,
  EmpCod Int(2) ZEROFILL NOT NULL,
  GuiRemTraNumReg Char(20),
  TipDstCod Int(2) ZEROFILL NOT NULL,
  GuiRemTraDes Char(15) NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p2m_guia_rem_transportista ADD PRIMARY KEY (GuiRemTraNum)
;

CREATE INDEX IX_Relationship74 ON en_p2m_guia_rem_transportista (TraCod)
;

CREATE INDEX IX_Relationship75 ON en_p2m_guia_rem_transportista (UniTraCod)
;

CREATE INDEX IX_Relationship76 ON en_p2m_guia_rem_transportista (EmpCod)
;

CREATE INDEX IX_Relationship77 ON en_p2m_guia_rem_transportista (TipDstCod)
;

-- Table episerp.en_p2m_unidad_transporte

CREATE TABLE en_p2m_unidad_transporte
(
  UniTraCod Char(15) NOT NULL,
  TipUniTraCod Int(2) ZEROFILL,
  UniTraMod Char(50),
  UniTraMar Char(50),
  UniTraPes Double(10,2),
  UniTraNumPla Char(20) NOT NULL,
  EstUniTraCod Int(2) ZEROFILL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p2m_unidad_transporte ADD PRIMARY KEY (UniTraCod)
;

CREATE INDEX IX_Relationship69 ON en_p2m_unidad_transporte (TipUniTraCod)
;

CREATE INDEX IX_Relationship70 ON en_p2m_unidad_transporte (EstUniTraCod)
;

-- Table episerp.en_p2m_transportista

CREATE TABLE en_p2m_transportista
(
  TraCod Char(15) NOT NULL,
  TraNom Char(90) NOT NULL,
  TraApePat Char(90) NOT NULL,
  TraApeMat Char(90) NOT NULL,
  TraRazSoc Char(90),
  TraNomCom Char(90),
  TraDomFis Char(90),
  TraTel Char(20),
  TraEmail Char(50),
  TraDir Char(90),
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p2m_transportista ADD PRIMARY KEY (TraCod)
;

-- Table episerp.en_p2m_documento_transportista

CREATE TABLE en_p2m_documento_transportista
(
  TraCod Char(15) NOT NULL,
  TipDocTraCod Int(2) ZEROFILL NOT NULL,
  DocTraNum Char(30) NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p2m_documento_transportista ADD PRIMARY KEY (TipDocTraCod,TraCod)
;

-- Table episerp.en_p2m_inventario_cab

CREATE TABLE en_p2m_inventario_cab
(
  InvCabCod Char(15) NOT NULL,
  UsuCod Char(15),
  InvCabFec Date NOT NULL,
  InvCabEst Bool NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p2m_inventario_cab ADD PRIMARY KEY (InvCabCod)
;

CREATE INDEX IX_Relationship78 ON en_p2m_inventario_cab (UsuCod)
;

-- Table episerp.en_p2t_inventario_det

CREATE TABLE en_p2t_inventario_det
(
  InvCabCod Char(15) NOT NULL,
  InvDetCod Int(3) ZEROFILL NOT NULL AUTO_INCREMENT,
  ClaProCod Char(2),
  SubClaProCod Char(2),
  ProCod Char(15),
  InvDetDifStk Double(10,2) NOT NULL DEFAULT 0,
 PRIMARY KEY (InvDetCod,InvCabCod)
)
;

CREATE INDEX IX_Relationship80 ON en_p2t_inventario_det (ProCod,SubClaProCod,ClaProCod)
;

-- Table episerp.en_p1c_devolucion_ventas

CREATE TABLE en_p1c_devolucion_ventas
(
  FacVenCabCod Char(10) NOT NULL,
  DevVenNewFac Char(10),
  DevVenDet Char(100),
  DevVenFec Date NOT NULL,
  TipDevCod Int(2) ZEROFILL,
  DevVenMon Double(10,2) NOT NULL
)
;

ALTER TABLE en_p1c_devolucion_ventas ADD PRIMARY KEY (FacVenCabCod)
;

CREATE INDEX IX_Relationship81 ON en_p1c_devolucion_ventas (TipDevCod)
;

CREATE INDEX IX_Relationship115 ON en_p1c_devolucion_ventas (DevVenNewFac)
;

-- Table episerp.en_p2c_devolucion_compras

CREATE TABLE en_p2c_devolucion_compras
(
  FacComCabCod Char(10) NOT NULL,
  DevComNewFac Char(10),
  DevComDet Char(100),
  DevComFec Date NOT NULL,
  TipDevCod Int(2) ZEROFILL,
  DevComMon Double(10,2) NOT NULL
)
;

ALTER TABLE en_p2c_devolucion_compras ADD PRIMARY KEY (FacComCabCod)
;

CREATE INDEX IX_Relationship82 ON en_p2c_devolucion_compras (TipDevCod)
;

CREATE INDEX IX_Relationship116 ON en_p2c_devolucion_compras (DevComNewFac)
;

-- Table episerp.en_p1m_catalogo_ruta

CREATE TABLE en_p1m_catalogo_ruta
(
  CatRutCod Int(3) ZEROFILL NOT NULL,
  CatRutDet Char(90) NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p1m_catalogo_ruta ADD PRIMARY KEY (CatRutCod)
;

-- Table episerp.en_p1m_clientes_rutas

CREATE TABLE en_p1m_clientes_rutas
(
  CatRutCod Int(3) ZEROFILL NOT NULL,
  CliCod Char(15) NOT NULL,
  CliRutDes Char(100) NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p1m_clientes_rutas ADD PRIMARY KEY (CatRutCod,CliCod)
;

-- Table episerp.en_p1m_cartera_clientes

CREATE TABLE en_p1m_cartera_clientes
(
  UsuCod Char(15) NOT NULL,
  CliCod Char(15) NOT NULL,
  UsuCliDes Char(90) NOT NULL,
  UsuCliEstReg Char(1) NOT NULL
)
;

ALTER TABLE en_p1m_cartera_clientes ADD PRIMARY KEY (CliCod,UsuCod)
;

-- Table episerp.ta_gzz_canal_cliente

CREATE TABLE ta_gzz_canal_cliente
(
  CanCliCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  CanCliDet Char(90) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (CanCliCod)
)
;

-- Table episerp.ta_gzz_tipo_falla_producto

CREATE TABLE ta_gzz_tipo_falla_producto
(
  TipFallProCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  TipFallProDet Char(90) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (TipFallProCod)
)
;

-- Create relationships section ------------------------------------------------- 

ALTER TABLE en_p1m_preventa_cab ADD CONSTRAINT Relationship3 FOREIGN KEY (CliCod) REFERENCES en_p1m_cliente (CliCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_preventa_cab ADD CONSTRAINT Relationship4 FOREIGN KEY (UsuCod) REFERENCES en_p1m_usuario (UsuCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_preventa_cab ADD CONSTRAINT Relationship5 FOREIGN KEY (MonCod) REFERENCES ta_gzz_moneda (MonCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1t_preventa_det ADD CONSTRAINT Relationship6 FOREIGN KEY (PreVenCabCod) REFERENCES en_p1m_preventa_cab (PreVenCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_subclase_producto ADD CONSTRAINT Relationship7 FOREIGN KEY (ClaProCod) REFERENCES en_p2m_clase_producto (ClaProCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_producto ADD CONSTRAINT Relationship8 FOREIGN KEY (SubClaProCod, ClaProCod) REFERENCES en_p2m_subclase_producto (SubClaProCod, ClaProCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1t_preventa_det ADD CONSTRAINT Relationship9 FOREIGN KEY (ProCod, SubClaProCod, ClaProCod) REFERENCES en_p2m_producto (ProCod, SubClaProCod, ClaProCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1c_preventa_realizadas ADD CONSTRAINT Relationship10 FOREIGN KEY (PreVenCabCod) REFERENCES en_p1m_preventa_cab (PreVenCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1c_preventa_realizadas ADD CONSTRAINT Relationship11 FOREIGN KEY (FacVenCabCod) REFERENCES en_p1m_factura_venta_cab (FacVenCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_factura_venta_cab ADD CONSTRAINT Relationship12 FOREIGN KEY (UsuCod) REFERENCES en_p1m_usuario (UsuCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_factura_venta_cab ADD CONSTRAINT Relationship13 FOREIGN KEY (CliCod) REFERENCES en_p1m_cliente (CliCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_factura_venta_cab ADD CONSTRAINT Relationship14 FOREIGN KEY (EstFacCod) REFERENCES ta_gzz_estado_factura (EstFacCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_factura_venta_cab ADD CONSTRAINT Relationship15 FOREIGN KEY (MetPagCod) REFERENCES ta_gzz_metodo_pago_factura (MetPagCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_factura_venta_cab ADD CONSTRAINT Relationship16 FOREIGN KEY (TipPagCod) REFERENCES ta_gzz_tipo_pago_factura (TipPagCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_factura_venta_cab ADD CONSTRAINT Relationship17 FOREIGN KEY (MonCod) REFERENCES ta_gzz_moneda (MonCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1t_factura_venta_det ADD CONSTRAINT Relationship18 FOREIGN KEY (FacVenCabCod) REFERENCES en_p1m_factura_venta_cab (FacVenCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1t_factura_venta_det ADD CONSTRAINT Relationship19 FOREIGN KEY (ProCod, SubClaProCod, ClaProCod) REFERENCES en_p2m_producto (ProCod, SubClaProCod, ClaProCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_pagos_cuotas_cab ADD CONSTRAINT Relationship20 FOREIGN KEY (FacVenCabCod) REFERENCES en_p1m_factura_venta_cab (FacVenCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1t_pagos_cuotas_det ADD CONSTRAINT Relationship21 FOREIGN KEY (FacVenCabCod) REFERENCES en_p1m_pagos_cuotas_cab (FacVenCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_documento_cliente ADD CONSTRAINT Relationship24 FOREIGN KEY (CliCod) REFERENCES en_p1m_cliente (CliCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_documento_cliente ADD CONSTRAINT Relationship25 FOREIGN KEY (TipDocCliCod) REFERENCES ta_gzz_tipo_doc_cliente (TipDocCliCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_usuario ADD CONSTRAINT Relationship26 FOREIGN KEY (TipUsuCod) REFERENCES ta_gzz_tipo_usuario (TipUsuCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_usuario ADD CONSTRAINT Relationship27 FOREIGN KEY (EstCivCod) REFERENCES ta_gzz_estado_civil (EstCivCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_cliente ADD CONSTRAINT Relationship28 FOREIGN KEY (EstCivCod) REFERENCES ta_gzz_estado_civil (EstCivCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_documento_usuario ADD CONSTRAINT Relationship29 FOREIGN KEY (UsuCod) REFERENCES en_p1m_usuario (UsuCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_documento_usuario ADD CONSTRAINT Relationship30 FOREIGN KEY (TipDocUsuCod) REFERENCES ta_gzz_tipo_doc_usuario (TipDocUsuCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_producto ADD CONSTRAINT Relationship33 FOREIGN KEY (UniMedCod) REFERENCES ta_gzz_unidad_med (UniMedCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p3t_plantilla_det ADD CONSTRAINT Relationship34 FOREIGN KEY (PlaCod) REFERENCES en_p3m_plantilla_cab (PlaCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p3t_plantilla_det ADD CONSTRAINT Relationship36 FOREIGN KEY (CueCod) REFERENCES en_p3m_cuenta (CueCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p3m_cuenta ADD CONSTRAINT Relationship37 FOREIGN KEY (CuePad) REFERENCES en_p3m_cuenta (CueCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p3m_cuenta_banco ADD CONSTRAINT Relationship38 FOREIGN KEY (BanCod) REFERENCES ta_gzz_banco (BanCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p3m_cuenta_banco ADD CONSTRAINT Relationship39 FOREIGN KEY (CueCod) REFERENCES en_p3m_cuenta (CueCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p3m_asiento_cab ADD CONSTRAINT Relationship40 FOREIGN KEY (LibDiaCod) REFERENCES en_p3m_libro_diario (LibDiaCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p3m_asiento_cab ADD CONSTRAINT Relationship41 FOREIGN KEY (MonCod) REFERENCES ta_gzz_moneda (MonCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p3t_asiento_det ADD CONSTRAINT Relationship42 FOREIGN KEY (AsiCabCod, LibDiaCod) REFERENCES en_p3m_asiento_cab (AsiCabCod, LibDiaCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p3t_asiento_det ADD CONSTRAINT Relationship43 FOREIGN KEY (CueCod) REFERENCES en_p3m_cuenta (CueCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_factura_compra_cab ADD CONSTRAINT Relationship49 FOREIGN KEY (PrvCod) REFERENCES en_p4m_proveedor (PrvCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_factura_compra_cab ADD CONSTRAINT Relationship50 FOREIGN KEY (UsuCod) REFERENCES en_p1m_usuario (UsuCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_factura_compra_cab ADD CONSTRAINT Relationship51 FOREIGN KEY (EstFacCod) REFERENCES ta_gzz_estado_factura (EstFacCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_factura_compra_cab ADD CONSTRAINT Relationship52 FOREIGN KEY (MetPagCod) REFERENCES ta_gzz_metodo_pago_factura (MetPagCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_factura_compra_cab ADD CONSTRAINT Relationship53 FOREIGN KEY (TipPagCod) REFERENCES ta_gzz_tipo_pago_factura (TipPagCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_factura_compra_cab ADD CONSTRAINT Relationship54 FOREIGN KEY (MonCod) REFERENCES ta_gzz_moneda (MonCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4t_factura_compra_det ADD CONSTRAINT Relationship55 FOREIGN KEY (FacComCabCod) REFERENCES en_p4m_factura_compra_cab (FacComCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4t_factura_compra_det ADD CONSTRAINT Relationship56 FOREIGN KEY (ProCod, SubClaProCod, ClaProCod) REFERENCES en_p2m_producto (ProCod, SubClaProCod, ClaProCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_documento_proveedor ADD CONSTRAINT Relationship57 FOREIGN KEY (PrvCod) REFERENCES en_p4m_proveedor (PrvCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_documento_proveedor ADD CONSTRAINT Relationship58 FOREIGN KEY (TipDocProCod) REFERENCES ta_gzz_tipo_doc_proveedor (TipDocProCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p3m_asiento_cab ADD CONSTRAINT Relationship59 FOREIGN KEY (TipComCod) REFERENCES ta_gzz_tipo_comprobante (TipComCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_usuario ADD CONSTRAINT Relationship60 FOREIGN KEY (SucCod) REFERENCES en_p1m_sucursal (SucCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_almacen ADD CONSTRAINT Relationship61 FOREIGN KEY (SucCod) REFERENCES en_p1m_sucursal (SucCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_punto_venta ADD CONSTRAINT Relationship62 FOREIGN KEY (SucCod) REFERENCES en_p1m_sucursal (SucCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_documento_transportista ADD CONSTRAINT Relationship67 FOREIGN KEY (TipDocTraCod) REFERENCES ta_gzz_tipo_doc_transportista (TipDocTraCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_documento_transportista ADD CONSTRAINT Relationship68 FOREIGN KEY (TraCod) REFERENCES en_p2m_transportista (TraCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_unidad_transporte ADD CONSTRAINT Relationship69 FOREIGN KEY (TipUniTraCod) REFERENCES ta_gzz_tipo_uni_transporte (TipUniTraCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_unidad_transporte ADD CONSTRAINT Relationship70 FOREIGN KEY (EstUniTraCod) REFERENCES ta_gzz_estado_uni_transporte (EstUniTraCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_guia_rem_remitente ADD CONSTRAINT Relationship71 FOREIGN KEY (MotTraCod) REFERENCES ta_gzz_motivo_traslado (MotTraCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_guia_rem_remitente ADD CONSTRAINT Relationship72 FOREIGN KEY (TipDstCod) REFERENCES ta_gzz_tipo_destinatario (TipDstCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_guia_rem_remitente ADD CONSTRAINT Relationship73 FOREIGN KEY (EmpCod) REFERENCES en_p1m_empresa (EmpCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_guia_rem_transportista ADD CONSTRAINT Relationship74 FOREIGN KEY (TraCod) REFERENCES en_p2m_transportista (TraCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_guia_rem_transportista ADD CONSTRAINT Relationship75 FOREIGN KEY (UniTraCod) REFERENCES en_p2m_unidad_transporte (UniTraCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_guia_rem_transportista ADD CONSTRAINT Relationship76 FOREIGN KEY (EmpCod) REFERENCES en_p1m_empresa (EmpCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_guia_rem_transportista ADD CONSTRAINT Relationship77 FOREIGN KEY (TipDstCod) REFERENCES ta_gzz_tipo_destinatario (TipDstCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_inventario_cab ADD CONSTRAINT Relationship78 FOREIGN KEY (UsuCod) REFERENCES en_p1m_usuario (UsuCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2t_inventario_det ADD CONSTRAINT Relationship79 FOREIGN KEY (InvCabCod) REFERENCES en_p2m_inventario_cab (InvCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2t_inventario_det ADD CONSTRAINT Relationship80 FOREIGN KEY (ProCod, SubClaProCod, ClaProCod) REFERENCES en_p2m_producto (ProCod, SubClaProCod, ClaProCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1c_devolucion_ventas ADD CONSTRAINT Relationship81 FOREIGN KEY (TipDevCod) REFERENCES ta_gzz_tipo_devolucion (TipDevCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2c_devolucion_compras ADD CONSTRAINT Relationship82 FOREIGN KEY (TipDevCod) REFERENCES ta_gzz_tipo_devolucion (TipDevCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_factura_venta_cab ADD CONSTRAINT Relationship91 FOREIGN KEY (TipDesCod) REFERENCES ta_gzz_tipo_descuento (TipDesCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_factura_compra_cab ADD CONSTRAINT Relationship92 FOREIGN KEY (TipDesCod) REFERENCES ta_gzz_tipo_descuento (TipDesCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_cliente ADD CONSTRAINT Relationship95 FOREIGN KEY (TipCliCod) REFERENCES ta_gzz_tipo_cliente (TipCliCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2c_devolucion_compras ADD CONSTRAINT Relationship97 FOREIGN KEY (FacComCabCod) REFERENCES en_p4m_factura_compra_cab (FacComCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1c_devolucion_ventas ADD CONSTRAINT Relationship98 FOREIGN KEY (FacVenCabCod) REFERENCES en_p1m_factura_venta_cab (FacVenCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_factura_venta_cab ADD CONSTRAINT Relationship99 FOREIGN KEY (GuiRemTraNum) REFERENCES en_p2m_guia_rem_transportista (GuiRemTraNum) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_factura_venta_cab ADD CONSTRAINT Relationship100 FOREIGN KEY (GuiRemRemNum) REFERENCES en_p2m_guia_rem_remitente (GuiRemRemNum) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_factura_compra_cab ADD CONSTRAINT Relationship101 FOREIGN KEY (GuiRemTraNum) REFERENCES en_p2m_guia_rem_transportista (GuiRemTraNum) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_factura_compra_cab ADD CONSTRAINT Relationship102 FOREIGN KEY (GuiRemRemNum) REFERENCES en_p2m_guia_rem_remitente (GuiRemRemNum) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_preventa_cab ADD CONSTRAINT Relationship104 FOREIGN KEY (TipDesCod) REFERENCES ta_gzz_tipo_descuento (TipDesCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_clientes_rutas ADD CONSTRAINT Relationship106 FOREIGN KEY (CatRutCod) REFERENCES en_p1m_catalogo_ruta (CatRutCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_clientes_rutas ADD CONSTRAINT Relationship107 FOREIGN KEY (CliCod) REFERENCES en_p1m_cliente (CliCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_factura_venta_cab ADD CONSTRAINT Relationship109 FOREIGN KEY (CatRutCod) REFERENCES en_p1m_catalogo_ruta (CatRutCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_preventa_cab ADD CONSTRAINT Relationship110 FOREIGN KEY (CatRutCod) REFERENCES en_p1m_catalogo_ruta (CatRutCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p3m_cuenta ADD CONSTRAINT Relationship111 FOREIGN KEY (CueAmaDeb) REFERENCES en_p3m_cuenta (CueCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p3m_cuenta ADD CONSTRAINT Relationship113 FOREIGN KEY (CueAmaHab) REFERENCES en_p3m_cuenta (CueCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_producto ADD CONSTRAINT Relationship114 FOREIGN KEY (AlmCod) REFERENCES en_p2m_almacen (AlmCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1c_devolucion_ventas ADD CONSTRAINT Relationship115 FOREIGN KEY (DevVenNewFac) REFERENCES en_p1m_factura_venta_cab (FacVenCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2c_devolucion_compras ADD CONSTRAINT Relationship116 FOREIGN KEY (DevComNewFac) REFERENCES en_p4m_factura_compra_cab (FacComCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_cartera_clientes ADD CONSTRAINT Relationship117 FOREIGN KEY (CliCod) REFERENCES en_p1m_cliente (CliCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_cartera_clientes ADD CONSTRAINT Relationship118 FOREIGN KEY (UsuCod) REFERENCES en_p1m_usuario (UsuCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p1m_cliente ADD CONSTRAINT Relationship119 FOREIGN KEY (CanCliCod) REFERENCES ta_gzz_canal_cliente (CanCliCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_producto ADD CONSTRAINT Relationship120 FOREIGN KEY (MonCod) REFERENCES ta_gzz_moneda (MonCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

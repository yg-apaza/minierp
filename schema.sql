DROP SCHEMA IF EXISTS `episerp`;
-- -----------------------------------------------------
-- Schema minierp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `episerp`;
USE `episerp`;

-- Create tables section -------------------------------------------------

-- Table episerp.en_p1m_preventa_cab

CREATE TABLE en_p1m_preventa_cab
(
  PreVenCabCod Char(10) NOT NULL,
  CliCod Char(15) NOT NULL,
  UsuCod Char(15) NOT NULL,
  PreVenCabFec Date NOT NULL,
  PreVenCabPla Int(3) NOT NULL,
  PreVenCabTot Double(10,2) NOT NULL,
  PreVenCabDes Double(10,2) NOT NULL,
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

-- Table episerp.en_p1t_preventa_det

CREATE TABLE en_p1t_preventa_det
(
  PreVenCabCod Char(10) NOT NULL,
  PreVenDetCod Int(3) ZEROFILL NOT NULL AUTO_INCREMENT,
  ClaProCod Char(2) NOT NULL,
  SubClaProCod Char(2) NOT NULL,
  ProCod Char(15) NOT NULL,
  PreVenDetCan Double(10,2) NOT NULL,
  PreVenDetValUni Double(10,2) NOT NULL,
 PRIMARY KEY (PreVenDetCod,PreVenCabCod)
)
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
  CliCod Char(15) NOT NULL,
  UsuCod Char(15) NOT NULL,
  FacVenCabFec Date NOT NULL,
  FacVenCabTot Double(10,2) NOT NULL,
  FacVenCabDes Double(10,2) NOT NULL,
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

-- Table episerp.en_p1t_factura_venta_det

CREATE TABLE en_p1t_factura_venta_det
(
  FacVenCabCod Char(10) NOT NULL,
  FacVenDetCod Int(3) ZEROFILL NOT NULL AUTO_INCREMENT,
  ClaProCod Char(2) NOT NULL,
  SubClaProCod Char(2) NOT NULL,
  ProCod Char(15) NOT NULL,
  FacVenDetCan Double(10,2) NOT NULL,
  FacVenDetValUni Double(10,2) NOT NULL,
 PRIMARY KEY (FacVenDetCod,FacVenCabCod)
)
;

CREATE INDEX IX_Relationship19 ON en_p1t_factura_venta_det (ProCod,SubClaProCod,ClaProCod)
;

-- Table episerp.en_p1m_pagos_cuotas_cab

CREATE TABLE en_p1m_pagos_cuotas_cab
(
  FacVenCabCod Char(10) NOT NULL,
  PagCuoNumDoc Char(50) NOT NULL,
  PagCuoNum Int(2) NOT NULL,
  PagCuoNumPag Int(2) NOT NULL DEFAULT 0,
  PagCuoDeuTot Double(10,2) NOT NULL,
  PagCuoTotPag Double(10,2) NOT NULL,
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
  CliNom Char(90),
  CliApePat Char(90),
  CliApeMat Char(90),
  CliSex Char(1) NOT NULL,
  CliDir Char(90) NOT NULL DEFAULT 'Desconocida',
  CliTelFij Char(15),
  CliTelCel Char(15),
  CliEmail Char(50) NOT NULL DEFAULT 'Desconocido',
  EstCivCod Int(2) ZEROFILL NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p1m_cliente ADD PRIMARY KEY (CliCod)
;

CREATE INDEX IX_Relationship28 ON en_p1m_cliente (EstCivCod)
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
  ProDet Char(90) NOT NULL,
  UniMedCod Int(2) ZEROFILL NOT NULL,
  ProPreUni Double(10,2) NOT NULL,
  MonCod Int(2) ZEROFILL NOT NULL,
  ProStk Double(10,2) NOT NULL,
  ProStkPreVen Double(10,2) NOT NULL DEFAULT 0,
  AlmCod Char(15) NOT NULL,
  VolUniAlm Double(10,2),
  ProStkMin Double(10,2),
  ProStkMax Double(10,2),
  ProObs Char(90) NOT NULL DEFAULT 'Ninguna',
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p2m_producto ADD PRIMARY KEY (ProCod,SubClaProCod,ClaProCod)
;

CREATE INDEX IX_Relationship32 ON en_p2m_producto (AlmCod)
;

CREATE INDEX IX_Relationship33 ON en_p2m_producto (UniMedCod)
;

-- Table episerp.en_p2m_almacen

CREATE TABLE en_p2m_almacen
(
  AlmCod Char(15) NOT NULL,
  AlmDet Char(90),
  AlmVolTot Double(10,2),
  AlmObs Char(90) NOT NULL DEFAULT 'Ninguna',
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p2m_almacen ADD PRIMARY KEY (AlmCod)
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
  CueNiv Int(2) NOT NULL,
  CueNum Char(10) NOT NULL,
  CueDes Char(150) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (CueCod)
)
;

CREATE INDEX IX_Relationship37 ON en_p3m_cuenta (CuePad)
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
  AsiCabGlo Char(60),
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

-- Table episerp.en_p4m_guia_compra_cab

CREATE TABLE en_p4m_guia_compra_cab
(
  GuiComCabCod Char(10) NOT NULL,
  FacComCabCod Char(10) NOT NULL,
  ProCod Char(15) NOT NULL,
  GuiComCabPunPar Char(30),
  GuiComCabPunLle Char(30),
  GuiComCabFec Date NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p4m_guia_compra_cab ADD PRIMARY KEY (GuiComCabCod)
;

CREATE INDEX IX_Relationship44 ON en_p4m_guia_compra_cab (FacComCabCod)
;

CREATE INDEX IX_Relationship45 ON en_p4m_guia_compra_cab (ProCod)
;

-- Table episerp.en_p4t_guia_compra_det

CREATE TABLE en_p4t_guia_compra_det
(
  GuiComCabCod Char(10) NOT NULL,
  GuiComDetCod Int(3) ZEROFILL NOT NULL AUTO_INCREMENT,
  ClaProCod Char(2) NOT NULL,
  SubClaProCod Char(2) NOT NULL,
  ProCod Char(15) NOT NULL,
  GuiComDetCan Double(10,2) NOT NULL,
 PRIMARY KEY (GuiComDetCod,GuiComCabCod)
)
;

CREATE INDEX IX_Relationship47 ON en_p4t_guia_compra_det (ProCod,SubClaProCod,ClaProCod)
;

-- Table episerp.en_p4m_factura_compra_cab

CREATE TABLE en_p4m_factura_compra_cab
(
  FacComCabCod Char(10) NOT NULL,
  ProCod Char(15) NOT NULL,
  UsuCod Char(15) NOT NULL,
  FacComCabFec Date NOT NULL,
  FacComCabTot Double(10,2) NOT NULL,
  FacComCabDes Double(10,2) NOT NULL,
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

CREATE INDEX IX_Relationship49 ON en_p4m_factura_compra_cab (ProCod)
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

-- Table episerp.en_p4t_factura_compra_det

CREATE TABLE en_p4t_factura_compra_det
(
  FacComCabCod Char(10) NOT NULL,
  FacComDetCod Int(3) ZEROFILL NOT NULL AUTO_INCREMENT,
  ClaProCod Char(2) NOT NULL,
  SubClaProCod Char(2) NOT NULL,
  ProCod Char(15) NOT NULL,
  FacComDetCan Double(10,2) NOT NULL,
  FacComDetValUni Double(10,2) NOT NULL,
 PRIMARY KEY (FacComDetCod,FacComCabCod)
)
;

CREATE INDEX IX_Relationship56 ON en_p4t_factura_compra_det (ProCod,SubClaProCod,ClaProCod)
;

-- Table episerp.en_p4m_proveedor

CREATE TABLE en_p4m_proveedor
(
  ProCod Char(15) NOT NULL,
  ProDet Char(90) NOT NULL,
  ProCon Char(90),
  ProDir Char(90) DEFAULT 'Desconocida',
  ProTelFij Char(15),
  ProTelCel Char(15),
  ProEmail Char(50) DEFAULT 'Desconocido',
  ProPagWeb Char(50) DEFAULT 'Desconocida',
  ProObs Char(90) DEFAULT 'Ninguna',
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p4m_proveedor ADD PRIMARY KEY (ProCod)
;

-- Table episerp.en_p4m_documento_proveedor

CREATE TABLE en_p4m_documento_proveedor
(
  ProCod Char(15) NOT NULL,
  TipDocProCod Int(2) ZEROFILL NOT NULL,
  DocProNum Char(30) NOT NULL,
  EstRegCod Char(1) NOT NULL
)
;

ALTER TABLE en_p4m_documento_proveedor ADD PRIMARY KEY (ProCod,TipDocProCod)
;

-- Table episerp.ta_gzz_unidad_med

CREATE TABLE ta_gzz_unidad_med
(
  UniMedCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
  UniMedDet Char(90) NOT NULL,
  EstRegCod Char(1) NOT NULL,
 PRIMARY KEY (UniMedCod)
)
;

-- Table episerp.ta_gzz_moneda

CREATE TABLE ta_gzz_moneda
(
  MonCod Int(2) ZEROFILL NOT NULL AUTO_INCREMENT,
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

ALTER TABLE en_p2m_producto ADD CONSTRAINT Relationship31 FOREIGN KEY (MonCod) REFERENCES ta_gzz_moneda (MonCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p2m_producto ADD CONSTRAINT Relationship32 FOREIGN KEY (AlmCod) REFERENCES en_p2m_almacen (AlmCod) ON DELETE NO ACTION ON UPDATE NO ACTION
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

ALTER TABLE en_p4m_guia_compra_cab ADD CONSTRAINT Relationship44 FOREIGN KEY (FacComCabCod) REFERENCES en_p4m_factura_compra_cab (FacComCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_guia_compra_cab ADD CONSTRAINT Relationship45 FOREIGN KEY (ProCod) REFERENCES en_p4m_proveedor (ProCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4t_guia_compra_det ADD CONSTRAINT Relationship46 FOREIGN KEY (GuiComCabCod) REFERENCES en_p4m_guia_compra_cab (GuiComCabCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4t_guia_compra_det ADD CONSTRAINT Relationship47 FOREIGN KEY (ProCod, SubClaProCod, ClaProCod) REFERENCES en_p2m_producto (ProCod, SubClaProCod, ClaProCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_factura_compra_cab ADD CONSTRAINT Relationship49 FOREIGN KEY (ProCod) REFERENCES en_p4m_proveedor (ProCod) ON DELETE NO ACTION ON UPDATE NO ACTION
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

ALTER TABLE en_p4m_documento_proveedor ADD CONSTRAINT Relationship57 FOREIGN KEY (ProCod) REFERENCES en_p4m_proveedor (ProCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p4m_documento_proveedor ADD CONSTRAINT Relationship58 FOREIGN KEY (TipDocProCod) REFERENCES ta_gzz_tipo_doc_proveedor (TipDocProCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE en_p3m_asiento_cab ADD CONSTRAINT Relationship59 FOREIGN KEY (TipComCod) REFERENCES ta_gzz_tipo_comprobante (TipComCod) ON DELETE NO ACTION ON UPDATE NO ACTION
;


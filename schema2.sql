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
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('72743604', 'Christian', 'Incalla', 'Nina', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 1, '1990-11-20', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('29332450', 'Teofilo', 'Zegarra', 'Rodriguez', 'vendedor', 'e8827f3c0bcc90509b7d6841d446b163a671cac807a5f1bf41218667546ce80b', 2, '1992-05-24', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('29337493', 'Pier', 'Choque', 'Llerena', 'comprador', '17f77242a319cd8bf5fac8fd615115a09af269b8d7ec43e84e1ba7005b5c5383', 3, '1989-08-11', 1, 'M', 'A');
INSERT INTO `episerp`.`en_p1m_usuario` (`UsuCod`, `UsuNom`, `UsuApePat`, `UsuApeMat`, `UsuLog`, `UsuPas`, `TipUsuCod`, `UsuFecNac`, `EstCivCod`, `UsuSex`, `EstRegCod`) VALUES ('72741852', 'Alexander', 'Choquenaira', 'Flores', 'contador', '145e0447253dba54dce5e527e28bcc0f7c160332bfcb7cf5cf4f5b4692aebead', 4, '1985-12-04', 1, 'M', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p1m_documento_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('72743604', '01', '72743604', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('29332450', '01', '29332450', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('29337493', '01', '29337493', 'A');
INSERT INTO `en_p1m_documento_usuario` (`UsuCod`, `TipDocUsuCod`, `DocUsuNum`, `EstRegCod`) VALUES ('72741852', '01', '72741852', 'A');

COMMIT;


-- -----------------------------------------------------
-- Data for table `episerp`.`en_p2m_almacen`
-- -----------------------------------------------------
START TRANSACTION;
USE `episerp`;
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM01', 'Almacen Principal', '1500', 'Ninguna', 'A');
INSERT INTO `en_p2m_almacen` (`AlmCod`, `AlmDet`, `AlmVolTot`, `AlmObs`, `EstRegCod`) VALUES ('ALM02', 'Almacen Secundario', '1000', 'Ninguna', 'A');

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


/* TRIGGER TRIG_PREVENTA */

DROP TRIGGER IF EXISTS `TRIG_PREVENTA`;

DELIMITER $$
CREATE TRIGGER TRIG_PREVENTA
AFTER INSERT ON en_p1t_preventa_det
FOR EACH ROW 
BEGIN
	UPDATE en_p1m_preventa_cab
	SET 
		PreVenCabSubTot=(PreVenCabSubTot+NEW.PreVenDetValUni * NEW.PreVenDetCan),
		PreVenCabTot=PreVenCabSubTot*(100 + PreVenCabIGV)/100
    WHERE PreVenCabCod=NEW.PreVenCabCod;
END $$
DELIMITER ;

/* TRIGGER TRIG_FACTURA_VENTA */

DROP TRIGGER IF EXISTS `TRIG_FACTURA_VENTA`;

DELIMITER $$
CREATE TRIGGER TRIG_FACTURA_VENTA
AFTER INSERT ON en_p1t_factura_venta_det
FOR EACH ROW 
BEGIN
	UPDATE en_p1m_factura_venta_cab
	SET 
		FacVenCabSubTot=(FacVenCabSubTot+NEW.FacVenDetValUni * NEW.FacVenDetCan),
		FacVenCabTot=FacVenCabSubTot*(100 + FacVenCabIGV)/100
    WHERE FacVenCabCod=NEW.FacVenCabCod;
END $$
DELIMITER ;

/* TRIGGER TRIG_FACTURA_COMPRA*/

DROP TRIGGER IF EXISTS `TRIG_FACTURA_COMPRA`;

DELIMITER $$
CREATE TRIGGER TRIG_FACTURA_COMPRA
AFTER INSERT ON en_p4t_factura_compra_det
FOR EACH ROW 
BEGIN
	UPDATE en_p4m_factura_compra_cab
	SET 
		FacComCabSubTot=(FacComCabSubTot+NEW.FacComDetValUni * NEW.FacComDetCan),
		FacComCabTot=FacComCabSubTot*(100 + FacComCabIGV)/100
    WHERE FacComCabCod=NEW.FacComCabCod;
END $$
DELIMITER ;
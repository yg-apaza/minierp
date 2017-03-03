-- -- PROCEDURES -- --

-- PROCEDURE PROC_IngresosPreventas --

DROP PROCEDURE IF EXISTS `PROC_IngresosPreventas`;
DELIMITER $$
CREATE PROCEDURE `PROC_IngresosPreventas` (IN mCliCod char(15), IN mTipo integer)
BEGIN

	IF mTipo = 1 
	THEN
		SELECT 
		(SELECT COALESCE(SUM(FacVenCabTot),0) FROM en_p1m_factura_venta_cab WHERE UsuCod=mCliCod AND DATE(FacVenCabFecEmi)=DATE(NOW()) AND EstRegCod='A') AS 'HOY',
		(SELECT COALESCE(SUM(FacVenCabTot),0)  FROM en_p1m_factura_venta_cab WHERE UsuCod=mCliCod AND DATE(FacVenCabFecEmi)=DATE(NOW())-1 AND EstRegCod='A') AS 'AYER',
		(SELECT COALESCE(SUM(FacVenCabTot),0)  FROM en_p1m_factura_venta_cab WHERE UsuCod=mCliCod AND DATE(FacVenCabFecEmi)=DATE(NOW())-2 AND EstRegCod='A') AS 'ANTEAYER';
	ELSEIF mTipo=2
	THEN
        SELECT 
		(SELECT COALESCE(SUM(PreVenCabTot),0) FROM en_p1m_preventa_cab WHERE UsuCod=mCliCod AND DATE(PreVenCabFecEmi)=DATE(NOW()) AND EstRegCod='A') AS 'HOY',
		(SELECT COALESCE(SUM(PreVenCabTot),0) FROM en_p1m_preventa_cab WHERE UsuCod=mCliCod AND DATE(PreVenCabFecEmi)=DATE(NOW())-1 AND EstRegCod='A') AS 'AYER',
		(SELECT COALESCE(SUM(PreVenCabTot),0) FROM en_p1m_preventa_cab WHERE UsuCod=mCliCod AND DATE(PreVenCabFecEmi)=DATE(NOW())-2 AND EstRegCod='A') AS 'ANTEAYER';
	END IF;

END $$
DELIMITER ;
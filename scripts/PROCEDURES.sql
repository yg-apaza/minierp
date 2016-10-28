/* PROCEDURE kardex_prom_ponderado */

DROP PROCEDURE IF EXISTS `kardex_prom_ponderado`;
DELIMITER $$
CREATE  PROCEDURE `kardex_prom_ponderado`(IN idProducto CHAR(15))
BEGIN

DECLARE saldoCantidad DOUBLE default 0;
DECLARE saldoPrecioUni DOUBLE default 0;
DECLARE saldoPrecioTot DOUBLE default 0;
SET @saldoCantidad :=0;
SET @saldoPrecioUni :=0;
SET @saldoPrecioTot :=0;
IF idProducto != '' 
	THEN
		SELECT 
			a.fecha,
			a.numero_factura,
			a.producto,
			a.cantidad_entrada,
			a.precio_unitario_entrada,
			a.precio_total_entrada,
			a.cantidad_salida,
			a.precio_unitario_salida,
			a.precio_total_salida,
			(SELECT 
				CASE a.cantidad_entrada
					WHEN 0 THEN ( @saldoCantidad:= @saldoCantidad-a.cantidad_salida)
					ELSE ( @saldoCantidad:=@saldoCantidad+a.cantidad_entrada)
                END 
				
            ) cantidad_saldo,
            (SELECT 
				CASE a.cantidad_entrada
					WHEN 0 THEN ( @saldoPrecioTot:= @saldoPrecioTot-a.precio_total_salida)
					ELSE ( @saldoPrecioTot:=@saldoPrecioTot+a.precio_total_entrada)
                END 
				
            ) precio_total_saldo,
            COALESCE(@saldoPrecioTot/@saldoCantidad,0) precio_unitario_saldo,
            ( 
				CASE a.cantidad_entrada
					WHEN 0 THEN (SELECT 'venta')
					ELSE ( SELECT 'compra')
                END 
				
            ) tipo_operacion
            
        FROM
        (
			(
				SELECT 
					fcc.FacComCabFec fecha,				
					fcc.FacComCabCod numero_factura,
					pp.ProDet producto,
					fcd.FacComDetCan cantidad_entrada,
					fcd.FacComDetValUni precio_unitario_entrada,
					(SELECT cantidad_entrada*precio_unitario_entrada) precio_total_entrada,
					0 cantidad_salida,
					0 precio_unitario_salida,
					0 precio_total_salida
				FROM en_p4t_factura_compra_det fcd
				INNER JOIN en_p2m_producto pp ON fcd.ProCod=pp.ProCod AND pp.ProCod=idProducto
				INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod = fcd.FacComCabCod AND fcc.EstRegCod='A'
                
			)
			UNION ALL
			(
			
				SELECT 
					fvc.FacVenCabFec fecha,
					fvc.FacVenCabCod numero_factura,
					pp.ProDet producto,
					0 cantidad_entrada,
					0 precio_unitario_entrada,
					0 precio_total_entrada,
					fvd.FacVenDetCan cantidad_salida,
					fvd.FacVenDetValUni precio_unitario_salida,
					(SELECT cantidad_salida*precio_unitario_salida) precio_total_salida
					
				FROM en_p1t_factura_venta_det fvd
				INNER JOIN en_p2m_producto pp ON fvd.ProCod=pp.ProCod AND pp.ProCod=idProducto
				INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod = fvd.FacVenCabCod AND fvc.EstRegCod='A'
				 
			)
		) a
        ORDER BY a.fecha,a.numero_factura;
	END IF;

END $$
DELIMITER ;

/* PROCEDURE PROC_IngresosPreventas */

DROP PROCEDURE IF EXISTS `PROC_IngresosPreventas`;
DELIMITER $$
CREATE PROCEDURE `PROC_IngresosPreventas` (IN mCliCod char(15), IN mTipo integer)
BEGIN

	IF mTipo = 1 
	THEN
		SELECT 
		(SELECT COALESCE(SUM(FacVenCabTot),0) FROM en_p1m_factura_venta_cab WHERE UsuCod=mCliCod AND DATE(FacVenCabFec)=DATE(NOW()) AND EstRegCod='A') AS 'HOY',
		(SELECT COALESCE(SUM(FacVenCabTot),0)  FROM en_p1m_factura_venta_cab WHERE UsuCod=mCliCod AND DATE(FacVenCabFec)=DATE(NOW())-1 AND EstRegCod='A') AS 'AYER',
		(SELECT COALESCE(SUM(FacVenCabTot),0)  FROM en_p1m_factura_venta_cab WHERE UsuCod=mCliCod AND DATE(FacVenCabFec)=DATE(NOW())-2 AND EstRegCod='A') AS 'ANTEAYER';
	ELSEIF mTipo=2
	THEN
        SELECT 
		(SELECT COALESCE(SUM(PreVenCabTot),0) FROM en_p1m_preventa_cab WHERE UsuCod=mCliCod AND DATE(PreVenCabFec)=DATE(NOW()) AND EstRegCod='A') AS 'HOY',
		(SELECT COALESCE(SUM(PreVenCabTot),0) FROM en_p1m_preventa_cab WHERE UsuCod=mCliCod AND DATE(PreVenCabFec)=DATE(NOW())-1 AND EstRegCod='A') AS 'AYER',
		(SELECT COALESCE(SUM(PreVenCabTot),0) FROM en_p1m_preventa_cab WHERE UsuCod=mCliCod AND DATE(PreVenCabFec)=DATE(NOW())-2 AND EstRegCod='A') AS 'ANTEAYER';
	END IF;

END $$
DELIMITER ;

/* PROCEDURE evaluacion_preventa */

DROP PROCEDURE IF EXISTS `evaluacion_preventa`;
SET GLOBAL event_scheduler=ON;
CREATE EVENT evaluacionAutomaticaPreventas
    ON SCHEDULE EVERY 1 DAY STARTS '2016-10-019 23:59:00'
    DO call evaluacion_preventa();

DELIMITER $$
CREATE  PROCEDURE `evaluacion_preventa`()
BEGIN

SET @fechaHoy:=NOW();
CREATE TABLE preventasIngresadas
SELECT 
	pvc.PreVenCabCod,
	pvc.PreVenCabPla,
	pvc.PreVenCabFec,
    (SELECT DATE_ADD(pvc.PreVenCabFec,INTERVAL pvc.PreVenCabPla DAY)) tiempoFin
FROM en_p1m_preventa_cab pvc 
WHERE pvc.EstRegCod='A';



CREATE TABLE preventasVencidas
SELECT pp.ProCod,pp.ProStkPreVen,pvc.PreVenCabCod,pi.tiempoFin,sum(pvd.PreVenDetCan) totalxprod from en_p2m_producto pp
INNER JOIN  en_p1t_preventa_det pvd ON pp.ProCod=pvd.ProCod AND pp.EstRegCod='A'
INNER JOIN en_p1m_preventa_cab pvc ON pvc.PreVenCabCod=pvd.PreVenCabCod AND pvc.EstRegCod='A'
INNER JOIN preventasIngresadas pi ON pi.tiempoFin<@fechaHoy AND pi.PreVenCabCod=pvc.PreVenCabCod
GROUP BY pp.ProCod;

UPDATE preventasVencidas pv
INNER JOIN en_p1m_preventa_cab pvc ON pv.PreVenCabCod=pvc.PreVenCabCod
SET pvc.EstRegCod = '*';

UPDATE preventasVencidas pv
INNER JOIN en_p2m_producto pp ON pp.ProCod=pv.ProCod
SET pp.ProStkPreVen = pp.ProStkPreVen+pv.totalxprod;

DROP TABLE preventasIngresadas;
DROP TABLE preventasVencidas;

END $$
DELIMITER ;

/* PROCEDURE flujo_efectivo */

DROP PROCEDURE IF EXISTS `flujo_efectivo`;
DELIMITER $$
CREATE  PROCEDURE `flujo_efectivo`(IN fec_ini DATE, fec_fin DATE)
BEGIN

SET @anhoActual:=year(now());
SELECT 
	t.mes,
	(CASE 
		WHEN ISNULL(t.montoCompra) THEN (SELECT 0)
		ELSE (SELECT t.montoCompra)
	END)
	montoCompra,
	(CASE 
		WHEN ISNULL(p.montoVenta) THEN (SELECT 0)
		ELSE (SELECT p.montoVenta)  
                END)
	montoVenta FROM
	(
		(
			SELECT 
				'Enero'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFec)=1 AND year(fcc.FacComCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Febrero'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFec)=2 AND year(fcc.FacComCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Marzo'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFec)=3 AND year(fcc.FacComCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Abril'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFec)=4 AND year(fcc.FacComCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Mayo'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFec)=5 AND year(fcc.FacComCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Junio'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFec)=6 AND year(fcc.FacComCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Julio'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFec)=7 AND year(fcc.FacComCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Agosto'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFec)=8 AND year(fcc.FacComCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Septiembre'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFec)=9 AND year(fcc.FacComCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Octubre'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFec)=10 AND year(fcc.FacComCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Noviembre'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFec)=11 AND year(fcc.FacComCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Diciembre'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFec)=12 AND year(fcc.FacComCabFec)=@anhoActual
		)
		
	) t
     	JOIN
	(
		(
			SELECT 
				'Enero'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFec)=1 AND year(fvc.FacVenCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Febrero'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFec)=2 AND year(fvc.FacVenCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Marzo'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFec)=3 AND year(fvc.FacVenCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Abril'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFec)=4 AND year(fvc.FacVenCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Mayo'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFec)=5 AND year(fvc.FacVenCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Junio'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFec)=6 AND year(fvc.FacVenCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Julio'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFec)=7 AND year(fvc.FacVenCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Agosto'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFec)=8 AND year(fvc.FacVenCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Septiembre'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFec)=9 AND year(fvc.FacVenCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Octubre'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFec)=10 AND year(fvc.FacVenCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Noviembre'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFec)=11 AND year(fvc.FacVenCabFec)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Diciembre'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFec)=12 AND year(fvc.FacVenCabFec)=@anhoActual
		)
    ) p
    WHERE p.mes=t.mes;

END $$
DELIMITER ;

/* PROCEDURE PROC_LibroDiario */
DROP PROCEDURE IF EXISTS `PROC_LibroDiario`;
DELIMITER $$
CREATE PROCEDURE `PROC_LibroDiario` (IN mLibDiaCod integer)
BEGIN
SELECT
		libDia.LibDiaCod,
		asiCab.AsiCabCod,
		asiCab.AsiCabFec,
		asiCab.AsiCabGlo, 
		asiCab.AsiCabTip,
		asiCab.AsiCabNumCom,
		cue.CueCod, 
		cue.CueDes,
		asiDet.AsiDetDebHab, 
		asiDet.AsiDetMon		
	FROM en_p3t_asiento_det asiDet
		INNER JOIN en_p3m_cuenta cue
			ON asiDet.CueCod = cue.CueCod
		INNER JOIN en_p3m_asiento_cab asiCab
			ON asiDet.AsiCabCod = asiCab.AsiCabCod
		INNER JOIN en_p3m_libro_diario libDia
			ON libDia.LibDiaCod = asiCab.LibDiaCod
	WHERE libDia.EstRegCod = 'A' AND libDia.LibDiaCod=mLibDiaCod;
END $$
DELIMITER ;

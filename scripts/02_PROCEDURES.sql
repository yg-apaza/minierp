/* PROCEDURE kardex_prom_ponderado */

DROP PROCEDURE IF EXISTS `kardex_prom_ponderado`;
DELIMITER $$
CREATE  PROCEDURE `kardex_prom_ponderado`(IN idProducto CHAR(15))
BEGIN

DECLARE saldoCantidad DOUBLE default 0;
DECLARE saldoPrecioUni DOUBLE default 0;
DECLARE saldoPrecioTot DOUBLE default 0;
DECLARE fechaInventario DATE default '1000-01-01';
SET @saldoCantidad :=0;
SET @saldoPrecioUni :=0;
SET @saldoPrecioTot :=0;


SET @fechaInventario := (SELECT MAX(ic.InvCabFec) FROM en_p2m_inventario_cab ic
INNER JOIN en_p2t_inventario_det id ON id.ProCod=idProducto AND ic.EstRegCod='A');

IF COALESCE(@fechaInventario,0) =0
THEN
SET @fechaInventario := '1000-01-01';
END IF;



IF idProducto != '' 
	THEN
		(
			SELECT 
					@fechaInventario fecha,				
					ic.InvCabCod numero_factura,
					pp.ProDet producto,
					0 cantidad_entrada,
					0 precio_unitario_entrada,
					0 precio_total_entrada,
					0 cantidad_salida,
					0 precio_unitario_salida,
					0 precio_total_salida,
                    (pp.ProStk+id.InvDetDifStk) cantidad_saldo,
                    ((pp.ProStk+id.InvDetDifStk)*pp.ProPreUniVen) precio_total_saldo,
                    pp.ProPreUniVen precio_unitario_saldo,
                    'Inventario' tipo_operacion,
                    'Inventario' glosa
                    
				FROM en_p2m_inventario_cab ic
				INNER JOIN en_p2t_inventario_det id ON id.ProCod=idProducto AND ic.EstRegCod='A' AND ic.InvCabFec=@fechaInventario
                INNER JOIN en_p2m_producto pp ON id.ProCod=pp.ProCod 
        )
        UNION ALL
		(
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
			   a.tipo_operacion,
			   a.glosa
			
			FROM
			(
				
				(
					SELECT 
						fcc.FacComCabFecEmi fecha,				
						fcc.FacComCabCod numero_factura,
						pp.ProDet producto,
						fcd.FacComDetCan cantidad_entrada,
						fcd.FacComDetValUni precio_unitario_entrada,
						(SELECT cantidad_entrada*precio_unitario_entrada) precio_total_entrada,
						0 cantidad_salida,
						0 precio_unitario_salida,
						0 precio_total_salida,
						'Compra' tipo_operacion,
						'Factura' glosa
						
					FROM en_p4t_factura_compra_det fcd
					INNER JOIN en_p2m_producto pp ON fcd.ProCod=pp.ProCod AND pp.ProCod=idProducto
					INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod = fcd.FacComCabCod AND fcc.EstRegCod='A'
				)
				UNION ALL
				(
				
					SELECT 
						fvc.FacVenCabFecEmi fecha,
						fvc.FacVenCabCod numero_factura,
						pp.ProDet producto,
						0 cantidad_entrada,
						0 precio_unitario_entrada,
						0 precio_total_entrada,
						fvd.FacVenDetCan cantidad_salida,
						fvd.FacVenDetValUni precio_unitario_salida,
						(SELECT cantidad_salida*precio_unitario_salida) precio_total_salida,
						'Venta' tipo_operacion,
						'Factura' glosa
						
					FROM en_p1t_factura_venta_det fvd
					INNER JOIN en_p2m_producto pp ON fvd.ProCod=pp.ProCod AND pp.ProCod=idProducto
					INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod = fvd.FacVenCabCod AND fvc.EstRegCod='A'
					INNER JOIN en_p1m_cliente cl ON fvc.CliCod=cl.CliCod 
					INNER JOIN ta_gzz_tipo_cliente tc ON tc.TipCliCod=cl.TipCliCod AND tc.TipCliCod='02'
				)
				UNION ALL
				(
				
					SELECT 
						fvc.FacVenCabFecEmi fecha,
						fvc.FacVenCabCod numero_factura,
						pp.ProDet producto,
						0 cantidad_entrada,
						0 precio_unitario_entrada,
						0 precio_total_entrada,
						fvd.FacVenDetCan cantidad_salida,
						fvd.FacVenDetValUni precio_unitario_salida,
						(SELECT cantidad_salida*precio_unitario_salida) precio_total_salida,
						'Venta' tipo_operacion,
						'Boleta' glosa
						
					FROM en_p1t_factura_venta_det fvd
					INNER JOIN en_p2m_producto pp ON fvd.ProCod=pp.ProCod AND pp.ProCod=idProducto
					INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod = fvd.FacVenCabCod AND fvc.EstRegCod='A'
					INNER JOIN en_p1m_cliente cl ON fvc.CliCod=cl.CliCod 
					INNER JOIN ta_gzz_tipo_cliente tc ON tc.TipCliCod=cl.TipCliCod AND tc.TipCliCod='01'
				)
				UNION ALL
				(
					SELECT 
						dc.DevComFec fecha,
						dc.DevComNewFac numero_factura,
						pp.ProDet producto,
						0 cantidad_entrada,
						0 precio_unitario_entrada,
						0 precio_total_entrada,
						fcd.FacComDetCan cantidad_salida,
						fcd.FacComDetValUni precio_unitario_salida,
						(SELECT cantidad_salida*precio_unitario_salida) precio_total_salida,
						td.TipDevDet tipo_operacion,
						'Factura' glosa
						
					FROM en_p2c_devolucion_compras dc
					INNER JOIN ta_gzz_tipo_devolucion td ON dc.TipDevCod=td.TipDevCod AND td.EstRegCod='A'
					INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod = dc.FacComCabCod-- AND dv.EstRegCod='A'
					INNER JOIN en_p4t_factura_compra_det fcd ON fcd.FacComCabCod=fcc.FacComCabCod
					INNER JOIN en_p2m_producto pp ON fcd.ProCod=pp.ProCod AND pp.ProCod=idProducto
					
				)
				
				UNION ALL
				(
					SELECT 
						dv.DevVenFec fecha,
						dv.DevVenNewFac numero_factura,
						pp.ProDet producto,
						fvd.FacVenDetCan cantidad_entrada,
						fvd.FacVenDetValUni precio_unitario_entrada,
						(SELECT cantidad_entrada*precio_unitario_entrada) precio_total_entrada,
						0 cantidad_salida,
						0 precio_unitario_salida,
						0 precio_total_salida,
						td.TipDevDet tipo_operacion,
						'Factura' glosa
						
					FROM en_p1c_devolucion_ventas dv
					INNER JOIN ta_gzz_tipo_devolucion td ON dv.TipDevCod=td.TipDevCod AND td.EstRegCod='A'
					INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod = dv.FacVenCabCod-- AND dv.EstRegCod='A'
					INNER JOIN en_p1t_factura_venta_det fvd ON fvd.FacVenCabCod=fvc.FacVenCabCod
					INNER JOIN en_p2m_producto pp ON fvd.ProCod=pp.ProCod AND pp.ProCod=idProducto
					
				)
			) a WHERE a.fecha>@fechaInventario
            ORDER BY a.fecha,a.numero_factura
		) ;
		
      
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

/* PROCEDURE evaluacion_preventa */

DROP PROCEDURE IF EXISTS `evaluacion_preventa`;
DROP EVENT IF EXISTS `evaluacionAutomaticaPreventas`;
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
	pvc.PreVenCabFecEmi,
    (SELECT DATE_ADD(pvc.PreVenCabFecEmi,INTERVAL pvc.PreVenCabPla DAY)) tiempoFin
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
			WHERE month(fcc.FacComCabFecEmi)=1 AND year(fcc.FacComCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Febrero'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFecEmi)=2 AND year(fcc.FacComCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Marzo'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFecEmi)=3 AND year(fcc.FacComCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Abril'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFecEmi)=4 AND year(fcc.FacComCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Mayo'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFecEmi)=5 AND year(fcc.FacComCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Junio'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFecEmi)=6 AND year(fcc.FacComCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Julio'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFecEmi)=7 AND year(fcc.FacComCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Agosto'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFecEmi)=8 AND year(fcc.FacComCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Septiembre'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFecEmi)=9 AND year(fcc.FacComCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Octubre'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFecEmi)=10 AND year(fcc.FacComCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Noviembre'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFecEmi)=11 AND year(fcc.FacComCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Diciembre'mes,
				sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
			FROM  en_p4t_factura_compra_det fcd 
			INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
			WHERE month(fcc.FacComCabFecEmi)=12 AND year(fcc.FacComCabFecEmi)=@anhoActual
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
			WHERE month(fvc.FacVenCabFecEmi)=1 AND year(fvc.FacVenCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Febrero'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFecEmi)=2 AND year(fvc.FacVenCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Marzo'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFecEmi)=3 AND year(fvc.FacVenCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Abril'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFecEmi)=4 AND year(fvc.FacVenCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Mayo'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFecEmi)=5 AND year(fvc.FacVenCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Junio'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFecEmi)=6 AND year(fvc.FacVenCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Julio'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFecEmi)=7 AND year(fvc.FacVenCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Agosto'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFecEmi)=8 AND year(fvc.FacVenCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Septiembre'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFecEmi)=9 AND year(fvc.FacVenCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Octubre'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFecEmi)=10 AND year(fvc.FacVenCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Noviembre'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFecEmi)=11 AND year(fvc.FacVenCabFecEmi)=@anhoActual
		)
		UNION ALL
		(
			SELECT 
				'Diciembre'mes,
				sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
			FROM  en_p1t_factura_venta_det fvd 
			INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
			WHERE month(fvc.FacVenCabFecEmi)=12 AND year(fvc.FacVenCabFecEmi)=@anhoActual
		)
    ) p
    WHERE p.mes=t.mes;


END $$
DELIMITER ;

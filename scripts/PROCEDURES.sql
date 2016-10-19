DELIMITER $$
CREATE  PROCEDURE `kardex_prom_ponderado`(IN idProducto CHAR(15)
)
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
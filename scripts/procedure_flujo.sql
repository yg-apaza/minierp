DELIMITER $$
CREATE  PROCEDURE `flujo_efectivo`(IN fec_ini DATE, fec_fin DATE
)
BEGIN

BEGIN
SET @anhoActual:=year(now());

SELECT 
	t.mes,
    ( 
				CASE 
					WHEN ISNULL(t.montoCompra) THEN (SELECT 0)
					ELSE (SELECT t.montoCompra)
                    
                END 
				
            ) montoCompra,
    ( 
				CASE 
					WHEN ISNULL(p.montoVenta) THEN (SELECT 0)
					ELSE (SELECT p.montoVenta)
                    
                END 
				
            ) montoVenta
FROM
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
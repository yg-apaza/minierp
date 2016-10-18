DELIMITER $$
CREATE  PROCEDURE `flujo_efectivo`(IN fec_ini DATE, fec_fin DATE
)
BEGIN


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
				WHERE month(fcc.FacComCabFec)=1
			)
			UNION ALL
			(
				SELECT 
					'Febrero'mes,
					sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
				FROM  en_p4t_factura_compra_det fcd 
				INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
				WHERE month(fcc.FacComCabFec)=2
			)
			UNION ALL
			(
				SELECT 
					'Marzo'mes,
					sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
				FROM  en_p4t_factura_compra_det fcd 
				INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
				WHERE month(fcc.FacComCabFec)=3
			)
			UNION ALL
			(
				SELECT 
					'Abril'mes,
					sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
				FROM  en_p4t_factura_compra_det fcd 
				INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
				WHERE month(fcc.FacComCabFec)=4
			)
			UNION ALL
			(
				SELECT 
					'Mayo'mes,
					sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
				FROM  en_p4t_factura_compra_det fcd 
				INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
				WHERE month(fcc.FacComCabFec)=5
			)
			UNION ALL
			(
				SELECT 
					'Junio'mes,
					sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
				FROM  en_p4t_factura_compra_det fcd 
				INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
				WHERE month(fcc.FacComCabFec)=6
			)
			UNION ALL
			(
				SELECT 
					'Julio'mes,
					sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
				FROM  en_p4t_factura_compra_det fcd 
				INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
				WHERE month(fcc.FacComCabFec)=7
			)
			UNION ALL
			(
				SELECT 
					'Agosto'mes,
					sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
				FROM  en_p4t_factura_compra_det fcd 
				INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
				WHERE month(fcc.FacComCabFec)=8
			)
			UNION ALL
			(
				SELECT 
					'Septiembre'mes,
					sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
				FROM  en_p4t_factura_compra_det fcd 
				INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
				WHERE month(fcc.FacComCabFec)=9
			)
			UNION ALL
			(
				SELECT 
					'Octubre'mes,
					sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
				FROM  en_p4t_factura_compra_det fcd 
				INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
				WHERE month(fcc.FacComCabFec)=10
			)
			UNION ALL
			(
				SELECT 
					'Noviembre'mes,
					sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
				FROM  en_p4t_factura_compra_det fcd 
				INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
				WHERE month(fcc.FacComCabFec)=11
			)
			UNION ALL
			(
				SELECT 
					'Diciembre'mes,
					sum(fcd.FacComDetValUni*fcd.FacComDetCan) montoCompra
				FROM  en_p4t_factura_compra_det fcd 
				INNER JOIN en_p4m_factura_compra_cab fcc ON fcc.FacComCabCod=fcd.FacComCabCod AND fcc.EstRegCod='A'
				WHERE month(fcc.FacComCabFec)=12
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
				WHERE month(fvc.FacVenCabFec)=1
			)
			UNION ALL
			(
				SELECT 
					'Febrero'mes,
					sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
				FROM  en_p1t_factura_venta_det fvd 
				INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
				WHERE month(fvc.FacVenCabFec)=2
			)
			UNION ALL
			(
				SELECT 
					'Marzo'mes,
					sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
				FROM  en_p1t_factura_venta_det fvd 
				INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
				WHERE month(fvc.FacVenCabFec)=3
			)
			UNION ALL
			(
				SELECT 
					'Abril'mes,
					sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
				FROM  en_p1t_factura_venta_det fvd 
				INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
				WHERE month(fvc.FacVenCabFec)=4
			)
			UNION ALL
			(
				SELECT 
					'Mayo'mes,
					sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
				FROM  en_p1t_factura_venta_det fvd 
				INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
				WHERE month(fvc.FacVenCabFec)=5
			)
			UNION ALL
			(
				SELECT 
					'Junio'mes,
					sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
				FROM  en_p1t_factura_venta_det fvd 
				INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
				WHERE month(fvc.FacVenCabFec)=6
			)
			UNION ALL
			(
				SELECT 
					'Julio'mes,
					sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
				FROM  en_p1t_factura_venta_det fvd 
				INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
				WHERE month(fvc.FacVenCabFec)=7
			)
			UNION ALL
			(
				SELECT 
					'Agosto'mes,
					sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
				FROM  en_p1t_factura_venta_det fvd 
				INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
				WHERE month(fvc.FacVenCabFec)=8
			)
			UNION ALL
			(
				SELECT 
					'Septiembre'mes,
					sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
				FROM  en_p1t_factura_venta_det fvd 
				INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
				WHERE month(fvc.FacVenCabFec)=9
			)
			UNION ALL
			(
				SELECT 
					'Octubre'mes,
					sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
				FROM  en_p1t_factura_venta_det fvd 
				INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
				WHERE month(fvc.FacVenCabFec)=10
			)
			UNION ALL
			(
				SELECT 
					'Noviembre'mes,
					sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
				FROM  en_p1t_factura_venta_det fvd 
				INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
				WHERE month(fvc.FacVenCabFec)=11
			)
			UNION ALL
			(
				SELECT 
					'Diciembre'mes,
					sum(fvd.FacVenDetValUni*fvd.FacVenDetCan) montoVenta
				FROM  en_p1t_factura_venta_det fvd 
				INNER JOIN en_p1m_factura_venta_cab fvc ON fvc.FacVenCabCod=fvd.FacVenCabCod AND fvc.EstRegCod='A'
				WHERE month(fvc.FacVenCabFec)=12
			)
    ) p
    WHERE p.mes=t.mes;
END $$

DELIMITER ;
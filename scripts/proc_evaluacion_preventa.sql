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
SET pvc.EstRegCod = 'I';

UPDATE preventasVencidas pv
INNER JOIN en_p2m_producto pp ON pp.ProCod=pv.ProCod
SET pp.ProStkPreVen = pp.ProStkPreVen+pv.totalxprod;

DROP TABLE preventasIngresadas;
DROP TABLE preventasVencidas;

END $$
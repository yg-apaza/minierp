CREATE OR REPLACE VIEW VIEW_CAJA_BANCOS AS
	
	(SELECT en_p3m_asiento_cab.LibDiaCod,
			en_p3m_asiento_cab.AsiCabCod,
			en_p3t_asiento_det.AsiDetCod,
            
			en_p3m_asiento_cab.AsiCabFec,
			en_p3m_asiento_cab.AsiCabTip,
			
			en_p3t_asiento_det.CueCod,
			en_p3m_cuenta.CueDes,
            en_p3m_cuenta_banco.CueBanNum,

			en_p3t_asiento_det.AsiDetMon AS Debe,
			'' AS Haber
		FROM (en_p3m_asiento_cab 
			JOIN en_p3t_asiento_det ON en_p3m_asiento_cab.LibDiaCod = en_p3t_asiento_det.LibDiaCod
			JOIN en_p3m_cuenta ON en_p3t_asiento_det.CueCod = en_p3m_cuenta.CueCod
            JOIN en_p3m_cuenta_banco ON en_p3m_cuenta.CueCod = en_p3m_cuenta_banco.CueCod)
		WHERE en_p3t_asiento_det.AsiDetDebHab = '0'
	)
    UNION
	(
	SELECT  en_p3m_asiento_cab.LibDiaCod,
			en_p3m_asiento_cab.AsiCabCod,
			en_p3t_asiento_det.AsiDetCod,
            
			en_p3m_asiento_cab.AsiCabFec,
			en_p3m_asiento_cab.AsiCabTip,
			
			en_p3t_asiento_det.CueCod,
			en_p3m_cuenta.CueDes,
            en_p3m_cuenta_banco.CueBanNum,
            
			'' AS debe,
			en_p3t_asiento_det.AsiDetMon AS haber
		FROM (en_p3m_asiento_cab 
			JOIN en_p3t_asiento_det ON en_p3m_asiento_cab.LibDiaCod = en_p3t_asiento_det.LibDiaCod
			JOIN en_p3m_cuenta ON en_p3t_asiento_det.CueCod = en_p3m_cuenta.CueCod
            JOIN en_p3m_cuenta_banco ON en_p3m_cuenta.CueCod = en_p3m_cuenta_banco.CueCod)
		WHERE en_p3t_asiento_det.AsiDetDebHab = '1'
	) ORDER BY AsiDetCod ASC;

CREATE OR REPLACE VIEW VIEW_BANCOS_SWAP AS(
		(SELECT CueDes AS CueDes FROM VIEW_CAJA_BANCOS 
					WHERE AsiDetCod = (SELECT AsiDetCod-1 AS AsiDet
								FROM VIEW_CAJA_BANCOS WHERE CueCod = '104' 
														OR CueCod = '1041' 
                                                        OR CueCod = '10411' 
                                                        OR CueCod = '10412'
                                                        OR CueCod = '10413'))
);
CREATE OR REPLACE VIEW VIEW_BANCOS AS
		SELECT `VIEW_CAJA_BANCOS`.`LibDiaCod` AS `LibDiaCod`,
        `VIEW_CAJA_BANCOS`.`AsiCabCod` AS `AsiCabCod`,
        `VIEW_CAJA_BANCOS`.`AsiDetCod` AS `AsiDetCod`,
        `VIEW_CAJA_BANCOS`.`AsiCabFec` AS `AsiCabFec`,
        `VIEW_CAJA_BANCOS`.`AsiCabTip` AS `AsiCabTip`,
        `VIEW_CAJA_BANCOS`.`CueBanNum` AS `CueBanNum`,
        `VIEW_CAJA_BANCOS`.`CueCod` AS `CueCod`,
        `VIEW_BANCOS_SWAP`.`CueDes` AS `CueDes`,
        `VIEW_CAJA_BANCOS`.`Debe` AS `Debe`,
        `VIEW_CAJA_BANCOS`.`Haber` AS `Haber`
        FROM VIEW_BANCOS_SWAP 
		JOIN VIEW_CAJA_BANCOS
        WHERE CueCod = '104' 
			OR CueCod = '1041' 
			OR CueCod = '10411' 
			OR CueCod = '10412'
			OR CueCod = '10413'
		ORDER BY AsiCabFec ASC;

CREATE OR REPLACE VIEW VIEW_CAJA_SWAP AS(
		(SELECT CueDes AS CueDes FROM VIEW_CAJA_BANCOS 
					WHERE AsiDetCod = (SELECT AsiDetCod-1 AS AsiDet
								FROM VIEW_CAJA_BANCOS WHERE CueCod = '10'))
);
CREATE OR REPLACE VIEW VIEW_CAJA AS
		SELECT `VIEW_CAJA_BANCOS`.`LibDiaCod` AS `LibDiaCod`,
        `VIEW_CAJA_BANCOS`.`AsiCabCod` AS `AsiCabCod`,
        `VIEW_CAJA_BANCOS`.`AsiDetCod` AS `AsiDetCod`,
        `VIEW_CAJA_BANCOS`.`AsiCabFec` AS `AsiCabFec`,
        `VIEW_CAJA_BANCOS`.`AsiCabTip` AS `AsiCabTip`,
        `VIEW_CAJA_BANCOS`.`CueCod` AS `CueCod`,
        `VIEW_CAJA_SWAP`.`CueDes` AS `CueDes`,
        `VIEW_CAJA_BANCOS`.`Debe` AS `Debe`,
        `VIEW_CAJA_BANCOS`.`Haber` AS `Haber`
        FROM VIEW_CAJA_SWAP 
		JOIN VIEW_CAJA_BANCOS
        WHERE CueCod = '10'
ORDER BY AsiCabFec ASC;

CREATE OR REPLACE VIEW VIEW_LIBRO_DIARIO AS (
	SELECT
		libDia.LibDiaCod,
		asiCab.AsiCabCod,
		asiDet.AsiDetCod,
		cue.CueNum, 
		cue.CueDes,
		asiDet.AsiDetDebHab, 
		asiDet.AsiDetMon,
		asiCab.AsiCabFec,
		libDia.EstRegCod
	FROM en_p3t_asiento_det asiDet
		INNER JOIN en_p3m_cuenta cue
			ON asiDet.CueCod = cue.CueCod
		INNER JOIN en_p3m_asiento_cab asiCab
			ON asiDet.AsiCabCod = asiCab.AsiCabCod
		INNER JOIN en_p3m_libro_diario libDia
			ON libDia.LibDiaCod = asiCab.LibDiaCod
	WHERE libDia.EstRegCod = 'A'
	ORDER BY asiCab.AsiCabFec
);

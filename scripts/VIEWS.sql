CREATE OR REPLACE VIEW VIEW_CAJA AS (
	SELECT
		libDia.LibDiaCod,
		asiCab.AsiCabCod,
		asiDet.AsiDetCod,
		cue.CueNum, 
		cue.CueDes,
        cue.CueCod,
		asiDet.AsiDetDebHab as estado, 
		asiDet.AsiDetMon,
		asiCab.AsiCabFec,
        asiDet.AsiDetMon AS debe,
        asiDet.AsiDetMon AS haber,
		libDia.EstRegCod
	FROM en_p3t_asiento_det asiDet
		INNER JOIN en_p3m_cuenta cue
			ON asiDet.CueCod = cue.CueCod
		INNER JOIN en_p3m_asiento_cab asiCab
			ON asiDet.AsiCabCod = asiCab.AsiCabCod
		INNER JOIN en_p3m_libro_diario libDia
			ON libDia.LibDiaCod = asiCab.LibDiaCod
	WHERE libDia.EstRegCod = 'A' AND CueNum = '101'
	ORDER BY asiCab.AsiCabFec
);
CREATE OR REPLACE VIEW VIEW_BANCOS AS (
	SELECT
		libDia.LibDiaCod,
		asiCab.AsiCabCod,
		asiDet.AsiDetCod,
		cue.CueNum, 
		cue.CueDes,
        cue.CueCod,
		asiDet.AsiDetDebHab as estado, 
		asiDet.AsiDetMon,
		asiCab.AsiCabFec,
        asiDet.AsiDetMon AS debe,
        asiDet.AsiDetMon AS haber,
		libDia.EstRegCod,
        '1' as AsiCabTip,
        cueBan.CueBanNum
	FROM en_p3t_asiento_det asiDet
		INNER JOIN en_p3m_cuenta cue
			ON asiDet.CueCod = cue.CueCod
		INNER JOIN en_p3m_asiento_cab asiCab
			ON asiDet.AsiCabCod = asiCab.AsiCabCod
		INNER JOIN en_p3m_libro_diario libDia
			ON libDia.LibDiaCod = asiCab.LibDiaCod
		INNER JOIN en_p3m_cuenta_banco cueBan
			ON cue.CueCod = cueBan.CueCod
	WHERE libDia.EstRegCod = 'A' AND CueNum = '104' 
			OR CueNum = '1041' 
			OR CueNum = '10411' 
			OR CueNum = '10412'
			OR CueNum = '10413'
	ORDER BY asiCab.AsiCabFec
);
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

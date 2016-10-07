CREATE OR REPLACE VIEW LibroDiario AS (
	SELECT
		libDia.LibDiaCod,
		asiCab.AsiCabCod,
		asiDet.AsiDetCod,
		cue.CueNum, 
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
)
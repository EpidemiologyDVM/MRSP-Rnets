SELECT 
	Isolate_ID,
	mecA_result = 'positive' AS mecA,
    MIC_long.Content AS Drug,
    MIC_long.MIC_newlog AS MIC
FROM copos_staph.mecA
LEFT OUTER JOIN MIC_long
	USING (Isolate_ID)
WHERE mecA_result != '' 
MecA_MICs_Long <- dbGetQuery(STAPH_DB_CXN,"
	SELECT 
		Isolate_ID,
		IF (mecA_Repeat = '', mecA_result = 'positive', mecA_Repeat = 'positive') AS MecA,
	 	MIC_long.Content AS Drug,
		CAST(MIC_long.MIC_newlog AS SIGNED) AS MIC,
		master_table.Sample_Source AS Source
	FROM copos_staph.mecA
	INNER JOIN MIC_long
		USING (Isolate_ID)
	LEFT OUTER JOIN master_table
		USING (Isolate_ID)
	WHERE mecA_result != '' 
		AND master_table.Species = 6 
		AND master_table.Organism != 'S.AUR'
	;")

IsolateID2PID <- dbGetQuery(STAPH_DB_CXN,"
	SELECT Patient_Frame.*
	FROM Patient_Frame
	;")

MecA_MICs_Wide <- reshape(MecA_MICs_Long,
                          idvar = 'Isolate_ID',
                          timevar = 'Drug',
                          v.names = 'MIC',
                          sep = '',
                          dir = 'w'
)

MecA_MICs_Wide$Source <- factor(
  sapply(MecA_MICs_Wide$Source, switch, SK = 1, URINE = 2, 3),
  levels = 1:3,
  c('Skin', 'Urine', 'Other')
)

names(MecA_MICs_Wide) <- gsub('MIC', '', names(MecA_MICs_Wide))

ABX_SET <- c('AMIKAC',
              'CLINDA',
              'DOXYCY',
              'ENROFL',
              'ERYTH',
              'GENTAM',
              'MARBOF',
              'TRISUL'
              )
MRSP.data <- MecA_MICs_Wide[,match(c('MecA', 'Source', ABX_SET),names(MecA_MICs_Wide))]


MRSP.data <- MRSP.data[apply(MRSP.data, 1, function(x) {return(all(!is.na(x)))}),]
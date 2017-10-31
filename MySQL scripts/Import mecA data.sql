DROP TABLE IF EXISTS copos_staph.mecA;
CREATE TABLE copos_staph.mecA2 
(	Spec_Num VARCHAR(12),
	Isolate_ID BIGINT,
	Isolate INT,
	Last_Read_Time VARCHAR(20),
	MecA_Result VARCHAR(8),
	MecA_Repeat VARCHAR(8)
    );
LOAD DATA INFILE 'c:/Users/Will/Google Drive/NCSU Coagpos staph/Data/Original/mecA Data.csv'
	INTO TABLE copos_staph.mecA
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED '\r\n'
    IGNORE 1 lines;
	

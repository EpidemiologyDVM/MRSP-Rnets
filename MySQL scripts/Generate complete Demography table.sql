DROP TABLE IF EXISTS copos_staph.Patient_generic;
CREATE TABLE copos_staph.Patient_generic	(PATIENT_ID BIGINT,
		PATIENT_NAME VARCHAR(64),
        BIRTHDATE VARCHAR(10),
        WEIGHT_KG float,
        WEIGHT_DATE VARCHAR(10),
        SPECIES VARCHAR(8),
        BREED VARCHAR(64),
        SEX VARCHAR(4)
        );

DROP TABLE IF EXISTS copos_staph.Patient_C;
CREATE TABLE copos_staph.Patient_C LIKE Patient_generic;
LOAD DATA LOCAL INFILE 'C:/Users/wjlove/Google Drive/NCSU Coagpos staph/Data/Original/Patient Search_C (w_love).csv'
	INTO TABLE Patient_C
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    IGNORE 2 LINES;
    
DROP TABLE IF EXISTS copos_staph.Patient_D;
CREATE TABLE copos_staph.Patient_D LIKE Patient_generic;
LOAD DATA LOCAL INFILE 'C:/Users/wjlove/Google Drive/NCSU Coagpos staph/Data/Original/Patient Search_D (w_love).csv'
	INTO TABLE Patient_D
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    IGNORE 2 LINES;
    
DROP TABLE IF EXISTS copos_staph.Patient_demogs;
CREATE TABLE copos_staph.Patient_demogs
	SELECT * 
    FROM (SELECT * FROM Patient_C WHERE PATIENT_ID >1000 
			UNION ALL 
			SELECT * FROM Patient_D	WHERE PATIENT_ID >1000) AS A
	GROUP BY PATIENT_ID;
				

DROP TABLE IF EXISTS copos_staph.Patient_generic;
DROP TABLE IF EXISTS copos_staph.Patient_C;
DROP TABLE IF EXISTS copos_staph.Patient_D;
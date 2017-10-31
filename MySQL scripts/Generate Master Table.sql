
USE copos_staph;
DROP TABLE IF EXISTS generic;
CREATE TABLE generic (Data_Export_ID INTEGER,
	Isolate_ID INT,
    PID VARCHAR(10),
    Last_Name VARCHAR(20),
    First_Name VARCHAR(20),
    Middle_Name VARCHAR(20),
    Spec_Num VARCHAR(20),
    Isolate CHAR(1),
    Spec_Num_Vet INT,
    Organism VARCHAR(10),
    Sample_Source VARCHAR(10),
    Species VARCHAR(3),
    DOB DATE,
    Age INT,
    Sex VARCHAR(10),
    Ward VARCHAR(10),
    Request_Phys VARCHAR(10),
    Princip_Phys VARCHAR(10),
    Sample_Duplicate CHAR(1),
    Nosocomial CHAR(1),
    Spec_Date_1 CHAR(1),
    Spec_Date_2 CHAR(1),
    Beta_Lactamase CHAR(1),
    Pat_Var_1 CHAR(1),
    Pat_Var_2 CHAR(1),
    Pat_Var_3 CHAR(1),
    Pat_Var_4 CHAR(1),
    Pat_Var_5 CHAR(1),
    Pat_Var_6 CHAR(1),
    Spec_Var_1 CHAR(1),
    Spec_Var_2 CHAR(1),
    Spec_Var_3 CHAR(1),
    Spec_Var_4 CHAR(1),
    Spec_Var_5 CHAR(1),
    Spec_Var_6 CHAR(1),
    Iso_Var_1 CHAR(1),
    Iso_Var_2 CHAR(1),
    Iso_Var_3 CHAR(1),
    Iso_Var_4 CHAR(1),
    Last_Read_Time DATETIME,
    Content01 VARCHAR(10),
    MIC01 VARCHAR(10),
    Interp01 VARCHAR(10),
    Content02 VARCHAR(10),
    MIC02 VARCHAR(10),
    Interp02 VARCHAR(10),
    Content03 VARCHAR(10),
    MIC03 VARCHAR(10),
    Interp03 VARCHAR(10),
    Content04 VARCHAR(10),
    MIC04 VARCHAR(10),
    Interp04 VARCHAR(10),
    Content05 VARCHAR(10),
    MIC05 VARCHAR(10),
    Interp05 VARCHAR(10),
    Content06 VARCHAR(10),
    MIC06 VARCHAR(10),
    Interp06 VARCHAR(10),
    Content07 VARCHAR(10),
    MIC07 VARCHAR(10),
    Interp07 VARCHAR(10),
    Content08 VARCHAR(10),
    MIC08 VARCHAR(10),
    Interp08 VARCHAR(10),
    Content09 VARCHAR(10),
    MIC09 VARCHAR(10),
    Interp09 VARCHAR(10),
    Content10 VARCHAR(10),
    MIC10 VARCHAR(10),
    Interp10 VARCHAR(10),
    Content11 VARCHAR(10),
    MIC11 VARCHAR(10),
    Interp11 VARCHAR(10),
    Content12 VARCHAR(10),
    MIC12 VARCHAR(10),
    Interp12 VARCHAR(10),
    Content13 VARCHAR(10),
    MIC13 VARCHAR(10),
    Interp13 VARCHAR(10),
    Content14 VARCHAR(10),
    MIC14 VARCHAR(10),
    Interp14 VARCHAR(10),
    Content15 VARCHAR(10),
    MIC15 VARCHAR(10),
    Interp15 VARCHAR(10),
    Content16 VARCHAR(10),
    MIC16 VARCHAR(10),
    Interp16 VARCHAR(10),
    Content17 VARCHAR(10),
    MIC17 VARCHAR(10),
    Interp17 VARCHAR(10),
    Content18 VARCHAR(10),
    MIC18 VARCHAR(10),
    Interp18 VARCHAR(10),
    Content19 VARCHAR(10),
    MIC19 VARCHAR(10),
    Interp19 VARCHAR(10),
    Content20 VARCHAR(10),
    MIC20 VARCHAR(10),
    Interp20 VARCHAR(10),
    Content21 VARCHAR(10),
    MIC21 VARCHAR(10),
    Interp21 VARCHAR(10),
    Content22 VARCHAR(10),
    MIC22 VARCHAR(10),
    Interp22 VARCHAR(10),
    Content23 VARCHAR(10),
    MIC23 VARCHAR(10),
    Interp23 VARCHAR(10),
    Content24 VARCHAR(10),
    MIC24 VARCHAR(10),
    Interp24 VARCHAR(10),
    Content25 VARCHAR(10),
    MIC25 VARCHAR(10),
    Interp25 VARCHAR(10),
    Content26 VARCHAR(10),
    MIC26 VARCHAR(10),
    Interp26 VARCHAR(10),
    Content27 VARCHAR(10),
    MIC27 VARCHAR(10),
    Interp27 VARCHAR(10)
);

/* Create Staph Aureus Table */
DROP TABLE IF EXISTS staph_aureus;
CREATE TABLE staph_aureus LIKE generic;
LOAD DATA LOCAL INFILE 'c:/Users/atrey/Documents/StaAureus.csv'
	INTO TABLE staph_aureus
    FIELDS TERMINATED BY ','ENCLOSED BY '"'
    IGNORE 1 lines;

/*Create Staph Pseudintermedius Table */
DROP TABLE IF EXISTS staph_pseud;
CREATE TABLE staph_pseud LIKE generic;
LOAD DATA LOCAL INFILE 'c:/Users/atrey/Documents/StaPseud.csv'
	INTO TABLE staph_pseud
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    IGNORE 1 lines;

/* Append Staph Tables */
DROP TABLE IF EXISTS master_table;
CREATE TABLE master_table
	SELECT * FROM staph_aureus
	UNION ALL
	SELECT * FROM staph_pseud;

SET SQL_SAFE_UPDATES=0;
ALTER TABLE master_table
	ADD Last_Date VARCHAR(30);
UPDATE master_table
SET Last_Date = DATE_FORMAT(master_table.Last_Read_Time, '%m-%d-%y');
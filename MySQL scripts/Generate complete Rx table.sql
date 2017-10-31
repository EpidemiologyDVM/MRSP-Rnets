DROP TABLE IF EXISTS copos_staph.Rx_generic;
CREATE TABLE copos_staph.Rx_generic	(PATIENT_ID VARCHAR(8),
		PATIENT_NAME VARCHAR(32),
		ORDER_ID int,
        ORDER_ITEM_DATETIME VARCHAR(10),
        PRODUCT_LINE_ID smallint,
        PRODUCT_SEQ_ID SMALLINT,
        SHORT_DESCRIPTION VARCHAR(64)
        );

DROP TABLE IF EXISTS copos_staph.Rx_C;
CREATE TABLE copos_staph.Rx_C LIKE Rx_generic;
LOAD DATA LOCAL INFILE 'C:/Users/wjlove/Google Drive/NCSU Coagpos staph/Data/Original/Patient Drug Search_C (w_love).csv'
	INTO TABLE Rx_C
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\r\n'
    IGNORE 2 LINES;
    
DROP TABLE IF EXISTS copos_staph.Rx_D;
CREATE TABLE copos_staph.Rx_D LIKE Rx_generic;
LOAD DATA LOCAL INFILE 'C:/Users/wjlove/Google Drive/NCSU Coagpos staph/Data/Original/Patient Drug Search_D (w_love).csv'
	INTO TABLE Rx_D
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\r\n'
    IGNORE 2 LINES; 
    
DROP TABLE IF EXISTS copos_staph.Rx_complete;
CREATE TABLE Rx_complete 
	SELECT * FROM Rx_C
    UNION ALL
    SELECT * FROM Rx_D;
    
DROP TABLE IF EXISTS copos_staph.Rx_generic;
DROP TABLE IF EXISTS copos_staph.Rx_C;
DROP TABLE IF EXISTS copos_staph.Rx_D;
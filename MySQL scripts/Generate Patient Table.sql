DROP TABLE IF EXISTS patient_info;
CREATE TABLE patient_info (PID INT, 
	patient_name VARCHAR(30), DOB DATE, weight DEC(3,1), weight_date DATE, species VARCHAR(10), breed VARCHAR(35), sex VARCHAR(3)
    );
LOAD DATA LOCAL INFILE 'c:/Users/atrey/Documents/Patient Search_B.csv'
	INTO TABLE patient_info
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    IGNORE 1 lines;

DROP TABLE IF EXISTS patient_drug;
CREATE TABLE patient_drug (PID INT, 
patient_name VARCHAR(30), order_id INT, order_date DATE, prod_line_id INT, prod_seq_id INT, drug_info VARCHAR(45)
);
LOAD DATA LOCAL INFILE 'c:/Users/atrey/Documents/Patient Drug Search_B.csv'
	INTO TABLE patient_drug
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    IGNORE 1 lines;

DROP TABLE IF EXISTS patient_numbers;
CREATE TABLE patient_numbers (PID VARCHAR(10),
Isolate_ID INT, Spec_Num INT, Last_Read_Time VARCHAR(30), Accession_Num VARCHAR(30), Hosp_Num INT);
LOAD DATA LOCAL INFILE 'c:/Users/atrey/Documents/patient_spreadsheet_corrected.csv'
	INTO TABLE patient_numbers
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    IGNORE 1 lines;
    
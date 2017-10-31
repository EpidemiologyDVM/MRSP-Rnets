CREATE TABLE master_patient_table
SELECT * FROM copos_staph.master_table
	LEFT OUTER JOIN copos_staph.patient_numbers
    ON master_table.Isolate_ID = patient_numbers.Isolate_ID2
    LEFT OUTER JOIN copos_staph.patient_info
    ON patient_numbers.Hosp_Num = patient_info.PID3
    ;
   # INTO OUTFILE 'C:/Users/atrey/Documents/mastertablecomplete.csv'
   # FIELDS TERMINATED BY ','
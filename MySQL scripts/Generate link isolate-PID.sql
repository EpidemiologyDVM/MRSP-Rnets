DROP TABLE IF EXISTS Patient_Frame;
CREATE TABLE Patient_Frame
	SELECT * FROM (
		SELECT master_table.Isolate_ID,	patient_numbers.Hosp_Num AS Patient_ID FROM master_table
			LEFT JOIN patient_numbers ON master_table.Spec_Num = patient_numbers.Spec_Num2
			GROUP BY Isolate_ID
			HAVING Patient_ID IS NOT NULL
		UNION ALL
		SELECT Isolate_ID, CAST(PID AS unsigned) AS Patient_ID FROM master_table
			WHERE PID NOT IN ('')
            ) AS A
	GROUP BY Isolate_ID, Patient_ID
;

SELECT * FROM Patient_Frame
ORDER BY Isolate_ID;

SELECT 
	master_table.Isolate_ID,
    master_table.PID,
    master_table.Spec_Num,
    Patient_Frame.Patient_ID,
	master_table.Organism,
    master_table.Isolate,
    Patient_demogs.*
FROM master_table
LEFT JOIN Patient_Frame
	USING (Isolate_ID)
LEFT JOIN Patient_demogs
	ON Patient_Frame.Patient_ID = Patient_demogs.PATIENT_ID
WHERE Patient_demogs.PATIENT_ID IS NOT NULL
;
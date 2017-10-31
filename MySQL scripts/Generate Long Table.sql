USE copos_staph; 
DROP TABLE IF EXISTS MIC_long;
CREATE TABLE MIC_long
	SELECT PID, Isolate_ID, Organism, Content01 AS Content, MIC01 AS MIC, Interp01 AS Interp FROM master_table
	WHERE MIC01 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content02, MIC02, Interp02 FROM master_table
	WHERE MIC02 NOT IN ("")
	UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content03, MIC03, Interp03 FROM master_table
	WHERE MIC03 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content04, MIC04, Interp04 FROM master_table
	WHERE MIC04 NOT IN ("")
	UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content05, MIC05, Interp05 FROM master_table
	WHERE MIC05 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content06, MIC06, Interp06 FROM master_table
	WHERE MIC06 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content07, MIC07, Interp07 FROM master_table
	WHERE MIC07 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content08, MIC08, Interp08 FROM master_table
	WHERE MIC08 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content09, MIC09, Interp09 FROM master_table
	WHERE MIC09 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content10, MIC10, Interp10 FROM master_table
	WHERE MIC10 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content11, MIC11, Interp11 FROM master_table
	WHERE MIC11 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content12, MIC12, Interp12 FROM master_table
	WHERE MIC12 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content13, MIC13, Interp13 FROM master_table
	WHERE MIC13 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content14, MIC14, Interp14 FROM master_table
	WHERE MIC14 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content15, MIC15, Interp15 FROM master_table
	WHERE MIC15 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content16, MIC16, Interp16 FROM master_table
	WHERE MIC16 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content17, MIC17, Interp17 FROM master_table
	WHERE MIC17 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content18, MIC18, Interp18 FROM master_table
	WHERE MIC18 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content19, MIC19, Interp19 FROM master_table
	WHERE MIC19 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content20, MIC20, Interp20 FROM master_table
	WHERE MIC20 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content21, MIC21, Interp21 FROM master_table
	WHERE MIC21 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content22, MIC22, Interp22 FROM master_table
	WHERE MIC22 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content23, MIC23, Interp23 FROM master_table
	WHERE MIC23 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content24, MIC24, Interp24 FROM master_table
	WHERE MIC24 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content25, MIC25, Interp25 FROM master_table
	WHERE MIC25 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content26, MIC26, Interp26 FROM master_table
	WHERE MIC26 NOT IN ("")
    UNION ALL 
    SELECT PID, Isolate_ID, Organism, Content27, MIC27, Interp27 FROM master_table
	WHERE MIC27 NOT IN ("");
    
DELETE FROM MIC_long
	WHERE Interp IN ("NOMIC"); 

SET SQL_SAFE_UPDATES=0;
ALTER TABLE MIC_long
	ADD MIC_val VARCHAR(5);
UPDATE MIC_long
SET MIC_val = CAST(RIGHT(MIC, 4) AS DECIMAL(5,2));
ALTER TABLE MIC_long
	ADD MIC_log DECIMAL(5,2);
UPDATE MIC_long
SET MIC_log = LOG2(MIC_val);
ALTER TABLE MIC_long
	ADD MIC_symb VARCHAR(5);
UPDATE MIC_long
SET MIC_symb = LEFT(MIC, 2);

ALTER TABLE MIC_long
	ADD MIC_newval VARCHAR(5);
UPDATE MIC_long
SET MIC_newval =
	CASE
    WHEN MIC_symb = ' >' THEN 2*MIC_val
    ELSE MIC_val
    END;

ALTER TABLE MIC_long
	ADD MIC_newlog VARCHAR(5);
UPDATE MIC_long
SET MIC_newlog =
	CASE
    WHEN MIC_symb = ' >' THEN 1+MIC_log
    ELSE MIC_log
    END;
    
ALTER TABLE MIC_long
	ADD MIC_newsymb VARCHAR(2);
UPDATE MIC_long
SET MIC_newsymb =
	CASE 
    WHEN MIC_symb = ' =' THEN '<='
    WHEN MIC_symb = ' <' THEN '<='
    ELSE MIC_symb
    END;
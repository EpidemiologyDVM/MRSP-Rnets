DROP TABLE IF EXISTS copos_staph.drug_info;
CREATE TABLE copos_staph.drug_info LIKE narms_amr.Raw_Drug_Data;
INSERT INTO copos_staph.drug_info SELECT * FROM narms_amr.Raw_Drug_Data;
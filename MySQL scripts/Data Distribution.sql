/*SELECT avg(MIC_log) AS avg_amikac, MIN(MIC_log) AS min_amikac,  MAX(MIC_log) AS max_amikac, stddev(MIC_log) AS stddev_amikac , COUNT(*) AS count_amikac
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'AMIKAC';
SELECT avg(MIC_log) AS avg_amikac, MIN(MIC_log) AS max_amikac,  MAX(MIC_log) AS max_amikac, stddev(MIC_log) AS stddev_amikac, COUNT(*) AS count_amikac
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'AMIKAC';
SELECT avg(MIC_log) AS avg_amikac, MIN(MIC_log) AS max_amikac,  MAX(MIC_log) AS max_amikac, stddev(MIC_log) AS stddev_amikac, COUNT(*) AS count_amikac
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'AMIKAC';

SELECT avg(MIC_log) AS avg_amocla, MIN(MIC_log) AS min_amocla,  MAX(MIC_log) AS max_amocla, stddev(MIC_log) AS stddev_amocla, COUNT(*) AS count_amocla
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'AMOCLA';
SELECT avg(MIC_log) AS avg_amocla, MIN(MIC_log) AS min_amocla,  MAX(MIC_log) AS max_amocla, stddev(MIC_log) AS stddev_amocla, COUNT(*) AS count_amocla
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'AMOCLA';
SELECT avg(MIC_log) AS avg_amocla, MIN(MIC_log) AS min_amocla,  MAX(MIC_log) AS max_amocla, stddev(MIC_log) AS stddev_amocla, COUNT(*) AS count_amocla
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'AMOCLA';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'AMPICI';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'AMPICI';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'AMPICI';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'AZITHR';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'AZITHR';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'AZITHR';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'CEFAZO';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'CEFAZO';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'CEFAZO';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'CEFOVE';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'CEFOVE';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'CEFOVE';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'CEFOXI';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'CEFOXI';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'CEFOXI';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'CEFPOD';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'CEFPOD';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'CEFPOD';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'CEFTAZ';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'CEFTAZ';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'CEFTAZ';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'CEFTIF';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'CEFTIF';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'CEFTIF';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'CEPHAL';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'CEPHAL';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'CEPHAL';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'CHLORA';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'CHLORA';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'CHLORA';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'CLARYT';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'CLARYT';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'CLARYT';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'CLINDA';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'CLINDA';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'CLINDA';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'DOXYCY';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'DOXYCY';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'DOXYCY';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'ENROFL';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'ENROFL';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'ENROFL';*/

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'ERYTH';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'ERYTH';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'ERYTH';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'GENTAM';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'GENTAM';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'GENTAM';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'IMIPEN';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'IMIPEN';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'IMIPEN';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'MARBOF';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'MARBOF';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'MARBOF';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'OXACIL';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'OXACIL';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'OXACIL';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'PENICI';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'PENICI';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'PENICI';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'RIFAMP';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'RIFAMP';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'RIFAMP';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'TETRA';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'TETRA';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'TETRA';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'TICARC';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'TICARC';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'TICARC';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'TICCLA';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'TICCLA';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'TICCLA';

SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.AUR' AND Content = 'TRISUL';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.INT' AND Content = 'TRISUL';
SELECT avg(MIC_log), MIN(MIC_log),  MAX(MIC_log), stddev(MIC_log), COUNT(*)
FROM coagposstaph.mic_long
WHERE Organism = 'S.PSE' AND Content = 'TRISUL';

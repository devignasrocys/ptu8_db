-- ASMENS KODAS PIRMAS LYTS, DU METU, DU MENESIU, DU DIENOS
SELECT * FROM DARBUOTOJAS;
-- SELECT * FROM SKYRIUS;

-- 1
-- SELECT ASMENS_KODAS, VARDAS, PAVARDĖ FROM DARBUOTOJAS WHERE ASMENS_KODAS LIKE "_880720%" OR ASMENS_KODAS LIKE "_880720%";

-- 2
-- SELECT ASMENS_KODAS, VARDAS, PAVARDĖ FROM DARBUOTOJAS WHERE DIRBA_NUO > "2009-10-30" AND DIRBA_NUO < "2012-11-11";

-- 3
-- SELECT VARDAS, SKYRIUS_ID, PROJEKTAS_ID FROM DARBUOTOJAS WHERE SKYRIUS_ID IN (2,3);

-- 4
-- SELECT VARDAS, PAVARDĖ, ASMENS_KODAS FROM DARBUOTOJAS 
--     WHERE ASMENS_KODAS 
--     LIKE "2%"
--     OR 
--     ASMENS_KODAS 
--     LIKE "4%"
--     OR
--     ASMENS_KODAS
--     LIKE "6%"
--     ;

-- 5
-- SELECT * FROM DARBUOTOJAS WHERE ASMENS_KODAS LIKE "_____12%";

-- 6 
-- SELECT * FROM PROJEKTAS WHERE PAVADINIMAS LIKE "_a%";

-- 7
-- SELECT * FROM DARBUOTOJAS WHERE PAREIGOS IS NULL;

-- 8
-- SELECT VARDAS, PAVARDĖ, DIRBA_NUO, PAREIGOS FROM DARBUOTOJAS WHERE DIRBA_NUO > 2011-02-12 AND PAREIGOS="Programuotojas";

-- 9
-- SELECT VARDAS, PAVARDĖ, SKYRIUS_ID, PROJEKTAS_ID FROM DARBUOTOJAS WHERE SKYRIUS_ID="2" OR PROJEKTAS_ID="1";

-- 10
-- SELECT VARDAS FROM DARBUOTOJAS WHERE VARDAS LIKE "A%";

-- 11
-- SELECT VARDAS, PAVARDĖ, DIRBA_NUO FROM DARBUOTOJAS ORDER BY DIRBA_NUO;

-- 12
-- SELECT VARDAS, PAVARDĖ, DIRBA_NUO FROM DARBUOTOJAS ORDER BY DIRBA_NUO DESC;

-- 13
-- SELECT min(PROJEKTAS_ID), max(PROJEKTAS_ID) FROM DARBUOTOJAS;

-- 14
-- SELECT PROJEKTAS_ID, count() FROM DARBUOTOJAS GROUP BY PROJEKTAS_ID; 

-- 15
-- SELECT PROJEKTAS_ID, count() as c FROM DARBUOTOJAS GROUP BY PROJEKTAS_ID HAVING c>3;

-- 16
-- SELECT PROJEKTAS_ID, PAREIGOS, count() as c 
--     FROM DARBUOTOJAS 
--     WHERE PAREIGOS = "Programuotojas"
--     GROUP BY PROJEKTAS_ID;
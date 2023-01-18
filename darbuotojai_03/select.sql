-- SQLite
SELECT * FROM DARBUOTOJAS;
SELECT * FROM PROJEKTAS;
SELECT * FROM SKYRIUS;

-- 1
SELECT VARDAS, PAVARDĖ, PROJEKTAS.PAVADINIMAS FROM DARBUOTOJAS
    JOIN PROJEKTAS on PROJEKTAS.ID = DARBUOTOJAS.PROJEKTAS_ID;

-- 2
SELECT VARDAS, PAVARDĖ, PROJEKTAS.PAVADINIMAS FROM DARBUOTOJAS
    JOIN PROJEKTAS on PROJEKTAS.ID = DARBUOTOJAS.PROJEKTAS_ID
    WHERE PROJEKTAS.PAVADINIMAS = "Galerija";

-- 3
SELECT VARDAS, PAVARDĖ, SKYRIUS.PAVADINIMAS FROM DARBUOTOJAS    
    JOIN PROJEKTAS ON DARBUOTOJAS.PROJEKTAS_ID = PROJEKTAS.ID
    JOIN SKYRIUS ON SKYRIUS.PAVADINIMAS = "Pardavimų";

-- 4
SELECT VARDAS, PAVARDĖ, ASMENS_KODAS, PAVADINIMAS FROM DARBUOTOJAS 
    JOIN PROJEKTAS ON PROJEKTAS.ID = DARBUOTOJAS.PROJEKTAS_ID 
    WHERE (ASMENS_KODAS LIKE "2%" OR ASMENS_KODAS LIKE "4%" OR ASMENS_KODAS like "6%") 
    AND PROJEKTAS.PAVADINIMAS = "Projektų valdymas";

-- 5
SELECT PAVADINIMAS, count() as kiekis FROM DARBUOTOJAS JOIN SKYRIUS
    ON DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID
    GROUP BY PAVADINIMAS;

-- 6
SELECT PAVADINIMAS, count() as DARBUOTOJU_SKAICIUS FROM DARBUOTOJAS JOIN SKYRIUS
    ON DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID
    GROUP BY PAVADINIMAS
    HAVING DARBUOTOJU_SKAICIUS >= 5;

-- 7
SELECT VARDAS, PAVARDĖ, SKYRIUS.PAVADINIMAS 
    FROM DARBUOTOJAS JOIN SKYRIUS
    ON DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID
    WHERE DARBUOTOJAS.SKYRIUS_ID != 4;

-- 8 
INSERT INTO DARBUOTOJAS (VARDAS, PAVARDĖ, DIRBA_NUO, ASMENS_KODAS) 
    VALUES ("PRANAS", "LOGIS", "2009-11-12", "38807117896");
SELECT * FROM DARBUOTOJAS;

-- 9
SELECT VARDAS, PAVARDĖ, SKYRIUS.PAVADINIMAS FROM DARBUOTOJAS 
    LEFT JOIN SKYRIUS on DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID;

-- 10
SELECT VARDAS, PAVARDĖ, PROJEKTAS.PAVADINIMAS FROM DARBUOTOJAS
    JOIN PROJEKTAS on PROJEKTAS.ID = DARBUOTOJAS.PROJEKTAS_ID
    WHERE PROJEKTAS_ID IN (
        SELECT PROJEKTAS_ID FROM DARBUOTOJAS
            GROUP BY PROJEKTAS_ID HAVING count() > 4
        );

-- 11
SELECT VARDAS, PAVARDĖ, (BAZINIS_ATLYGINIMAS + PRIEDAI) as BENDRAS FROM DARBUOTOJAS;

-- 12
SELECT sum(BAZINIS_ATLYGINIMAS), sum(PRIEDAI) , avg(BAZINIS_ATLYGINIMAS ), min(BAZINIS_ATLYGINIMAS), max(BAZINIS_ATLYGINIMAS) FROM DARBUOTOJAS;
-- 1
SELECT VARDAS, PAVARDĖ, PROJEKTAS.PAVADINIMAS 
    FROM DARBUOTOJAS 
    JOIN PROJEKTAS on PROJEKTAS.ID = DARBUOTOJAS.PROJEKTAS_ID;
-- 2
SELECT VARDAS, PAVARDĖ, PAVADINIMAS 
    from DARBUOTOJAS 
    JOIN PROJEKTAS on PROJEKTAS.ID = DARBUOTOJAS.PROJEKTAS_ID 
    WHERE PROJEKTAS.PAVADINIMAS = "Galerija";
-- 3
SELECT * from DARBUOTOJAS 
    JOIN SKYRIUS 
    on SKYRIUS.id = DARBUOTOJAS.SKYRIUS_ID 
    JOIN PROJEKTAS ON PROJEKTAS.ID = DARBUOTOJAS.PROJEKTAS_ID 
    WHERE SKYRIUS.PAVADINIMAS = "Gamybos" 
    AND PROJEKTAS.PAVADINIMAS = "Projektų valdymas";
-- 4
SELECT VARDAS, PAVARDĖ, PAVADINIMAS FROM DARBUOTOJAS 
JOIN PROJEKTAS ON PROJEKTAS.ID = DARBUOTOJAS.PROJEKTAS_ID 
WHERE (ASMENS_KODAS LIKE "4%" OR ASMENS_KODAS like "6%") 
AND PROJEKTAS.PAVADINIMAS = "Projektų valdymas";
-- 5
SELECT SKYRIUS.PAVADINIMAS, count(*) FROM DARBUOTOJAS 
    JOIN SKYRIUS on SKYRIUS.ID = DARBUOTOJAS.SKYRIUS_ID 
    GROUP by SKYRIUS.PAVADINIMAS;
-- 6
SELECT SKYRIUS.PAVADINIMAS, count(*) FROM DARBUOTOJAS 
    JOIN SKYRIUS on SKYRIUS.ID = DARBUOTOJAS.SKYRIUS_ID 
    GROUP by SKYRIUS.PAVADINIMAS HAVING count(*) > 5;
-- 7
SELECT VARDAS, PAVARDĖ, PAREIGOS, SKYRIUS.PAVADINIMAS 
    FROM DARBUOTOJAS JOIN SKYRIUS 
    on SKYRIUS.ID = DARBUOTOJAS.SKYRIUS_ID 
    WHERE NOT PAREIGOS="Vadovas";
-- 8
INSERT INTO DARBUOTOJAS 
    VALUES (NULL, "Pranas", "Logis", 38807117896, NULL, "2009-11-12", NULL, NULL, NULL, NULL);
-- 9
SELECT VARDAS, PAVARDĖ, PAVADINIMAS 
    FROM DARBUOTOJAS 
    LEFT JOIN SKYRIUS on DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID;
-- 10
SELECT VARDAS, PAVARDĖ, PROJEKTAS.PAVADINIMAS 
    FROM DARBUOTOJAS JOIN PROJEKTAS 
    ON PROJEKTAS.ID = DARBUOTOJAS.PROJEKTAS_ID 
    where PROJEKTAS_ID in (SELECT PROJEKTAS_ID 
    FROM DARBUOTOJAS 
    GROUP by PROJEKTAS_ID HAVING count() > 4);
-- 11
SELECT VARDAS, PAVARDĖ, BAZINIS_ATLYGINIMAS, PRIEDAI, BAZINIS_ATLYGINIMAS + PRIEDAI as "Suma" 
    FROM DARBUOTOJAS;
-- 12
SELECT sum(BAZINIS_ATLYGINIMAS), sum(PRIEDAI), count(), max(BAZINIS_ATLYGINIMAS), min(BAZINIS_ATLYGINIMAS) 
    FROM DARBUOTOJAS;
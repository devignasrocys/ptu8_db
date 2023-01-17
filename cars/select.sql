-- SQLite
-- SELECT * FROM cars;
-- SELECT * FROM cars WHERE year BETWEEN 2000 and 2008;
-- SELECT * FROM cars WHERE color IN ("Violet", "Pink","Fuscia");
-- SELECT * FROM cars WHERE color LIKE "violet"; -- LIKE laisvesnis, ne case senssitive
-- SELECT * FROM cars WHERE model LIKE "X%"; -- X% atrinks tuos kurie prasideda X raide
-- SELECT * FROM cars WHERE model LIKE "%a"; -- %a atrinks tuos kurie baigias a raide
-- SELECT * FROM cars WHERE model LIKE "__"; -- Is dvieju raidziu modeliai
-- SELECT * FROM cars WHERE model LIKE "X_"; -- Prasideda is X raides ir antras simbolis nesvarbu
-- SELECT * FROM cars WHERE make LIKE "__n%"; -- Prasideda dviem bet kokiais simboliais, tada n raide ir like simboliai
-- SELECT * FROM cars WHERE color IS NULL;
-- SELECT * FROM cars WHERE color IS NOT NULL;
-- INSERT INTO cars (make, model, year, price)
--    VALUES ("Tesla", "Model Y", 2022, 55555);
-- SELECT * FROM cars WHERE make="Ford" AND year > 2000;
-- SELECT * FROM cars WHERE make="Ford" OR year > 2010 ORDER BY make,year;
-- SELECT * FROM cars WHERE make="Ford" 
--     OR year > 2000 BETWEEN 2004 AND 2006 ORDER BY make,year;
-- SELECT * FROM cars WHERE color 
--     NOT IN ("Violet", "Pink", "Fuscia", "Puce","Red");
-- SELECT * FROM cars
--     WHERE (make = "Ford" OR make = "Volvo")
--     AND price BETWEEN 20000 AND 60000;
-- SELECT * FROM cars WHERE make = "FORD" COLLATE NOCASE; -- Ieskos neatsizvelgian i raidziu dydi
-- SELECT "Gamintojas: " || make FROM cars;
-- SELECT make || ", " || model AS car,year,color FROM cars;
-- SELECT make, model, 2023-year AS age FROM cars
-- SELECT make, model, year, price, ROUND(price / 1.21, 2) AS price_exp_vat FROM cars;
-- SELECT min(year), max(year), avg(year), min(price), max(price) FROM cars;
-- SELECT make, model, min(price) FROM cars WHERE make="Toyota";
-- SELECT make, model, year, min(price) AS pigiausia, count(make) AS c
--     FROM  cars 
--     GROUP BY make 
--     HAVING c > 1
--     ORDER BY pigiausia;
SELECT sum(price), count(price) AS kiekis FROM cars;
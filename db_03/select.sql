-- SELECT * FROM person;
-- SELECT * FROM car;
-- SELECT * FROM company;
-- WHERE
-- SELECT person.first_name, person.last_name, car.plate
--     FROM person, car
--     WHERE person.car_id = car.id;

-- SELECT last_name, name, make FROM person, company,car
--     WHERE person.company_id = company.id 
--     AND person.car_id = car.id
--     ORDER BY name,make; -- isrusiuos pirma pagal name ir tada pagal make

-- JOIN
SELECT last_name, make, model 
    FROM person JOIN car 
    ON person.car_id = car.id; -- salyga

SELECT last_name, plate, name 
    FROM person JOIN car ON person.car_id = car.id -- Hoin reikalauja salygos kuri prasideda ON
    JOIN company ON person.company_id = company.id
    WHERE name LIKE "%a%"; -- %s% - wild card

SELECT last_name,make, name, model, plate 
    FROM person JOIN car ON person.car_id = car.id -- Hoin reikalauja salygos kuri prasideda ON
    JOIN company ON person.company_id = company.id
    WHERE make = "Ford"
    ORDER BY name DESC;

SELECT name, count(*) AS count FROM person 
    JOIN company on company_id = company.id
    GROUP BY name
    HAVING count > 3;

-- isrinkti tik apple darbuotoju automobiliu numerius
SELECT plate FROM car
    JOIN person ON person.car_id = car.id
    JOIN company ON person.company_id = company.id
    WHERE company.name = "Apple";

-- isrinkti varda, pavarde, auto gamintoja ir imone tik is tu imoniu
-- kuriose dirba iki 3 darbuotoju
SELECT first_name, last_name, make, name FROM person
    JOIN car ON car_id = car.id
    JOIN company ON company_id = company.id
    WHERE company_id IN (
        SELECT company.id FROM company 
            JOIN person ON person.company_id = company.id
            GROUP BY name HAVING count() <= 3 ORDER BY name
    );

-- LEFT JOIN, 
SELECT first_name, last_name, make, model, plate FROM person
    LEFT JOIN car ON car_id = car.id;

INSERT INTO car (make, model, plate) 
    VALUES ("Dethleffs", "A1558", "BG555");

SELECT first_name, last_name, make, model FROM car
     LEFT JOIN person on car.id = person.car_id;

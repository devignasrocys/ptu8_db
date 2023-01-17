-- SQLite
-- Ides darbuotoja i db
INSERT INTO darbuotojai(VARDAS, PAVARDĖ, GIMIMO_DATA, PAREIGOS, SKYRIUS_PAVADINIMAS)
VALUES ("Ignas", "Rocys", "1993-05-16", "Studentas", "PTU-8");
INSERT INTO darbuotojai(VARDAS, PAVARDĖ, GIMIMO_DATA)
VALUES ("Ignas", "Rocys", "1993-05-16");
INSERT INTO darbuotojai(VARDAS,PAVARDĖ,GIMIMO_DATA,PAREIGOS,SKYRIUS_PAVADINIMAS)
VALUES ("Antanas", "Antanaitis", "1993-05-16", "Programuotojas" ,"IT");
VALUES ("Tomas", "Antanaitis", "1993-05-16", "Programuotojas" ,"IT");
SELECT * FROM darbuotojai;
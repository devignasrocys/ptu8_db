-- Atnaujins darbuotoja pagal id 4
-- UPDATE darbuotojai SET pavarde="Motiejunaite", atlyginimas=1200 WHERE id=4;
-- SELECT * FROM darbuotojai WHERE id=4;
UPDATE darbuotojai SET PAREIGOS = "Studentas", SKYRIUS_PAVADINIMAS = "PTU-8" WHERE VARDAS = "Ignas";
UPDATE darbuotojai SET PAREIGOS = "Programuotojas" WHERE VARDAS = "Tomas" AND VARDAS = "Antanas";
-- Parodo kas yra duomenu bazeje
SELECT * FROM darbuotojai;
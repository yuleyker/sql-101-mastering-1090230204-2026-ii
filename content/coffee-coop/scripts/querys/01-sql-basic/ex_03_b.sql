-- Exercise 03 - b
-- Certifications with premium per load (premium_per_kg * 125)

SELECT
       T1.certification_name AS certification,
       T1.issuing_body AS issuer,
       T1.premium_per_kg AS premium_per_kg_cop,
       T1.premium_per_kg * 125 AS premium_per_load_cop
FROM farm.certifications AS T1
ORDER BY T1.premium_per_kg DESC;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

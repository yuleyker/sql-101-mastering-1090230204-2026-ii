-- Exercise 03 - c
-- Certifications with premium per kg >= 350 COP

SELECT
       T1.certification_name AS certification,
       T1.issuing_body AS issuer,
       T1.premium_per_kg AS premium_per_kg_cop,
       T1.premium_per_kg * 125 AS premium_per_load_cop
FROM farm.certifications AS T1
WHERE T1.premium_per_kg >= 350
ORDER BY T1.premium_per_kg DESC;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

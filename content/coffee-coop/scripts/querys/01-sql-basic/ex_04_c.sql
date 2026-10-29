-- Exercise 04 - c
-- Municipalities containing Pamplona (case-insensitive)

SELECT
       T1.municipality_code AS municipality_code,
       T1.municipality_name AS municipality
FROM geo.municipalities AS T1
WHERE T1.municipality_name ILIKE '%pamplona%'
ORDER BY T1.municipality_name ASC;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

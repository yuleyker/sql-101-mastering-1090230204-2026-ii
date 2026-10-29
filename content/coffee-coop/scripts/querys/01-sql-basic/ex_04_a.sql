-- Exercise 04 - a
-- Municipalities of Norte de Santander (54), alphabetical

SELECT
       T1.municipality_code AS municipality_code,
       T1.municipality_name AS municipality
FROM geo.municipalities AS T1
WHERE T1.department_code = '54'
ORDER BY T1.municipality_name ASC;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

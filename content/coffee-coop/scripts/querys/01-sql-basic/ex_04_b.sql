-- Exercise 04 - b
-- Norte de Santander municipalities starting with San

SELECT
       T1.municipality_code AS municipality_code,
       T1.municipality_name AS municipality
FROM geo.municipalities AS T1
WHERE T1.department_code = '54' AND T1.municipality_name LIKE 'San %'
ORDER BY T1.municipality_name ASC;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

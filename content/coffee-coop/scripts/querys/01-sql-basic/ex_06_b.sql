-- Exercise 06 - b
-- Farmers of 54518 without email

SELECT
       T1.document_number AS document,
       T1.first_name AS first_name,
       T1.last_name AS last_name,
       T1.email AS email
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518' AND T1.email IS NULL;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

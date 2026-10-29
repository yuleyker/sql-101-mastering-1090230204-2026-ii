-- Exercise 05 - b
-- Collection points without phone number, ordered by name

SELECT
       T1.point_name AS point,
       T1.address_line AS address,
       T1.phone_number AS phone_number
FROM buy.collection_points AS T1
WHERE T1.phone_number IS NULL
ORDER BY T1.point_name ASC;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

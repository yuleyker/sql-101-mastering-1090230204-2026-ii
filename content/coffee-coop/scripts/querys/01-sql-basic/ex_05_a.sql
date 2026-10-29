-- Exercise 05 - a
-- Inactive collection points

SELECT
       T1.point_name AS point,
       T1.address_line AS address,
       T1.municipality_code AS municipality_code
FROM buy.collection_points AS T1
WHERE T1.is_active = FALSE;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

-- Exercise 05 - c
-- Collection points inactive or without phone

SELECT
       T1.point_name AS point,
       T1.address_line AS address,
       T1.phone_number AS phone_number,
       T1.is_active AS is_active
FROM buy.collection_points AS T1
WHERE T1.is_active = FALSE OR T1.phone_number IS NULL;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

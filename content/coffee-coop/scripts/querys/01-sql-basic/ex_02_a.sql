-- Exercise 02 - a
-- Coffee varieties resistant to rust

SELECT
       T1.variety_name AS variety,
       T1.species AS species,
       T1.description AS description
FROM farm.coffee_varieties AS T1
WHERE T1.is_rust_resistant = TRUE;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

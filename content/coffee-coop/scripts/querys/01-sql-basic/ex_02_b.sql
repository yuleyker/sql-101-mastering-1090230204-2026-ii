-- Exercise 02 - b
-- Non rust-resistant arabica varieties, name descending

SELECT
       T1.variety_name AS variety,
       T1.species AS species,
       T1.description AS description
FROM farm.coffee_varieties AS T1
WHERE T1.is_rust_resistant = FALSE AND T1.species ILIKE 'arabica'
ORDER BY T1.variety_name DESC;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

-- Exercise 07 - b
-- Farms of 54518 between 1600 and 1800 masl

SELECT
       T1.farm_name AS farm,
       T1.rural_district AS rural_district,
       T1.total_area_ha AS area_ha,
       T1.altitude_masl AS altitude_masl
FROM farm.farms AS T1
WHERE T1.municipality_code = '54518' AND T1.altitude_masl BETWEEN 1600 AND 1800
ORDER BY T1.rural_district ASC, T1.total_area_ha DESC;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

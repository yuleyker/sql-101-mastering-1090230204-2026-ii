-- Exercise 07 - a
-- Farms of 54518 above 1800 masl, highest first

SELECT
       T1.farm_name AS farm,
       T1.rural_district AS rural_district,
       T1.total_area_ha AS area_ha,
       T1.altitude_masl AS altitude_masl
FROM farm.farms AS T1
WHERE T1.municipality_code = '54518' AND T1.altitude_masl > 1800
ORDER BY T1.altitude_masl DESC;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

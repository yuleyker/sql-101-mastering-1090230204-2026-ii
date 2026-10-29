-- Exercise 09 - b
-- Quality analyses of 2026-09-30 with moisture outside 10-12%

SELECT
       T1.analysis_id AS analysis,
       T1.delivery_id AS delivery,
       T1.moisture_pct AS moisture_pct,
       T1.yield_factor AS yield_factor,
       T1.cup_score AS cup_score,
       T1.analyst_name AS analyst_name,
       T1.observations AS observations
FROM buy.quality_analyses AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%' AND T1.moisture_pct NOT BETWEEN 10 AND 12;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

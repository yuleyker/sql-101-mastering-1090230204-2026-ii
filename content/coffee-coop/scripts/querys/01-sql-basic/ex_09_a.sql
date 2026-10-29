-- Exercise 09 - a
-- Quality analyses of 2026-09-30 with cup score >= 85

SELECT
       T1.analysis_id AS analysis,
       T1.delivery_id AS delivery,
       T1.moisture_pct AS moisture_pct,
       T1.yield_factor AS yield_factor,
       T1.cup_score AS cup_score
FROM buy.quality_analyses AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%' AND T1.cup_score >= 85
ORDER BY T1.cup_score DESC;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

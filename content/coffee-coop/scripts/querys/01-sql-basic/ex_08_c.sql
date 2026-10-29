-- Exercise 08 - c
-- Wet parchment or cherry deliveries of 2026-09-30, heaviest first

SELECT
       T1.delivery_id AS delivery,
       T1.farm_id AS farm_id,
       T1.collection_point_id AS collection_point_id,
       T1.delivered_at AS received_at,
       T1.coffee_type AS coffee_type,
       T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%' AND T1.coffee_type IN ('wet_parchment', 'cherry')
ORDER BY T1.gross_weight_kg DESC;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

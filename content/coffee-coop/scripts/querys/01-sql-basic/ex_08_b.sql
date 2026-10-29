-- Exercise 08 - b
-- Rejected deliveries of 2026-09-30 with average kg per bag

SELECT
       T1.delivery_id AS delivery,
       T1.farm_id AS farm_id,
       T1.collection_point_id AS collection_point_id,
       T1.delivered_at AS received_at,
       T1.coffee_type AS coffee_type,
       T1.gross_weight_kg AS gross_weight_kg,
       T1.gross_weight_kg / T1.bag_count AS avg_kg_per_bag
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%' AND T1.status = 'rejected'
ORDER BY T1.delivered_at ASC;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

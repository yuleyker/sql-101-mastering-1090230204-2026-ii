-- Exercise 08 - a
-- Deliveries received on 2026-09-30, ordered by reception time

SELECT
       T1.delivery_id AS delivery,
       T1.farm_id AS farm_id,
       T1.collection_point_id AS collection_point_id,
       T1.delivered_at AS received_at,
       T1.coffee_type AS coffee_type,
       T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
ORDER BY T1.delivered_at ASC;

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

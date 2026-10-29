-- Exercise 10 - a
-- Settlements generated on 2026-09-30

SELECT
       T1.settlement_id AS settlement,
       T1.delivery_id AS delivery,
       T1.net_weight_kg AS net_weight_kg,
       T1.price_per_kg_applied AS price_per_kg,
       T1.gross_amount AS gross_cop,
       T1.deductions_amount AS deductions_cop,
       T1.net_amount AS net_cop
FROM pay.settlements AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%';

/*
(PASTE HERE the first 10 rows of the result)
(N rows)
*/

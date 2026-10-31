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
"QA-20260930-000026"	"DLV-20260930-000005"	12.19	95.42	78.56	"Wilson Galvis"	
"QA-20260930-000018"	"DLV-20260930-000006"	17.24	103.31	79.98	"Nicolás Serrano"	"Café con humedad alta, requiere más secado."
"QA-20260930-000017"	"DLV-20260930-000012"	12.15	93.62		"Natalia Trujillo"	
"QA-20260930-000033"	"DLV-20260930-000027"	12.41	92.76		"Sara Sánchez"	
"QA-20260930-000013"	"DLV-20260930-000038"	12.28	91.77	83.22	"Adriana Losada"	
"QA-20260930-000005"	"DLV-20260930-000040"	12.22	95.01	80.54	"Iván Castro"	
"QA-20260930-000027"	"DLV-20260930-000043"	12.07	92.47		"Germán González"	"Caficultor solicita contramuestra."
"QA-20260930-000102"	"DLV-20260930-000155"	12.31	94.01	87.28	"Adriana Losada"	
"QA-20260930-000144"	"DLV-20260930-000289"	12.28	87.62		"Ancízar Delgado"	
"QA-20260930-000137"	"DLV-20260930-000295"	12.35	91.07	87.14	"Sara Sánchez"	
(40 rows)
*/

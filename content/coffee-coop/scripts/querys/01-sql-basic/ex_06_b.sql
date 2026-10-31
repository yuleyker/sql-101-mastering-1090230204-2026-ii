-- Exercise 06 - b
-- Farmers of 54518 without email

SELECT
       T1.document_number AS document,
       T1.first_name AS first_name,
       T1.last_name AS last_name,
       T1.email AS email
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518' AND T1.email IS NULL;

/*
"712758473"	"Wilson"	"López Villamizar"	
"727945493"	"Gloria"	"Marín Rivera"	
"549054771"	"María"	"Burbano Duarte"	
"24999630"	"Esperanza"	"Romero Betancur"	
"914044314"	"Ancízar Cristian"	"Polanía Delgado"	
"343256743"	"Dora"	"Hernández Correa"	
"1148351420"	"Inés"	"Jiménez Jaimes"	
"1117597835"	"Cecilia Lorena"	"Díaz García"	
"749444168"	"Emilio"	"Delgado Molina"	
"940051048"	"David Germán"	"Romero Bonilla"	
(65 rows)
*/

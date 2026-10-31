-- Exercise 05 - c
-- Collection points inactive or without phone

SELECT
       T1.point_name AS point,
       T1.address_line AS address,
       T1.phone_number AS phone_number,
       T1.is_active AS is_active
FROM buy.collection_points AS T1
WHERE T1.is_active = FALSE OR T1.phone_number IS NULL;

/*
"Punto de Compra El Banco 1"	"Calle 17 # 34-54"	"6055026534"	false
"Punto de Compra Popayán 1"	"Carrera 21 # 4-95"	"6057341141"	false
"Punto de Compra Hatonuevo 1"	"Calle 7 # 16-89"		true
"Punto de Compra Bosconia 1"	"Carrera 26 # 26-43"		true
"Punto de Compra Cajibío 1"	"Carrera 15 # 32-45"		true
"Punto de Compra Anserma 1"	"Calle 39 # 7-96"		true
"Punto de Compra Apía 2"	"Calle 9 # 14-56"		false
"Punto de Compra Puracé 1"	"Calle 16 # 50-5"		true
"Punto de Compra Aipe 1"	"Carrera 13 # 17-16"		true
"Punto de Compra Marsella 1"	"Transversal 19 # 42-92"		true
(34 rows)
*/

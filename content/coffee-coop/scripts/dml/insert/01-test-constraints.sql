-- ##################################################
-- #     COFFEE COOP - CONSTRAINT TESTS             #
-- ##################################################
-- RUN IN coffee_coop_db - cc_admin
-- Run each block separately: select it and press F5.

-- 01. Valid data
INSERT INTO geo.departments (department_code, department_name)
VALUES ('68', 'Santander');

INSERT INTO geo.municipalities (department_code, municipality_code, municipality_name)
VALUES ('68', '68001', 'Bucaramanga');

INSERT INTO farm.farmers (document_number, first_name, last_name, birth_date, gender, phone_number, municipality_code)
VALUES ('1001001001', 'Carlos', 'Ramirez', '1980-05-10', 'M', '3001234567', '68001');

INSERT INTO farm.farms (farmer_id, municipality_code, farm_name, rural_district, total_area_ha, altitude_masl)
VALUES ((SELECT farmer_id FROM farm.farmers WHERE document_number = '1001001001'),
        '68001', 'La Esperanza', 'Vereda El Carmen', 5.50, 1650);

-- 02. Test: farmer under 18 when associated
-- RESULT: (paste the PostgreSQL error, or write "accepted, no constraint")
-- CONSTRAINT: (chk_..., or none)
INSERT INTO farm.farmers (document_number, first_name, last_name, birth_date, gender, phone_number, municipality_code)
VALUES ('1001001002', 'Pedro', 'Gomez', '2012-03-15', 'M', '3009876543', '68001');
-- If it was accepted, clean up:
-- DELETE FROM farm.farmers WHERE document_number = '1001001002';

-- 03. Test: two farms with the same name for the same farmer
-- RESULT: (paste the PostgreSQL error here)
-- CONSTRAINT: (uq_...)
INSERT INTO farm.farms (farmer_id, municipality_code, farm_name, rural_district, total_area_ha, altitude_masl)
VALUES ((SELECT farmer_id FROM farm.farmers WHERE document_number = '1001001001'),
        '68001', 'La Esperanza', 'Vereda Otra', 3.00, 1500);

-- 04. Setup for the payment test (valid data)
INSERT INTO buy.collection_points (point_name, address_line, municipality_code)
VALUES ('Punto Central', 'Calle 1 # 2-3', '68001');

INSERT INTO buy.daily_prices (collection_point_id, price_date, price_per_kg)
VALUES ((SELECT collection_point_id FROM buy.collection_points WHERE point_name = 'Punto Central'),
        CURRENT_DATE, 12000);

INSERT INTO buy.deliveries (delivery_id, farm_id, collection_point_id, coffee_type, bag_count, gross_weight_kg)
VALUES ('DEL-0001',
        (SELECT farm_id FROM farm.farms WHERE farm_name = 'La Esperanza'),
        (SELECT collection_point_id FROM buy.collection_points WHERE point_name = 'Punto Central'),
        'dry_parchment', 10, 625.00);

INSERT INTO pay.settlements (settlement_id, delivery_id, daily_price_id, net_weight_kg, price_per_kg_applied)
VALUES ('SET-0001', 'DEL-0001',
        (SELECT daily_price_id FROM buy.daily_prices WHERE price_date = CURRENT_DATE),
        600.00, 12000);

-- 05. Test: bank transfer payment without transaction_reference
-- RESULT: (paste the PostgreSQL error, or write "accepted, no constraint")
-- CONSTRAINT: (chk_..., or none)
INSERT INTO pay.payments (payment_id, settlement_id, payment_method, amount)
VALUES ('PAY-0001', 'SET-0001', 'bank_transfer', 7200000);
-- If it was accepted, clean up:
-- DELETE FROM pay.payments WHERE payment_id = 'PAY-0001';
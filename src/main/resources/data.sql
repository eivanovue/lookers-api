INSERT INTO car (
  id,
  brand,
  model,
  RRP,
  price,
  saving,
  mileage,
  registration,
  fuel_type,
  engine_size,
  doors,
  body_style,
  img_src,
  view_car_url,
  buy_car_url,
  id_number,
  is_sold
) VALUES (
1,
'AUDI A1 SPORTBACK',
'30 TFSI 110 Sport 5dr',
21430,
20997,
433,
10,
'NEW (In stock)',
'Petrol',
'1L',
5,
'Hatchback',
'https://lkswebprdcdnep4.azureedge.net:443/api/image/stock/7afb2372-7ba7-4ec0-bdc4-c5d7d9cbfb2c?size=800x600&quality=80',
'https://www.lookers.co.uk/audi/new-in-stock-car/audi/a1/30-tfsi-110-sport-5dr/id/311524',
'https://www.lookers.co.uk/deal-builder/finance-options/lgar-152216n',
311524,
false
);
INSERT INTO car (
  id,
  brand,
  model,
  RRP,
  price,
  saving,
  mileage,
  registration,
  fuel_type,
  engine_size,
  doors,
  body_style,
  img_src,
  view_car_url,
  id_number,
  is_sold
) VALUES (
2,
'LAND ROVER DEFENDER DIESEL ESTATE',
'3.0 D250 X-Dynamic S 90 3dr Auto',
50915,
49381,
1534,
0,
'NEW (In stock)',
'Diesel',
'3L',
3,
'Estate',
'https://new.img-cdn.lookers.co.uk:443/nvmp/CAR/94466/9f4ef2f0-170e-4545-b4ea-b763664e9dc4/cbed9e96-a8f8-461f-9326-8a28c8f81942.jpeg?size=800x600&quality=80',
'https://www.lookers.co.uk/new-car/land-rover/defender/3-0-d250-x-dynamic-s-90-3dr-auto/id/318512',
318512,
false
);
INSERT INTO car (
id,
  brand,
  model,
  RRP,
  price,
  saving,
  mileage,
  registration,
  fuel_type,
  engine_size,
  doors,
  body_style,
  img_src,
  view_car_url,
  id_number,
  is_sold
) VALUES (
3,
'HONDA JAZZ HATCHBACK',
'1.5 i-MMD Hybrid SR 5dr eCVT',
21135,
20213.60,
921.94,
0,
'NEW (In stock)',
'Petrol / Electric Hybrid',
'1.5L',
5,
'Hatchback',
'https://new.img-cdn.lookers.co.uk:443/nvmp/CAR/92775/78e695ef-b3cf-42f5-8431-412a89d3acf8/e91488a0-d832-47da-b219-29cc3f865e4d.jpeg?size=800x600&quality=80',
'https://www.lookers.co.uk/new-car/honda/jazz/1-5-i-mmd-hybrid-sr-5dr-ecvt/id/266572',
266572,
false
);
INSERT INTO car (
id,
  brand,
  doors,
  model,
  RRP,
  price,
  saving,
  mileage,
  registration,
  fuel_type,
  engine_size,
  body_style,
  img_src,
  view_car_url,
  id_number,
  is_sold
) VALUES (
4,
'FORD TRANSIT COURIER PETROL',
5,
'1.0 EcoBoost Sport Van [6 Speed]',
19004,
14750,
4254,
0,
'NEW',
'Petrol',
'1L',
'Van',
'https://new.img-cdn.lookers.co.uk:443/nvmp/VAN/42520/ded5d614-88d9-4b03-8042-3d5fd14e2b58/511031a6-6aaa-48e0-84f2-e1d69156b060?size=800x600&quality=80',
'https://www.lookers.co.uk/ford/new-van/ford/transit-courier/1-0-ecoboost-sport-van--6-speed-/id/292001',
292001,
false
);
INSERT INTO car (
  id,
  brand,
  model,
  RRP,
  price,
  saving,
  mileage,
  registration,
  fuel_type,
  engine_size,
  doors,
  body_style,
  img_src,
  view_car_url,
  buy_car_url,
  id_number,
  is_sold
) VALUES (
5,
'MINI CLUBMAN ESTATE',
'1.5 Cooper Exclusive 6dr [Comfort Pack]',
27240,
24799,
2441,
10,
'New (In stock)',
'Petrol',
'1.5L',
6,
'Estate',
'https://lkswebprdcdnep4.azureedge.net:443/api/image/stock/dd1adaed-c279-4caa-8d88-1f1a59279167?size=800x600&quality=80',
'https://www.lookers.co.uk/mini/new-in-stock-car/mini/clubman/1-5-cooper-exclusive-6dr--comfort-pack-/id/317426',
'https://www.lookers.co.uk/deal-builder/finance-options/w1003-185081n',
317426,
false
);

INSERT INTO scan (id, car_id, scan_date_time)
VALUES (343434, 1, '2021-02-16');

INSERT INTO scan (id, car_id, scan_date_time)
VALUES (232323, 2, '2021-02-16');

INSERT INTO scan (id, car_id, scan_date_time)
VALUES (121212, 3, '2021-02-15');

INSERT INTO scan (id, car_id, scan_date_time)
VALUES (454545, 3, '2021-02-14');

INSERT INTO scan (id, car_id, scan_date_time)
VALUES (565656, 4, '2021-01-22');

INSERT INTO scan (id, car_id, scan_date_time)
VALUES (676767, 5, '2021-01-11');
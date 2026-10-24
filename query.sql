-- INNER JOIN
-- hanya mengambil data yang ada di kedua table, disini data yang di maksud adalah user_id
SELECT
  O.order_id AS order_id,
  O.status, 
  U.id AS user_id,
  U.country
FROM `bigquery-public-data.thelook_ecommerce.orders` AS O 
INNER JOIN `bigquery-public-data.thelook_ecommerce.users` AS U 
  ON O.user_id = U.id 
;

-- LEFT JOIN 
-- hanya data yang value nya ada di table sebelah kiri
SELECT
  O.order_id AS order_id,
  O.status, 
  U.id AS user_id,
  U.country
FROM `bigquery-public-data.thelook_ecommerce.users` AS U    -- <-- table kiri 
LEFT JOIN `bigquery-public-data.thelook_ecommerce.orders` AS O    -- <-- table kanan 
  ON U.id = O.order_id 
WHERE O.order_id IS NULL
;

-- cari baris dengan value null 


SELECT
  o.order_id AS order_id,
  o.status,
  u.country,
  o.created_at
FROM `bigquery-public-data.thelook_ecommerce.orders` o
INNER JOIN `bigquery-public-data.thelook_ecommerce.users` u
  ON o.user_id = u.id
LIMIT 10;



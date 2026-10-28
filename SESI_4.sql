select 
 status, # non-agregat
 Count (*) Jumlah_order, # agregat
 SUM(num_of_item) jumlah_item
FROM `bigquery-public-data.thelook_ecommerce.orders`
where created_at Between '2024-01-01' and '2025-01-01'
group by 1
having SUM(num_of_item) > 5000 OR Count (*) > 2000
order by 2 desc;

--Top  10 products by order item
SELECT
  product_id,
  COUNT(*) AS item_rows
FROM `bigquery-public-data.thelook_ecommerce.order_items` 
GROUP BY 1
ORDER BY item_rows DESC
LIMIT 10;

--Jumlah users per negara
SELECT country, count(*) Jumlah_user
FROM bigquery-public-data.thelook_ecommerce.users
GROUP BY 1
ORDER BY 2 DESC;

SELECT
 status,
 count (*) total_item,
 count (distinct order_id) total_orders,
 round(sum(sale_price),2) total_sales,
 round(avg(sale_price),2) avg_sale_price
 FROM `bigquery-public-data.thelook_ecommerce.order_items` 
 group by 1
 order by 2 desc;

select count(distinct user_id) jumlah_user,
from bigquery-public-data.thelook_ecommerce.orders;

SELECT SUM(sale_price) AS total_item_sales
FROM `bigquery-public-data.thelook_ecommerce.order_items`;

select
 category,
 count(*) total_products,
 round(avg(retail_price),2) avg_retail_price
from bigquery-public-data.thelook_ecommerce.products
group by category
order by avg_retail_price DESC;

SELECT 
status,
 COUNT(*) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY total_orders DESC;

select
 country,
 count(*) jumlah_users
 from bigquery-public-data.thelook_ecommerce.users
 group by 1
 order by jumlah_users desc
 limit 10;


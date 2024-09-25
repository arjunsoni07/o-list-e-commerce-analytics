create database ecommerce;
use ecommerce;

#KPI 1   Weekday Vs Weekend (order_purchase_timestamp) Payment Statistics

SELECT KPI1.DAYS, 
CONCAT(ROUND(KPI1.TOTAL_PAYMENT/(SELECT SUM(PAYMENT_VALUE) FROM OLIST_ORDER_PAYMENTS) *100,2),"%") AS PERCENTAGE_VALUES
FROM 
(SELECT ORDER1.DAYS,SUM(PAYMENT.PAYMENT_VALUE) AS TOTAL_PAYMENT FROM OLIST_ORDER_PAYMENTS AS PAYMENT
JOIN
(SELECT DISTINCT ORDER_ID,
CASE
WHEN WEEKDAY(ORDER_PURCHASE_TIMESTAMP) IN(5,6) THEN "WEEKEND"
ELSE "WEEKDAY"
END AS DAYS
FROM OLIST_ORDERS) AS ORDER1
ON ORDER1.ORDER_ID = PAYMENT.ORDER_ID
GROUP BY ORDER1.DAYS) AS KPI1;

#KPI 2 Number of Orders with review score 5 and payment type as credit card

SELECT COUNT(PAYMENT.ORDER_ID) AS TOTAL_ORDERS FROM OLIST_ORDER_PAYMENTS PAYMENT
INNER JOIN OLIST_ORDER_REVIEWS REVIEW ON PAYMENT.ORDER_ID = REVIEW.ORDER_ID
WHERE REVIEW.REVIEW_SCORE = 5 AND PAYMENT.PAYMENT_TYPE = "CREDIT_CARD";

#KPI 3 Average number of days taken for order_delivered_customer_date for pet_shop

SELECT PRODUCT.PRODUCT_CATEGORY_NAME,
ROUND(AVG(DATEDIFF(ORDER1.ORDER_DELIVERED_CUSTOMER_DATE,ORDER1.ORDER_PURCHASE_TIMESTAMP)),0) AS AVG_DELIVERY_DAYS
FROM OLIST_ORDERS AS ORDER1
JOIN
(SELECT PRODUCT1.PRODUCT_ID,ORDER_ID,PRODUCT_CATEGORY_NAME FROM OLIST_PRODUCTS AS PRODUCT1
JOIN OLIST_ORDER_ITEMS ON PRODUCT1.PRODUCT_ID = OLIST_ORDER_ITEMS.PRODUCT_ID) AS PRODUCT
ON ORDER1.ORDER_ID = PRODUCT.ORDER_ID 
WHERE PRODUCT.PRODUCT_CATEGORY_NAME = "PET_SHOP"
GROUP BY PRODUCT.PRODUCT_CATEGORY_NAME;

#KPI4 Average price and payment values from customers of sao paulo city

WITH orderItemsAvg AS (
Select round (AVG(item.price)) AS avg_order_item_price
from olist_order_items item
join olist_orders ord ON item.order_id = ord.order_id
join olist_customers cust ON ord.customer_id = cust.customer_id 
where cust.customer_city = "Sao Paulo"
)
select
(select avg_order_item_price from orderItemsAvg) AS avg_order_item_price,
round (AVG(pmt.payment_value)) AS avg_payment_value
from olist_order_payments pmt
Join olist_orders ord ON pmt.order_id = ord.order_id
join olist_customers cust ON ord.customer_id = cust.customer_id where cust.customer_city = "Sao Paulo";

#KPI 5  Relationship between shipping days (order_delivered_customer_date - order_purchase_timestamp) Vs review scores

SELECT REVIEW.REVIEW_SCORE,
ROUND(AVG(DATEDIFF(ORDER1.ORDER_DELIVERED_CUSTOMER_DATE,ORDER_PURCHASE_TIMESTAMP)),0) AS "AVG SHIPPING DAYS"
FROM OLIST_ORDERS AS ORDER1 
JOIN OLIST_ORDER_REVIEWS AS REVIEW ON REVIEW.ORDER_ID = ORDER1.ORDER_ID 
GROUP BY REVIEW.REVIEW_SCORE 
ORDER BY REVIEW.REVIEW_SCORE; 
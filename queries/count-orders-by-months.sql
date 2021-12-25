SELECT TO_CHAR(TO_DATE (extract(MONTH FROM orders.date_get)::text, 'MM'), 'Mon') AS "Month Name",
       count(*) AS number_of_orders
FROM orders
GROUP BY extract(MONTH FROM orders.date_get)
ORDER BY extract(MONTH FROM orders.date_get);
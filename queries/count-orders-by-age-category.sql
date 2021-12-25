SELECT CASE
            WHEN round(age / 30) = 0 THEN
                'young'
            WHEN round(age / 30) = 1 THEN
                'middle'
            ELSE 'old'
       END,
       count(*) AS number_of_orders
FROM orders
JOIN customers c on orders.customer_id = c.id
GROUP BY round(age / 30);
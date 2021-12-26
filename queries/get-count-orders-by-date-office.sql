SELECT
    orders.date_get AS date,
    o.address AS office_address,
    count(*) AS total_orders
FROM orders
    JOIN office o on orders.office_id = o.id
GROUP BY orders.date_get, o.address
ORDER BY total_orders DESC;


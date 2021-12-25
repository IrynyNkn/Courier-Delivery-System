SELECT COUNT(orders.id) AS orders_quantity,
        ds.name AS delivery_status
FROM orders
JOIN delivery_status ds on orders.delivery_status_id = ds.id
GROUP BY ds.name
ORDER BY orders_quantity DESC;
SELECT
    orders.id,
       o.max_weight_available,
    c.name AS courier_name,
    ds.name AS delivery_status,
    o.address AS office_address
FROM orders
    JOIN office o on o.id = orders.office_id
    JOIN courier c on orders.courier_id = c.id
    JOIN delivery_status ds on orders.delivery_status_id = ds.id
WHERE o.max_weight_available > 50;

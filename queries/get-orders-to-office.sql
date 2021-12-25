SELECT c.name AS product,
       orders.number_of_products,
       o.address AS destination_address
FROM orders
JOIN office o on o.id = orders.office_id
JOIN commodity c on orders.commodity_id = c.id;
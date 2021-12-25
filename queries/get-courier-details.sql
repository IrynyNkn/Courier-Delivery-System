SELECT  orders.id AS order_id,
        orders.number_of_products,
        c.name AS courier_name,
        c.experience
FROM orders
JOIN courier c on c.id = orders.courier_id AND c.experience IS NOT NULL
ORDER BY number_of_products;
SELECT orders.id,
       c.name,
       concat(cm.firstname, ' ', cm.lastname) AS customer_fullname,
       orders.number_of_products * c.weight AS total_weight,
       orders.number_of_products * c.price AS total_price
FROM orders
JOIN commodity c ON c.id = orders.commodity_id
JOIN customers cm ON cm.id = orders.customer_id;
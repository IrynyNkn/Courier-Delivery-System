SELECT
   concat(customers.firstname,' ', customers.lastname) AS full_name,
   orders.number_of_products,
   orders.date_get
FROM customers
    JOIN orders ON orders.customer_id = customers.id
    JOIN customers c on c.id = orders.customer_id
ORDER BY orders.date_get;

SELECT  orders.id AS order_id,
        orders.number_of_products,
        concat(customers.firstname, ' ', customers.lastname) AS customer_fullname,
        customers.age,
        customers.password_hash
FROM orders, customers
WHERE orders.customer_id = customers.id
ORDER BY orders.number_of_products;
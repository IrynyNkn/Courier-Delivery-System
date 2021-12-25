SELECT c2.name AS category_name,
       round(avg(customers.age), 2) AS average_age
FROM customers
JOIN orders o on customers.id = o.customer_id
JOIN commodity c on c.id = o.commodity_id
JOIN commodity_category cc on c.id = cc.commodity_id
JOIN category c2 on cc.category_id = c2.id
GROUP BY c2.name
ORDER BY average_age DESC;

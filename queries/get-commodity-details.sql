SELECT  o.id AS order_id,
        commodity.name AS commodity,
        l.label_name AS commodity_label
FROM commodity
    JOIN orders o on o.commodity_id = commodity.id AND o.number_of_products > 5
    JOIN commodity_label cl on commodity.id = cl.commodity_id
    JOIN label l on cl.label_id = l.id
ORDER BY commodity.name DESC
SELECT  orders.id AS order_id,
        commodity.name AS commodity,
        label.label_name AS commodity_label
FROM orders, label, commodity
    JOIN orders o on commodity.id = o.commodity_id AND o.number_of_products > 5
    JOIN commodity_label cl on commodity.id = cl.commodity_id
    JOIN label l on cl.label_id = l.id
ORDER BY commodity.name DESC
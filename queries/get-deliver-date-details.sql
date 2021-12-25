SELECT orders.id AS delivered_orders_id,
       extract(Day FROM orders.date_get) AS delivery_day,
       extract(Month FROM orders.date_get) AS delivery_month,
       extract(Year FROM orders.date_get) AS delivery_year,
       o.address
FROM orders
    JOIN office o ON o.id = orders.office_id
ORDER BY delivery_year, delivery_month, delivery_day;

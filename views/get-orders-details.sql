CREATE OR REPLACE VIEW get_orders_details AS
    SELECT
           o.id AS order_id,
           c.firstname || ' ' || c.lastname AS customer,
           c2.name AS commidity,
           ds.name AS status,
           o2.address AS office_address,
           c3.name AS courier,
           c3.phone_number AS courier_phone,
           o.number_of_products,
           o.date_get,
           c2.weight AS commodity_weight
    FROM orders o
        JOIN customers c on c.id = o.customer_id
        JOIN commodity c2 on o.commodity_id = c2.id
        JOIN delivery_status ds on o.delivery_status_id = ds.id
        JOIN office o2 on o.office_id = o2.id
        JOIN courier c3 on c3.id = o.courier_id;

DROP VIEW IF EXISTS get_orders_details;

-- SELECT * FROM get_orders_details;

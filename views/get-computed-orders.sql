SELECT
    get_orders_details.*,
    CASE
        WHEN get_orders_details.date_get > current_date
        THEN 'order is in progress'
        ELSE 'order is done'
    END AS order_status,
    get_orders_details.commodity_weight * get_orders_details.number_of_products AS total_weight
FROM get_orders_details

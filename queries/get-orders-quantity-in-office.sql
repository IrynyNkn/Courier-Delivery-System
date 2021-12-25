SELECT  COUNT(orders.id) AS orders_quantity,
        office.address
FROM orders, office
JOIN orders o on office.id = o.office_id
GROUP BY office.address
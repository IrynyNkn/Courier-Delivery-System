SELECT courier.name,
       courier.phone_number,
       o.id AS order_id,
       o.date_get AS order_of_receiving,
       office.address AS destination_office
FROM courier
JOIN orders o ON courier.id = o.courier_id
JOIN office ON o.office_id = office.id
WHERE o.id = 10;
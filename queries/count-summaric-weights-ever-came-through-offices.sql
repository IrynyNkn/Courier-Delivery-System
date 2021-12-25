SELECT office.address,
       sum(c.weight) AS total_weight
FROM office
JOIN orders o on office.id = o.office_id
JOIN commodity c on c.id = o.commodity_id
GROUP BY office.address
ORDER BY total_weight DESC;

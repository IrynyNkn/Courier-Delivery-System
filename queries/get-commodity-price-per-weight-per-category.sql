SELECT c.name AS category_name,
       round(avg(commodity.price / commodity.weight), 2) AS average_price_per_weight
FROM commodity
JOIN commodity_category cc on commodity.id = cc.commodity_id
JOIN category c on cc.category_id = c.id
GROUP BY c.name
ORDER BY average_price_per_weight DESC;

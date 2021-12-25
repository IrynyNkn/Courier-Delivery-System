SELECT
    commodity.name,
    string_agg(DISTINCT c.name, ', ')
FROM commodity
    JOIN commodity_category cc on commodity.id = cc.commodity_id
    JOIN category c on cc.category_id = c.id
GROUP BY commodity.name;
SELECT
    commodity.name,
    string_agg(DISTINCT c.name, ', ')
FROM commodity
    JOIN commodity_label cl on commodity.id = cl.commodity_id
    JOIN category c on cl.label_id = c.id
GROUP BY commodity.name;

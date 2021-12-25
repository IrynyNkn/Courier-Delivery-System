COPY customers(id,firstname,lastname,password_hash,age)
FROM 'D:\kpi_2_course\data-bases\delivery-system\data\customers.csv'
DELIMITER ','
CSV HEADER;

COPY courier(id, name, experience, phone_number)
FROM 'D:\kpi_2_course\data-bases\delivery-system\data\courier.csv'
DELIMITER ','
CSV HEADER;

COPY category(id, name)
FROM 'D:\kpi_2_course\data-bases\delivery-system\data\category.csv'
DELIMITER ','
CSV HEADER;

COPY commodity(id, name, weight, price)
FROM 'D:\kpi_2_course\data-bases\delivery-system\data\commodity.csv'
DELIMITER ','
CSV HEADER;

COPY delivery_status(id, name)
FROM 'D:\kpi_2_course\data-bases\delivery-system\data\delivery_status.csv'
DELIMITER ','
CSV HEADER;

COPY label(id, label_name)
FROM 'D:\kpi_2_course\data-bases\delivery-system\data\label.csv'
DELIMITER ','
CSV HEADER;

COPY office(id,address, max_weight_available)
FROM 'D:\kpi_2_course\data-bases\delivery-system\data\office.csv'
DELIMITER ','
CSV HEADER;

COPY orders(id,customer_id,commodity_id, delivery_status_id, office_id, courier_id, number_of_products,date_get)
FROM 'D:\kpi_2_course\data-bases\delivery-system\data\orders.csv'
DELIMITER ','
CSV HEADER;

COPY commodity_category(commodity_id, category_id)
FROM 'D:\kpi_2_course\data-bases\delivery-system\data\commodity_category.csv'
DELIMITER ','
CSV HEADER;

COPY commodity_label(commodity_id, label_id)
FROM 'D:\kpi_2_course\data-bases\delivery-system\data\commodity_label.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM commodity_label
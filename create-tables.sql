CREATE TABLE IF NOT EXISTS customers (
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    age INT NULL,

    CHECK ( age > 0 AND age < 150 )
);

CREATE TABLE IF NOT EXISTS delivery_status (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS label (
    id SERIAL PRIMARY KEY,
    label_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS courier (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    experience INT NULL,
    phone_number VARCHAR(20) NOT NULL,

    CHECK ( experience > 0 )
);

CREATE TABLE IF NOT EXISTS category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS commodity (
    id SERIAL PRIMARY KEY,
    name VARCHAR(512) NOT NULL,
    weight INT NOT NULL,
    price INT NOT NULL
);

CREATE TABLE IF NOT EXISTS commodity_category (
    commodity_id INT NOT NULL,
    category_id INT NOT NULL,

    PRIMARY KEY (commodity_id, category_id),
    FOREIGN KEY (commodity_id) REFERENCES commodity (id),
    FOREIGN KEY (category_id) REFERENCES category (id)
);

CREATE TABLE IF NOT EXISTS commodity_label (
    commodity_id INT NOT NULL,
    label_id INT NOT NULL,

    PRIMARY KEY (commodity_id, label_id),
    FOREIGN KEY (commodity_id) REFERENCES commodity (id),
    FOREIGN KEY (label_id) REFERENCES label (id)
);

CREATE TABLE IF NOT EXISTS office (
    id SERIAL PRIMARY KEY,
    address VARCHAR(512) NOT NULL,
    max_weight_available INT NULL
);

CREATE TABLE IF NOT EXISTS orders (
    id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    commodity_id INT NOT NULL,
    delivery_status_id INT NOT NULL,
    office_id INT NOT NULL,
    courier_id INT NOT NULL,
    number_of_products INT NOT NULL,
    date_get DATE NOT NULL,

    FOREIGN KEY (commodity_id) REFERENCES commodity (id),
    FOREIGN KEY (customer_id) REFERENCES customers (id),
    FOREIGN KEY (delivery_status_id) REFERENCES delivery_status (id),
    FOREIGN KEY (office_id) REFERENCES office (id),
    FOREIGN KEY (courier_id) REFERENCES courier (id),
    CHECK ( number_of_products > 0 ),
);

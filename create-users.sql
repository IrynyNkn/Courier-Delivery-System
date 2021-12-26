CREATE USER delivery_admin WITH ENCRYPTED PASSWORD 'another-password';
GRANT ALL PRIVILEGES ON DATABASE "delivery-system" TO delivery_admin;

CREATE USER office_manager WITH ENCRYPTED PASSWORD 'manager-password';
GRANT SELECT ON orders, office TO office_manager;
GRANT INSERT ON orders TO office_manager;

CREATE USER courier WITH ENCRYPTED PASSWORD 'courier-password';
GRANT SELECT ON orders, office TO courier;


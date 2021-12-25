CREATE USER delivery_viewer WITH ENCRYPTED PASSWORD 'some-pass';
GRANT SELECT ON ALL TABLES IN SCHEMA "delivery-system".public TO delivery_viewer;
GRANT SELECT ON ALL SEQUENCES IN SCHEMA "delivery-system".public TO delivery_viewer;

CREATE USER delivery_admin WITH ENCRYPTED PASSWORD 'another-pass';
GRANT ALL PRIVILEGES ON DATABASE "delivery-system" TO delivery_admin;

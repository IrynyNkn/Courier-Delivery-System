CREATE OR REPLACE FUNCTION export_orders_to_csv_by_date()
    RETURNS VOID
    LANGUAGE plpgsql
    AS
$$
    DECLARE cur_date VARCHAR;
    DECLARE destination_filename VARCHAR;

    BEGIN
        FOR cur_date IN (SELECT DISTINCT get_orders_details.date_get FROM get_orders_details)
        LOOP
            SELECT concat('C:\Users\Public\data\', cur_date, '.csv') INTO destination_filename;

            EXECUTE format('
                COPY (
                         SELECT * FROM get_orders_details
                         WHERE get_orders_details.date_get = ''%s''
                     )  TO ''%s'' WITH CSV DELIMITER '','' HEADER;',
                cur_date, destination_filename);

        END LOOP;
    END;
$$;

SELECT export_orders_to_csv_by_date();
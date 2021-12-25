CREATE OR REPLACE FUNCTION check_max_office_weight_func()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    AS
$$
    DECLARE commodity_weight INT;
    DECLARE max_destination_office_weight INT;
    BEGIN
        SELECT weight FROM commodity WHERE commodity.id = New.commodity_id INTO commodity_weight;
        SELECT max_weight_available FROM office WHERE office.id = New.office_id INTO max_destination_office_weight;

        IF(commodity_weight * New.number_of_products > max_destination_office_weight)
        THEN
            RAISE EXCEPTION 'Cant add this order, because destination office cant deal with such big weight';
        ELSE
            RETURN New;
        END IF;
    END;
$$;

CREATE TRIGGER check_max_office_weight BEFORE INSERT OR UPDATE ON orders
    FOR EACH ROW EXECUTE PROCEDURE check_max_office_weight_func();

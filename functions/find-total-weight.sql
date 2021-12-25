CREATE OR REPLACE FUNCTION get_summaric_weight(commodity_id INT, qty INT)
    RETURNS INT
    LANGUAGE plpgsql
    AS
$$
    BEGIN
        RETURN qty * (SELECT weight FROM commodity WHERE commodity.id = commodity_id);
    END;
$$;
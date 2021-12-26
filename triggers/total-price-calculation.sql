CREATE OR REPLACE FUNCTION calculate_total_price()
  RETURNS TRIGGER
  LANGUAGE PLPGSQL
  AS
$$
BEGIN
	IF NEW.weight <= 10 THEN
        New.price = New.price + 50;
	END IF;

	IF NEW.weight > 10 AND  NEW.weight <= 25 THEN
        New.price = New.price + 75;
	END IF;

	IF NEW.weight > 25 AND  NEW.weight <= 50 THEN
         New.price = New.price + 100;
	END IF;

	IF NEW.weight > 50 AND  NEW.weight <= 85 THEN
         New.price = New.price + 150;
	END IF;

	IF NEW.weight > 85 THEN
	    New.price = New.price + 200;
	END IF;

	RETURN New;
END
$$;


CREATE TRIGGER calculate_total_price_trigger BEFORE INSERT OR UPDATE ON commodity
    FOR EACH ROW
    WHEN (pg_trigger_depth() < 1)
    EXECUTE PROCEDURE calculate_total_price();

INSERT INTO commodity(id, name, weight, price, quantity)
VALUES (101, 'Jeans', 14, 100, 1);

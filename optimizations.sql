CREATE INDEX commodity_weight_index ON commodity USING btree (weight);
CREATE INDEX commodity_date_get ON orders USING btree (date_get DESC);
CREATE INDEX commodity_num_of_products ON orders USING btree (number_of_products);
CREATE INDEX office_max_weight ON office USING btree (max_weight_available);

DROP INDEX commodity_weight_index;
DROP INDEX orders_date_get_idx;
DROP INDEX commodity_num_of_products;
DROP INDEX office_max_weight;
CREATE INDEX ON commodity USING btree (weight);
CREATE INDEX ON orders USING btree (date_get DESC);
CREATE INDEX ON orders USING btree (number_of_products);
CREATE INDEX ON office USING btree (max_weight_available);
use product_search;

drop view if exists product_name;
CREATE VIEW product_name AS
SELECT products.pdname AS phone,product_img.class AS p_name FROM products,product_img WHERE products.pdid = product_img.pdid ;

SELECT * FROM product_name;
SELECT *
FROM customers

CREATE INDEX postalCode ON customers(postalCode);

DROP INDEX postalCode ON customers



SELECT *
FROM products

ALTER TABLE products  
ADD FULLTEXT(productLine);

SELECT productName, productline
FROM products
WHERE MATCH(productline) AGAINST('Classic');


SELECT productName, productline
FROM products
WHERE MATCH(productline) AGAINST('Classic,Vintage');}

SELECT productName, productline
FROM products
WHERE MATCH(productline) 
AGAINST('Classic,Vintage' IN NATURAL LANGUAGE MODE)

ALTER TABLE products 
ADD FULLTEXT(productName);

SELECT productName, productline
FROM products
WHERE MATCH(productName) AGAINST('1932,Ford')




-- EJERCICIOS

-- 1
SELECT * 
FROM address a1
WHERE postal_code IN (SELECT postal_code
					  FROM address a2
					  WHERE a1.address_id <> a2.address_id
					  AND a1.address_id > a2.address_id);
					  
CREATE INDEX address_index ON address(postal_code);

-- After the creation of the index, the query performance improved by ~110ms 
-- 2

SELECT *
FROM actor

SELECT *
FROM actor
WHERE first_name IN ('ED')

SELECT *
FROM actor
WHERE last_name IN ('DAVIS')

-- I supposed that the last_name should go faster for the index

-- 3
SELECT *
FROM film
WHERE description LIKE '%Astounding%';

ALTER TABLE film_text 
ADD FULLTEXT(description);

SELECT *
FROM film_text
WHERE MATCH(description) AGAINST('Astounding');
-- Perfomance with MATCH..AGAINST is arround 4x better since it is working with the fulltext index.
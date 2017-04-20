SELECT MIN(last_name)
FROM customer, payment
WHERE customer.customer_id = payment.customer_id
AND customer.last_name LIKE ´R%´;


SELECT COUNT(*)
FROM inventory
WHERE store_id = 1;


SELECT COUNT (DISTINCT film_id)
FROM inventory
WHERE store_id = 1;


SELECT AVG(length)
FROM film, inventory
WHERE film.film_id = inventory.film_id
AND inventory.store_id = 1;


SELECT AVG(length)
FROM film
WHERE film_id IN (SELECT film_id FROM inventory WHERE store_id = 1);


SELECT str1.av
FROM (SELECT AVG(length) av
		FROM film
		WHERE film_id IN(SELECT film_id FROM inventory WHERE store_id = 1)) AS str1;


SELECT str1.av - other_stores.av
FROM(
SELECT AVG(length)av
FROM film
WHERE film_id IN (SELECT film_id
					FROM inventory
					WHERE store_id = 1)) AS str1,
(SELECT AVG (length) av
FROM film
WHERE film_id NOT IN (SELECT film_id
						FROM inventory
						WHERE store_id = 1)) as others_stores;					

SELECT DISTINCT
(SELECT AVG(length)av
FROM film
WHERE film_id IN (SELECT film_id
					FROM inventory
					WHERE store_id = 1))
					-
(SELECT AVG (length) av
FROM film
WHERE film_id NOT IN (SELECT film_idAS str1,
						FROM inventory
						WHERE store_id = 1)) as diff_avg
FROM film;



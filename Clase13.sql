SELECT MAX(address_id)
FROM address 
INNER JOIN city USING(city_id)
INNER JOIN country USING(country_id)
WHERE country = "United States";



INSERT INTO sakila.customer
(store_id, first_name, last_name, email, address_id, active, create_date)
VALUES(1,  'LUCAS', 'CHERUBINI', 'example@hotmail.com', 599, 1, CURRENT_TIMESTAMP);






SELECT MAX(inventory_id)
FROM film
INNER JOIN film USING(film_id)
WHERE title = 'ACADEMY DINOSAUR';



SELECT manager_staff_id
FROM store
WHERE store_id = 2 ;



INSERT INTO sakila.rental
(inventory_id, customer_id, return_date, staff_id, last_update)
VALUES(8, 2, CURRENT_TIMESTAMP, 2, CURRENT_TIMESTAMP);






UPDATE film
SET film.release_year = 2001
WHERE rating = 'G';

UPDATE film
SET film.release_year = 1938
WHERE rating = 'PG';

UPDATE film
SET film.release_year = 1945
WHERE rating = 'R';

UPDATE film
SET film.release_year = 1991
WHERE rating = 'NC-17';

UPDATE film
SET film.release_year = 2007
WHERE rating = 'PG-13';






SELECT inventory_id
FROM inventory
WHERE film_id = 999;

-- Inventory_id = 4569, 4570, 4571, 4572, 4573

DELETE FROM rental
WHERE inventory_id IN (4569, 4570, 4571, 4572, 4573);

DELETE FROM inventory
WHERE film_id = 999;

DELETE FROM film_actor
WHERE film_id = 999;

DELETE FROM film_category
WHERE film_id = 999;

DELETE FROM film
WHERE title = "Zoolander Fiction";
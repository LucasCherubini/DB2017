SELECT f.title, f.special_features, f.rental_rate,c.name
FROM film f, film_category fc, category c
WHERE fc.category_id = c.category_id
ORDER BY f.rental_rate DESC, f.special_features ASC



SELECT f1.title, f2.title, f1.`length`
FROM film f1, film f2
WHERE f1. `length` = f2.`length` AND f1.title_id <> f2.title_id




1)
SELECT  title, special_features
FROM film
WHERE rating NOT LIKE `PG-13`;


2)
SELECT DISTINTC `length`  
FROM film;


3)
SELECT title, rental_date, repacement_cost 
FROM film 
WHERE replacement_cost BETWEEN 20.00 AND 24.00;


4)
SELECT title, special_features, rating, category.name 
FROM film, category, film_category
WHERE category.category_id = film_category.category_id AND film.film_id = film_category.film_id
AND special_features LIKE `%Behind the Scenes`;


5)
SELECT first_name, last_name 
FROM actor, film, film_actor
WHERE actor.actor_id = film_actor.actor_id
AND film_actor.film_id = film.film_id
AND title LIKE `%ZOOLANDER FICTION`;


6)
SELECT address, city, country
FROM store, country, city, address
WHERE store.store_id = 1
AND store.address_id = address.address_id
AND address.city_id = city.city_id
AND city.country_id = country.country_id;


7)



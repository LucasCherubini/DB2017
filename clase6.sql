
-- 1)
SELECT last_name, first_name
FROM actor a1
WHERE EXISTS (SELECT *
				FROM actor a2
				WHERE a1.last_name = a2.last_name
				AND a1.actor_id <> a2.actor_id)
ORDER BY last_name;


-- 2)
SELECT first_name, last_name
FROM actor a1
WHERE actor_id NOT IN(SELECT DISTINCT actor_id
				FROM film_actor);

				
-- 3)
SELECT first_name, last_name
FROM customer c1
WHERE NOT EXISTS (SELECT*
					FROM  rental r1, customer c2
					WHERE c2.customer_id = r1.customer_id
					AND c1.customer_id <> c2.customer_id);
					
SELECT c.customer_id , c.first_name, c.last_name
FROM rental r1, customer c
WHERE NOT EXISTS (SELECT *
					FROM rental 2
					WHERE r1.customer_id = r2.customer_id
					AND r1.rental_id <> r2.rental_id)
AND r1.customer_id = c.customer_id
ORDER BY 1;


-- 4)
SELECT c.customer_id , c.first_name, c.last_name
FROM rental r1, customer c
WHERE c.customer_id = r1.customer_id
AND EXISTS (SELECT *
				FROM rental.r2
				WHERE r1.customer_id = r2.customer_id
				AND r1.rental_id <> r2.rental_id)
AND r1.customer_id = c.customer_id;
				
				
-- 5)
SELECT first_name, last_name
FROM actor a1
WHERE a1.actor_id IN(SELECT *
					   FROM actor, file_actor fa1, film f1
					  WHERE a1.actor_id = fa1.actor_id
					  AND fa1.actor_id = f1.film_id
					  AND f1.title = `BETRAYED REAR` OR f1.title=`CATCH AMISTAD`)


-- 6)
SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id IN (SELECT actor.actor_id
					FROM film_actor, actor, film
					WHERE actor.actor_id = film_actor.actor.acotr_id
					AND film.film_id = 	film_actor.film_id
					AND title = `BETRAYED REAR`)
AND actor_id NOT IN (SELECT actor.actor_id
						FROM film_actor, actor, film
						WHERE actor.actor_id = film_actor.actor_id
						AND film.film_id = film_actor.file_id
						AND title= `CATCH AMISTAD`); 						
					  
					  
-- 7)
SELECT first_name, last_name
FROM actor a1
WHERE a1.actor_id IN(SELECT *
					   FROM actor, file_actor fa1, film f1
					  WHERE a1.actor_id = fa1.actor_id
					  AND fa1.actor_id = f1.film_id
					  AND f1.title = `BETRAYED REAR` AND f1.title=`CATCH AMISTAD`);					  
-- TEST CASE
SET @names= "";
CALL MyStoredProcedure('Argentina', @names);
SELECT @names; 




-------------------------------------------------------------------------------------------------------------------------------------------------------------



CREATE DEFINER=root`@`localhost FUNCTION sakila.Films_rent_retu(name VARCHAR(64), last_name VARCHAR(64)) RETURNS varchar(256) CHARSET latin1
BEGIN

DECLARE total VARCHAR(256);

SET total = (SELECT CONCAT_WS(' ',COUNT(rental_id), COUNT(return_date))
FROM rental
JOIN customer USING(customer_id)
WHERE name = first_name
AND last_name = last_name);

RETURN (total);

END
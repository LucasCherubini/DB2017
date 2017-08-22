CALL GetAllProducts();

CALL GetOfficeByCountry('USA');

CALL CountOrderByStatus('Shipped',@total);
SELECT @total;

CALL CountOrderByStatus('in process',@total);
SELECT @total AS  total_in_process;


CALL get_order_by_cust(141,@shipped,@canceled,@resolved,@disputed);
SELECT @shipped,@canceled,@resolved,@disputed;


SET @customerNo = 112;

SELECT country into @country
FROM customers
WHERE customernumber = @customerNo;

CALL GetCustomerShipping(@customerNo,@shipping);

SELECT @customerNo AS Customer,
       @country    AS Country,
       @shipping   AS Shipping;
       
       
       
SET @email_list = "";
CALL build_email_list(@email_list);
SELECT @email_list;


CALL test_mysql_loop();

-- EJERCICIOS 
1)
CREATE DEFINER=`root`@`localhost` FUNCTION `sakila`.`TotalFilms`(id INT , store INT) RETURNS int(11)
    DETERMINISTIC
BEGIN
	
	DECLARE total INT;
	
	SELECT COUNT(id) INTO total 
	FROM film
	JOIN inventory USING (film_id)
	JOIN store USING (store_id)
	WHERE store_id = store
	AND id = film_id
	GROUP BY film_id;	
	
	RETURN (total);
	
END

////////////////////////////////////////// 

SELECT TotalFilms(6, 2, "AMERICAN CIRCUS")


2)
SELECT GROUP_CONCAT(first_name, " " ,last_name SEPARATOR "; ") FROM customer
	INNER JOIN address USING(address_id)
	INNER JOIN city USING(city_id)
	INNER JOIN country USING(country_id);
	
	
	
CALL customerList("Argentina", @p_customerList);

SELECT @p_customerList;



set @List = "";

CALL customerList("Argentina", @List);

SELECT @List;


-- Function2


CREATE DEFINER=`root`@`%` PROCEDURE `sakila`.`customerList`(
    IN  p_countryName VARCHAR(24),
    OUT p_customerList  TEXT
)
BEGIN
   SELECT GROUP_CONCAT(first_name, " " ,last_name SEPARATOR "; ") INTO p_customerList FROM customer
	INNER JOIN address USING(address_id)
	INNER JOIN city USING(city_id)
	INNER JOIN country USING(country_id)
	WHERE country = p_countryName;
END


3)
 
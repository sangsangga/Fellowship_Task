select title, description from film
where lower(description) like '%astronaut%' or lower(description) like 'astronaut%' 
;

--1
SELECT title, description FROM film   WHERE fulltext @@ to_tsquery('astronaut');

--2
select 
	*
from film 
	where rating = 'R' and replacement_cost between 5 and 15;
	
--3
select 
	sum(amount)
	count(payment_id),
	staff_id 
from payment 
group by staff_id ;

--4
SELECT 
	rating,
	AVG(replacement_cost) avg_replacement_cost  
FROM 
	film
group by
	1;
--5
SELECT 
	customer.customer_id,
	customer.first_name,
	customer.email,
	SUM(payment.amount) Total_Amount 
FROM 
	customer
JOIN
	payment ON payment.customer_id  = customer.customer_id
GROUP BY 
	customer.customer_id
ORDER BY 
	4 DESC
LIMIT
	5;

--6
SELECT 
	f.title,
	COUNT(i.inventory_id) Total_Stock
FROM 
	inventory i
JOIN
	film f ON f.film_id = i.film_id
GROUP BY 
	1
ORDER BY
	1 ASC;

--7	
SELECT
	c.customer_id, 
	c.first_name,
	c.email,
	COUNT(p.payment_id) total_transaction
FROM
	customer c 	
JOIN
	payment p ON p.customer_id = c.customer_id 	
GROUP BY
	1
HAVING
	COUNT(p.payment_id ) > 39	
ORDER BY
	2 DESC;

	
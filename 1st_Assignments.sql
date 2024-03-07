
-- 1 Assignments 
use mavenmovies;
--- 2. List all details of actors  
 select * from actor;
 --- 3. List all customer informations from DB
 select * from customer;
 --- 4. List different countries
 select distinct country from country;
 -- 5. Display all active customers -NO
select  * from customer where active =0 ;
 -- 6. List of all rental IDs for customer with ID 1.
 Select * from rental where customer_id =3;
 select distinct customer_id from rental;
 -- 7. Display all the films whose rental duration is greater than 5
 select distinct title as film  from film where rental_duration > 5;
 -- 8 List the total number of films whose replacement cost is greater than $ 15 and less than $ 20.
select count(distinct title) as total_films from film where replacement_cost > 15 and replacement_cost < 20;
-- 9. Dispaly the count of unique first names of actors
  select count(distinct first_name) as unique_first_name_count from actor;
-- 10 Display the first 10 records from the customer table
select * from customer LIMIT 10;
-- 11 Display the first 3 records from the customer table whose first name starts with 'b'
select * from customer where first_name like 'b%' LIMIT 3;
-- 12 Display the names of the first 5 movies which are rated as 'G'
select title as Movie_name from film where rating LIKE 'G' LIMIT 5;
-- 13 Find all customers whose first name starts with 'a'
select first_name from customer where first_name like 'a%';
-- 14 Find all customers whose first name ends with "a" 
select first_name from customer where first_name like '%a';
-- 15 Display the list of first 4 cities which start and end with 'a'
select city from city where city like 'a%a' LIMIT 4;
-- 16 Find all customers whose first name have "NI in any position
select first_name from customer where first_name like '%NI%'; 
-- 17 Find all customers whose first name have "r" in the second position
select first_name from customer where first_name like '_r%';
SELECT first_name
FROM customer
WHERE SUBSTRING(first_name, 2, 2) = 're';
-- 18 Find all customers whose first name starts with "a" and are at least 5 characters in lenght
select first_name from customer where first_name like 'a%' and LENGTH(first_name)>=5;
-- 19 Find all customers whose first name starts with "a" and ends with "o"
select first_name from customer where first_name like 'a%o';
-- 20 Get the fimls with pg and pf-13 rating using IN operator
SELECT title, rating
FROM film
WHERE rating IN ('PG', 'PG-13');

-- 21 Get the films with length between 50 to 100 using between operator
select title, length from film where length between 50 and 100;
-- 22 Get the top 50 actors using limit operator
select actor_id, First_name, last_name  from actor limit 50;
-- 23 Get the distinct film ids from inventory
 select distinct film_id  from inventory;




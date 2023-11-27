use mavenmovies;
-- Q1. Identify the primary key and foreign keys in maven movies db. discuss the differences. --

describe actor;
-- In actor table actot_id is the primary key and last_name is the foreign key.alter--

describe actor_award;
-- In actor_award table actor_award_id is the primary key and laast_name is the foreign key.--

describe address;
-- In adress address_id is the primary key and city_id is the foreign key.--

describe advisor;
-- advisior_id is the primary key , foreign key is not avalible this table --

describe category;
-- category_id is the primary key , foreign key is not avalible in this table--

describe city;
-- city_id is the primary key and country_id is the foreign key in this table --

describe country;
-- country_id is the primary key , foreign key is not avalible in this table --

describe customer;
-- customer_id is the primary key and store_id , last_name , address_id is the foreign key in this table--

describe film;
-- film_id is the primary key and title , language_id, original_language_id is the foreign key in this table --

describe film_actor;
-- actor_id and film_id are the primary key in this table--

describe film_category;
-- primary key - film_id and category_id --
-- foreign key is not avalible in this table --

describe film_text;
-- primary key - film_id --
-- foreign key - title --

describe inventory;
-- primary key :- inventory_id --
-- foreign key :- film_id , store_id -- 

describe investor;
-- primary key :- invesator_id --
-- foreign key :- not avalible --

describe language;
-- primary key :- language_id --
-- foreign key :- not avalible --

describe payment ;
-- primary key :- payment_id --
-- foreign key :- customer_id , staff_id , rental_id --

describe rental;
-- primary key :- rental_id --
-- foreign key :- rental-date , inventory_id , customer_id , staff_id --

describe staff; 
-- primary key :- staff_id --
-- foreign key :- address_id , store_id --

describe store;
-- primary key :- store _id --
-- foreign key :- address_id --

-- Primary key :- It is a type of key which is used to uniquely identify the data present in the table --
-- 2. it should be always unique and not null. 
-- Foreign key :- foreign key is a set of attributes in a table which provides a link between data in a table.
-- 2. it act like a primary key in the parent table and it can be null. 

-- Q2. List all details of actors. 
select * from actor;
-- In actor table there are four column which are actor_id , first_name , last_name and last_update
describe actor;
-- actor_id is the primary key and last_name is the foreign key and last_update has default (current_timestamp) value in it. 

-- Q3. List all customer information from DB. 
select * from customer;
-- In customer table there are Nine column in it which are customer_id , store_id , first_name , email, address_id, active, last_name, create_date, last_update. 
describe customer;
-- customer_id is the primary key and first_name, last_name, adress_id are the foreign key and last_update has default(current timestamp) value in it. 
-- customer_id also have auto_increment in it. 

-- Q4. list different countries.
select * from country;
select distinct country from country;

-- Q5. Display all active customers. 
select * from customer;
select distinct active from customer;
select first_name, last_name, active from customer where active = 1;

-- Q6. List of all rental IDs for customer with ID 1. 
select * from rental; 
select rental_id , customer_id from rental where customer_id = 1;

-- Q7. Display all the films whose rental duration is greater than 5.
select* from film;
select * from film where rental_duration > 5;

-- Q8. List the total number of films whose replacement cost is greater than $15 and less than $20.
select * from film;
select * from film where replacement_cost >15;
select count(*)from film where replacement_cost >15;
select* from film where replacement_cost <20;
select count(*) from film where replacement_cost <20;

-- Q9. Find the  number of films whose rental rate is less than $1.
select * from film; 
select count(*) from film where rental_rate < 1;

-- Q10. Display the count of unique first names of actors. 
select * from actor;
select count(distinct (first_name)) as unique_name  from actor;

-- Q11. Display the first 10 records from the customer table.
select * from customer;
select * from customer limit 10;

-- Q12. Display the first 3 records from the customer table whose first name starts with "b".
select * from customer;
select * from customer where first_name like "b%" limit 3;

-- Q13. display the names of the first 5 movies which are rated as 'g'. 
select* from film;
select title,rating from film where rating = 'g' limit 5;

-- Q14. Find all customers whose first name starts with "a". 
select* from customer;
select * from customer where first_name like 'a%';

-- Q15.  Find all customers whose first name ends with "a". 
select * from customer where first_name like '%a';

-- Q16. Display the list of first 4 cities which start and end with 'a'. 
select* from city; 
select * from city where city like 'a%a';

-- Q17. find all customer whose first name have 'NI' in any position.
select* from customer ;
select* from customer where first_name like '%ni%';

-- Q18. find all customers whose first name have 'r' in the second position. 
select* from customer where first_name like '_r%';

-- Q19. find all customers whose first name starts with 'a' and are at least 5 characters in length . 
select* from customer where first_name like 'a____';

-- Q20.  find all customers whose first name starts with 'a' and ends with 'o'. 
select* from customer where first_name like 'a%o';

-- Q21. Get the films with pg and pg-13 rating using IN operator.
select* from film;
select * from film where rating in (pg , pg-13);

-- Q22.Get the films with length between 50 to 100 using between operator. 
select* from film;
select* from film where length between 50 and 100; 

-- Q23. get the top 50 actors using limit operator. 
select * from actor;
select* from actor limit 50;

-- Q24.get the distinct films ids from inventory table.
select * from inventory;
select distinct film_id from inventory;
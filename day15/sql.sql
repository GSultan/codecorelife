-- morning 15s!
-- this is a SQL comment

-- this is how you create a table in SQL
CREATE TABLE `students` (
	`id`	INTEGER,
	`first_name`	TEXT,
	`last_name`	TEXT,
	`email`	TEXT,
	`age`	INTEGER,
	PRIMARY KEY(`id`)
);

-- insert records into our database
INSERT INTO `students`(`id`,`first_name`,`last_name`,`email`,`age`)
VALUES (NULL,NULL,NULL,NULL,NULL);

-- read
-- * means all or everything
SELECT * FROM students WHERE first_name = 'Jacob';

-- update
-- altering our TABLE
-- changing the values in our records
ALTER TABLE students ADD COLUMN phone_number TEXT;

SELECT last_name, age, email FROM students WHERE name = 'Jacob';
SELECT last_name, age, email FROM students WHERE age > 20;

-- LIMIT will limit the results to x number of records
SELECT * FROM students LIMIT 100;

SELECT * FROM students WHERE id > 1000 LIMIT 100;

SELECT * FROM students
WHERE registration_date > '2016-01-01'
AND registration_date < '2016-03-01';

SELECT * FROM students WHERE age=20 OR age=30;
SELECT * FROM students WHERE age > 20 AND age < 30;

SELECT * FROM students WHERE id > 100 AND id < 200;

--Select all students that have registered between 100 days ago and 105 days ago

--SELECT * FROM students WHERE age > 25 AND age < 35;
SELECT * FROM students WHERE age BETWEEN 25 AND 35;

--SELECT * FROM students WHERE first_name LIKE '%J%' AND first_name ILIKE '%nn%';
-- SELECT * FROM students WHERE first_name ILIKE '%ph';

-- % is a wildcard, can be used in the front or back of the string pattern
-- LIKE is case sensitive
-- ILIKE is case insensitive
--SELECT * FROM students WHERE first_name LIKE '%jo%';

--SELECT * FROM students ORDER BY first_name DESC;
--SELECT * FROM students WHERE age IS NULL OR age < 20 ORDER BY age DESC;

--SELECT * FROM students WHERE registration_date < NOW();
--INTERVAL '100' DAY

--SELECT * FROM students WHERE age > 40 OR age < 20;

--SELECT * FROM students WHERE id > 100 AND id < 200;

--SELECT * FROM students WHERE age=20 OR age=30;
--SELECT * FROM students WHERE age > 20 AND age < 30;
--SELECT * FROM students
--WHERE registration_date > '2016-01-01'
--AND registration_date < '2016-03-01';

--SELECT * FROM students WHERE registration_date < NOW();
--INTERVAL 100 DAY
--AND (NOW() - INTERVAL 100 DAY);

--SELECT * FROM students WHERE age > 40 LIMIT 100;
--SELECT * FROM students WHERE id > 1000 LIMIT 100;

--Select all students that have registered between 100 days ago and 105 days ago
--SELECT * FROM students WHERE registration_date BETWEEN '2016-01-01' AND '2016-03-01';

SELECT * FROM students
WHERE registration_date
BETWEEN (NOW() - INTERVAL '300' DAY) AND (NOW() - INTERVAL '200' DAY);

SELECT ROUND(AVG(age)) AS average_age_of_students FROM students WHERE registration_date > '2016-01-01';
--SELECT SUM(age) AS total_life_experience FROM students;
--SELECT COUNT(*) AS num_of_students_older_than_25 FROM students WHERE age > 25;-- ORDER BY id; -- WHERE age > 25 OFFSET 20 LIMIT 20;
--SELECT * FROM students OFFSET 20 LIMIT 10;
--SELECT * FROM students OFFSET 0 LIMIT 10;
--SELECT * FROM students WHERE first_name ILIKE 'ke%' OFFSET 10 LIMIT 10;
--Find students whose ages are more than 30 ordered by their first names then last names
--SELECT * FROM students WHERE age > 30 ORDER BY first_name, last_name;

-- REST - Representational State Transfer
-- GET POST PATCH DELETE

-- CRUD
-- CREATE READ UPDATE DELETE
-- * means all or everything
--SELECT last_name, age, email FROM students WHERE age > 20

--UPDATE
--UPDATE  students SET first_name = 'Bill' WHERE id = '2';
--SELECT * FROM students;

--DELETE
--DELETE FROM students WHERE id = 3;
--SELECT * FROM students;
DROP TABLE students;

SELECT age, count(*) FROM students GROUP BY age ORDER BY count DESC;
--Find the average age of every first name in the database
--SELECT first_name, ROUND(AVG(age)) as average_age FROM students GROUP BY first_name;
--abagail avg 61
--TEST CASE
--SELECT * FROM students WHERE first_name = 'Abagail';

--WHO IS THE OLDEST STUDENT IN OUR DB?
--SELECT MAX(age) AS oldest_student FROM students;
--SELECT MAX(age) AS oldest_student FROM students WHERE first_name = 'John';
--SELECT COUNT(*) FROM students WHERE first_name ILIKE '%jo%';
--There are 50 students who have first names that contain 'jo'
--John, 1
--Abigail, 2
--What is the most popular student first name?
--SELECT first_name AS unique_first_names, COUNT(*) as occurrances
--FROM students GROUP BY first_name ORDER BY occurrences DESC;

--SELECT ROUND(AVG(age)) AS average_age_of_students FROM students WHERE registration_date > '2016-01-01';
--SELECT SUM(age) AS total_life_experience FROM students;
--SELECT COUNT(*) AS num_of_students_older_than_25 FROM students WHERE age > 25;-- ORDER BY id; -- WHERE age > 25 OFFSET 20 LIMIT 20;
--SELECT * FROM students OFFSET 20 LIMIT 10;
--SELECT * FROM students OFFSET 0 LIMIT 10;
--SELECT * FROM students WHERE first_name ILIKE 'ke%' OFFSET 10 LIMIT 10;
--Find students whose ages are more than 30 ordered by their first names then last names
--SELECT * FROM students WHERE age > 30 ORDER BY first_name, last_name;

--SELECT * FROM students WHERE first_name ILIKE '%jo%' ORDER BY last_name, age;
--ORDER BY
--SELECT * FROM students ORDER BY first_name;
--SELECT * FROM students ORDER BY first_name, last_name;

--WHO IS THE OLDEST STUDENT IN OUR DATABASE?
--99
--WHO IS OUR YOUNGEST STUDENT ?
--NULL!??!
--10

--Select all students that have registered between 100 days ago and 105 days ago
--SELECT * FROM students WHERE registration_date BETWEEN '2016-01-01' AND '2016-03-01';

--SELECT * FROM students
--WHERE registration_date
--BETWEEN (NOW() - INTERVAL '300' DAY) AND (NOW() - INTERVAL '200' DAY);

--SELECT * FROM students WHERE age > 25 AND age < 35;
--When using between, make sure your lower range is specified first
--SELECT * FROM students WHERE age BETWEEN 35 AND 40;

--SELECT * FROM students WHERE first_name LIKE '%J%' AND first_name ILIKE '%nn%';
-- SELECT * FROM students WHERE first_name ILIKE '%ph';

-- % is a wildcard, can be used in the front or back of the string pattern
-- LIKE is case sensitive
-- ILIKE is case insensitive
--SELECT * FROM students WHERE first_name LIKE '%jo%';

--SELECT * FROM students ORDER BY first_name DESC;
--SELECT * FROM students WHERE age IS NULL OR age < 20 ORDER BY age DESC;

--SELECT * FROM students WHERE registration_date < NOW();
--INTERVAL '100' DAY

--SELECT * FROM students WHERE age > 40 OR age < 20;

--SELECT * FROM students WHERE id > 100 AND id < 200;

--SELECT * FROM students WHERE age=20 OR age=30;
--SELECT * FROM students WHERE age > 20 AND age < 30;
--SELECT * FROM students
--WHERE registration_date > '2016-01-01'
--AND registration_date < '2016-03-01';

--SELECT * FROM students WHERE registration_date < NOW();
--INTERVAL 100 DAY
--AND (NOW() - INTERVAL 100 DAY);

--SELECT * FROM students WHERE age > 40 LIMIT 100;
--SELECT * FROM students WHERE id > 1000 LIMIT 100;


--



--

SELECT products.*, orders.completed_on FROM products
  INNER JOIN line_items ON line_items.product_id = products.id
  INNER JOIN orders ON orders.id = line_items.order_id

SELECT products.*, orders.completed_on FROM products
  LEFT JOIN line_items ON line_items.product_id = products.id
  LEFT JOIN orders ON orders.id = line_items.order_id
  --Write the following SQL Queries:
--1- Find the average total price for orders that were completed last month
--[Note] the price in the line_items table is price per unit and not total price

-- THIS SHOWS THE PRICE QUANTITY PRODUCT ID AND COMPLETED ON
SELECT AVG(price)*AVG(quantity) FROM line_items
INNER JOIN orders ON line_items.order_id = orders.id
WHERE completed_on > '2016-09-07';

-----------------
--2- Select product titles and prices that sold last month and the lowest they were sold at.

SELECT name, line_items.price, products.price FROM line_items
INNER JOIN orders ON line_items.order_id = orders.id
INNER JOIN products ON products.id = line_items.product_id
WHERE completed_on > '2016-09-07'
ORDER BY line_items.price ASC
LIMIT 100;
------------------------
SELECT SUM(remaining_quantity+quantity) FROM products
INNER JOIN line_items ON products.id = line_items.product_id;
--- how many products have we ever had in inventory?

---------------------
SELECT AVG(price*quantity) FROM line_items
-- this is the average order total price for all the orders in the system
-------------
--2- Select the top 10 products in terms of gross sales last year
SELECT product_id, line_items.price*line_items.quantity AS gross_sales FROM line_items
INNER JOIN orders ON line_items.order_id = orders.id
WHERE completed_on > '2015-10-07'
ORDER BY gross_sales DESC
Limit 10;
--3 - Select all the products that weren't purchased during the last year
--[Note] the price in the line_items table is price per unit and not total price
SELECT * FROM products
LEFT JOIN line_items ON line_items.product_id = products.id
WHERE order_id IS NULL
LIMIT 100;
-------------------

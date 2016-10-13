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

-- can only show specific fields
SELECT last_name, age, email FROM students WHERE last_name = "Viner"

-- can use operators like
SELECT last_name, age, email FROM students WHERE age > "20"
-- or
SELECT last_name, age, email FROM students WHERE last_name != "Chan"
-- can limit results to a number
SELECT last_name, age, email FROM students WHERE last_name != "Chan" limit 100
-- select using a range
SELECT * FROM students WHERE registration_date
BETWEEN (NOW() - INTERVAL '400' DAY)
AND (NOW() - INTERVAL '105' DAY)

--  see the next
20 OFFSET 20 LIMIT 20
-- get a count going
SELECT COUNT(*) AS number_of_students FROM students
-- sum up things
SELECT SUM(age) AS total_life_experience FROM students;
-- find the average age of every first_name in the databases
SELECT first_name, ROUND(AVG(age)) as average_age FROM students GROUP BY first_name;

-- DELETE records
DELETE FROM students WHERE id=1068
-- INSERT A RECORD
INSERT INTO students(first_name, last_name, age, email, phone_number)
VALUES ('Guy', 'Viner', 28, 'guy@viner.com', 11348008);
-- FETCH THE LAST RECORD BASED ON REGISTRATION DATE
SELECT * FROM students ORDER BY registration_date DESC LIMIT 2;
-- UPDATE THE RECORD
UPDATE students SET age = 50 WHERE id = 1074;
-- SELECT RECORD WHERE NAME INCLUDES VINER CASE INSENSITIVE
SELECT * FROM students WHERE last_name ILIKE 'viner';
--2- Select the third set of 10 students whose ages are more than 25 and whose first names contain `th`.
--The students must be ordered by their id then first name in a descending order.
SELECT * FROM students WHERE age > 25 AND first_name ILIKE '%th%' ORDER BY id, first_name DESC OFFSET 20 LIMIT 10;
-- BY age
SELECT * FROM students WHERE age != NULL ORDER BY age, last_name DESC LIMIT 10;
--4- Select all students with age 45 whose last names contain the letter n
SELECT * FROM students WHERE age = 45 AND last_name ILIKE '%n%'
-- 5- Select all the products that are on sale
SELECT * FROM products WHERE sale_price is not NULL;
-- 6- Select all the products that are on sale and have remaining items in stock ordered by the sale price in ascending order
SELECT * FROM products WHERE remaining_quantity != 0 ORDER BY sale_price ASC;
-- 7- Select all the products priced between 25 and 50 (regular price) and that are on sale
SELECT * FROM products WHERE price BETWEEN 25 and 50 AND sale_price is not NULL;
--1- Find the number of students named 'Milton'.
SELECT COUNT(*) FROM students WHERE first_name = 'Milton';
--2- List the `first_name`s that occur more than once in students, with the number occurrences of that name.
SELECT COUNT(first_name), first_name
FROM students
GROUP BY first_name
HAVING COUNT(first_name) > 1
ORDER BY COUNT(first_name) DESC;
-- 3- Refine the above query to list the 20 most common first_names among students, in order first of how common they are, and alphabetically when names have the same count.
SELECT COUNT(first_name), first_name
FROM students
GROUP BY first_name
HAVING COUNT(first_name) > 1
ORDER BY COUNT(first_name) DESC, first_name ASC LIMIT 20;
-- From the products table:
-- 1- Find the most expensive product
SELECT * FROM products ORDER BY price DESC LIMIT 1;
-- 2- Find the cheapest product that is on sale
SELECT * FROM products WHERE sale_price is not NULL ORDER BY price ASC LIMIT 1;
-- 3- Find the total value of all inventory in stock (use sale price)
SELECT ROUND(SUM(sale_price)) FROM products;
-- 1- Select the product whose stock has the most value (use sale price)
SELECT name, remaining_quantity*sale_price
AS total_value
FROM products
WHERE remaining_quantity != 0 AND sale_price != 0
ORDER BY total_value DESC
LIMIT 1;
-- 2- Select the most expensive product whose price is between 25 and 50 with remaining quantity
SELECT * FROM products
WHERE price BETWEEN 25 AND 50 AND remaining_quantity > 0
LIMIT 1;
-- 3 - -- 3- Select all products on sale with remaining quantity ordered by their price and then their name
SELECT * FROM products WHERE remaining_quantity > 0 ORDER BY price, name;
--
 -- 4 4- Select the second set 20 results based on the previous query
SELECT * FROM products WHERE remaining_quantity > 0 ORDER BY price, name OFFSET 20 LIMIT 20;
-- 5 5- Find the average price of all products
SELECT ROUND(AVG(price)) FROM products;
-- 6- Find the average price of all products that are on sale
SELECT ROUND(AVG(price)) FROM products WHERE sale_price > 0;
-- 7- Find the average price of all products that are on sale with remaining quantity
SELECT ROUND(AVG(price)) FROM products WHERE sale_price > 0 AND remaining_quantity > 0;
-- 8- Update all the products whose name contains `paper` (case insensitive) to have a remaining quantity of 0
UPDATE products SET remaining_quantity = 0 WHERE name ILIKE '%paper%';
SELECT * FROM products WHERE name ILIKE '%paper%'
-- 10- Update all the products whose name contains `paper` or `steel` to have a remaining quantity of a random number
--between 5 and 25
UPDATE products SET remaining_quantity = (RANDom()*20)+5 WHERE name ILIKE '%paper%' OR name ILIKE '%steel%';
-- 11- Select the second set of 10 cheapest products with remaining quantity
SELECT * FROM products WHERE remaining_quantity > 0 ORDER BY price ASC OFFSET 10 LIMIT 10;
--12- Build a query that groups the products by their sale price and show the number of products in that price and
--the sum of remaining quantity. Label the count `product_count`
SELECT sale_price,
COUNT(remaining_quantity) AS product_count,
(sale_price*COUNT(remaining_quantity)) AS remaining_product_value
FROM products
GROUP BY sale_price
ORDER BY sale_price;
-- 13- [stretch] Update the most expensive product to have double its quantity in a single query
-- 13- [stretch] Update the most expensive product to have double its quantity in a single query
UPDATE products
SET remaining_quantity = remaining_quantity*2
WHERE price = (SELECT MAX(price) FROM products);

SELECT * FROM products ORDER BY price DESC;
---
SELECT first_name,
COUNT(*) AS occurrences
FROM students GROUP BY first_name
-- ^^ This counts all the first name and shows how many occurrences there are of each
-- select first names, count all the row info label it occurrences, from students and group by the first name, descending, limit if you want
-- This table stitches together two tables where the id matches the student_id
SELECT * FROM students INNER JOIN projects ON students.id=projects.student_id LIMIT 10;
--Does this inner join table display students who do not have projects? student_id
SELECT students.first_name, students.last_name, projects.title
FROM students
INNER JOIN projects ON projects.student_id = students.id
ORDER BY students.id;

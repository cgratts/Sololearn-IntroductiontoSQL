-- Module 3: Query Techniques

-- NOTE: The database/table used in this Module is not provided to run queries on 
-- These were created in MySQL Workbench to simulate the course queries where applicable

-- Lesson: Pattern Matching
/*
SELECT title
FROM comics
WHERE title LIKE 'The Avengers%'

SELECT *
FROM comics
WHERE title LIKE 'the Avengers%'
*/

-- Coding Practice: Chocolate

/*
A restaurant is creating a new dessert menu and wants to identify desserts with names that include the word 'chocolate'. You are given the following desserts table:

id  name                    price
---------------------------------
1   chocolate cake          6.99
2   chocolate chip cookies  3.99
3   chocolate mousse        5.99
4   strawberry cheesecake   7.99
5   vanilla ice cream       4.99
6   raspberry sorbet        4.99
7   caramel flan            5.99
8   chocolate brownie       6.99

Write a query to select the dessert name and price from the desserts table where the dessert name contains the word 'chocolate'.
*/

/*
drop table if exists desserts;
create database if not exists test;
use test;

CREATE TABLE IF NOT EXISTS `desserts` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` float(8),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10001 ;

INSERT INTO `desserts` (`id`, `name`, `price`) VALUES
(1, 'chocolate cake', 6.99),
(2, 'chocolate chip cookies', 3.99),
(3, 'chocolate mousse', 5.99),
(4, 'strawberry cheesecake', 7.99),
(5, 'vanilla ice cream', 4.99),
(6, 'raspberry sorbet', 4.99),
(7, 'caramel flan', 5.99),
(8, 'chocolate brownie', 6.99);

SELECT name, price 
FROM desserts
WHERE name LIKE 'chocolate%';

Solution:
SELECT name, price 
FROM desserts
WHERE name LIKE 'chocolate%';

Output:
name                    price
chocolate cake	        6.99
chocolate chip cookies	3.99
chocolate mousse	      5.99
chocolate brownie	      6.99
*/

-- Lesson: Advanced Pattern Matching
/*
SELECT name, code
FROM products;

SELECT name
FROM products
WHERE code LIKE 'A_B_';

SELECT LOWER(title)
FROM movies;
SELECT UPPER(title)
FROM movies;
*/

-- Lesson: SQL Conditions

/*
SELECT year, year > 2000 AS result
FROM movies;

SELECT *
FROM songs
WHERE category <> 'Jazz';
*/

-- Coding Practice: Select your Car

/*
A car rental company wants to show customers the cars available within their budget. You have the following cars table:

id    make    model     price_per_day
-----------------------------------
1     Toyota  Camry     105.50
2     Honda   Civic     95.00
3     Ford    Focus     75.25
4     Chevrolet Malibu  110.00
5     Hyundai Elantra   90.75

Write a query to select the car make, model, and price per day from the cars table where the price per day is less than or equal to $100.
*/

/*
drop table if exists cars;
create database if not exists test;
use test;

CREATE TABLE IF NOT EXISTS `cars` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `make` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `price_per_day` float(8),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10001 ;

INSERT INTO `cars` (`id`, `make`, `model`, `price_per_day`) VALUES
(1, 'Toyota', 'Camry', 105.50),
(2, 'Honda', 'Civic', 95.00),
(3, 'Ford', 'Focus', 75.25),
(4, 'Chevrolet', 'Malibu', 110.00),
(5, 'Hyundai', 'Elantra', 90.75);

SELECT make, model, price_per_day 
FROM cars
WHERE price_per_day <= 100;

Solution:
SELECT make, model, price_per_day
FROM cars
WHERE price_per_day <= 100

Output:
make    model     price_per_day
Honda	  Civic	    95
Ford	  Focus	    75.25
Hyundai	Elantra	  90.75
*/

-- Lesson: Data Aggregation
/*
SELECT MAX(year)
FROM movies;

SELECT MIN(year)
FROM movies;
*/

-- Lesson: Mixing Things Up
/*
SELECT MIN(year)
FROM movies
WHERE year > 2000

SELECT SUM(price), AVG(price)
FROM sales;

SELECT SUM(price+delivery) AS revenue
FROM sales;
*/
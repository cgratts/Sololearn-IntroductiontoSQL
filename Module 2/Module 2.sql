-- Module 2: Going Deeper with SQL

-- NOTE: The database/table used in this Module is not provided to run queries on 
-- These were created in MySQL Workbench to simulate the course queries where applicable

-- Lesson: Standards & Best Practices
/*
select title
from movies

SELECT title                 FROM
     movies
*/

-- Lesson: Sorting Data
/*
SELECT *
FROM movies
ORDER BY year
*/

-- Coding Practice: Employee Salary

/*
Imagine you are an HR manager who wants to sort employee records based on their salaries.
You are given the following employees table:

id      name            department          salary
--------------------------------------------------
1       John Doe        Sales               50000
2       Jane Smith      Marketing           60000
3       Mike Johnson    Finance             70000
4       Emily Davis     HR                  55000
5       David Lee       Operations          55000

Complete the query to select all fields from the table and sort the results in descending order based on the salary field.
*/

/*
drop table if exists employees;
create database if not exists test;
use test;

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `salary` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10001 ;

INSERT INTO `movies` (`id`, `name`, `department`, `salary`) VALUES
(1, 'John Doe ', 'Sales', 477000),
(2, 'Jane Smith', 'Marketing', 775000),
(3, 'Mike Johnson', 'Finance', 1030000),
(4, 'Emily Davis', 'HR', 1434000),
(5, 'David Lee', 'Operations', 963000);

Solution: 
-- sort by salaries in descending order
SELECT * 
FROM employees
ORDER BY salary DESC

Output:
salary
1434000
1030000
963000
775000
477000
*/

-- Lesson: Limiting Data
/*
SELECT title
FROM movies
LIMIT 3
*/

/*
-- OFFSET
SELECT title
FROM movies
LIMIT 3 OFFSET 2
*/

-- Coding Practice: Menu

/*
Imagine you’re developing a mobile app for a restaurant and you want to show only 4 dishes on the first page of the menu.
You have the following menu table:

id      name                    price         category
------------------------------------------------------
1       Cheeseburger            9.99          Burgers
2       Margherita Pizza        12.99         Pizza
3       Caesar Salad            8.99          Salads
4       Spaghetti Bolognese     14.99         Pasta
5       Grilled Salmon          18.99         Seafood
6       Mushroom Risotto        10.99         Vegetarian
7       Chicken Tikka Masala    13.99         Indian

Write a query to select all fields for the first 4 items of the menu table.
*/

/*
drop table if exists menu;
create database if not exists test;
use test;

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` float(7) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10001 ;

--
-- Dumping data for table `movies`
--

INSERT INTO `menu` (`id`, `name`, `price`, `category`) VALUES
(1, 'Cheeseburger', 9.99, 'Burgers'),
(2, 'Margherita Pizza', 12.99, 'Pizza'),
(3, 'Caesar Salad', 8.99, 'Salads'),
(4, 'Spaghetti Bolognese', 14.99, 'Pasta'),
(5, 'Grilled Salmon', 18.99, 'Seafood'),
(6, 'Mushroom Risotto', 10.99, 'Vegetarian'),
(7, 'Chicken Tikka Masala', 13.99, 'Indian');

SELECT * 
FROM menu
LIMIT 4;

Solution: 
-- extract the first 4 records
SELECT *
FROM menu
LIMIT 4

Output:
id      name                    price         category
1       Cheeseburger            9.99          Burgers
2       Margherita Pizza        12.99         Pizza
3       Caesar Salad            8.99          Salads
4       Spaghetti Bolognese     14.99         Pasta
*/

-- Lesson: Data Types
/*
SELECT name, price+delivery AS TOTAL
FROM sales

-- Error
SELECT name, name+price
FROM sales

-- Concatenation
SELECT CONCAT(first_name, last_name)
FROM employees
*/

-- Coding Practice: Tennis Tournament

/*
You are organizing a tennis tournament with multiple matches. Each match consists of three sets, and players earn scores in each set.
You have the following matches table:

player_name         set_1   set_2   set_3
John Smith          6       6       7
Michael Johnson     7       4       5
Emily Thompson      7       7       6
Daniel Wilson       7       4       5
Sophia Davis        6       6       6

Write a query to select the players' names and the total points as a field called Total.
*/

/*
drop table if exists tennis;
create database if not exists test;
use test;

CREATE TABLE IF NOT EXISTS `tennis` (
  `player_name` varchar(255) NOT NULL,
  `set_1` int(6) DEFAULT NULL,
  `set_2` int(6) DEFAULT NULL,
  `set_3` int(6) NOT NULL,
  PRIMARY KEY (`player_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10001 ;

INSERT INTO `tennis` (`player_name`, `set_1`, `set_2`, `set_3`) VALUES
('John Smith', 6, 6, 7),
('Michael Johnson', 7, 4, 5),
('Emily Thompson', 7, 7, 6),
('Daniel Wilson', 7, 4, 5),
('Sophia Davis', 6, 6, 6);

SELECT player_name, set_1+set_2+set_3 
AS Total
FROM tennis;

Solution: 
-- select players` names and the total points as Total
SELECT player_name, set_1+set_2+set_3 AS Total
FROM matches

Output:
player_name     Total
John Smith	    19
Michael Johnson	16
Emily Thompson	20
Daniel Wilson	16
Sophia Davis	18
*/

-- Lesson: Filtering Data

/*
SELECT *
FROM studio
WHERE name = 'Walt Disney'
*/

-- Coding Practice: Online Bookstore

/*
You are working as a data analyst for an online bookstore.
You have the following table called books:

id  title                       author            genre       price
-------------------------------------------------------------------
1   To Kill a Mockingbird     Harper Lee          Fiction     12.99
2   1984                      George Orwell       Fiction     9.99
3   The Great Gatsby          F. Scott Fitzgerald Fiction     15.99
4   Pride and Prejudice       Jane Austen         Romance     19.99
5   The Hobbit                J.R.R. Tolkien      Fantasy     14.99
6   The Chronicles of Narnia  C.S. Lewis          Fantasy     16.99
7   The Catcher in the Rye    J.D. Salinger       Fiction     13.99
8   A Game of Thrones         George R.R. Martin  Fantasy     17.99

Write a query to select all fields from the books table, but only retrieve the books that belong to the 'Fiction' genre.
*/

/*
drop table if exists bookstore;
create database if not exists test;
use test;

CREATE TABLE IF NOT EXISTS `bookstore` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `genre` varchar(255) NOT NULL,
  `price` float(8),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10001 ;

INSERT INTO `bookstore` (`id`, `title`, `author`, `genre`, `price`) VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 12.99),
(2, '1984 ', 'George Orwell', 'Fiction', 9.99),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 15.99),
(4, 'Pride and Prejudice', 'Jane Austen', 'Romance', 19.99),
(5, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 14.99),
(6, 'The Chronicles of Narnia', 'C.S. Lewis', 'Fantasy', 16.99),
(7, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 13.99),
(8, 'A Game of Thrones', 'George R.R. Martin', 'Fantasy', 17.99);

SELECT * 
FROM bookstore
WHERE genre = 'Fiction';

Solution: 
-- select all fields, filter by genre 'Fiction'
SELECT *
FROM books
WHERE genre = 'Fiction'

Output:
id  title                       author            genre       price
1   To Kill a Mockingbird     Harper Lee          Fiction     12.99
2   1984                      George Orwell       Fiction     9.99
3   The Great Gatsby          F. Scott Fitzgerald Fiction     15.99
7   The Catcher in the Rye    J.D. Salinger       Fiction     13.99
*/




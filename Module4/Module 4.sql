-- Module 4: Data Analysis

-- NOTE: The database/table used in this Module is not provided to run queries on 
-- These were created in MySQL Workbench to simulate the course queries where applicable

-- Lesson: Analyzing Data
-- No code in this lesson

-- Lesson: Grouping
/*
SELECT genre, AVG(budget)
FROM movies
GROUP BY genre;
*/

-- Coding Practice: Social Media Posts

/*
A social media platform wants to analyze user engagement and preferences by grouping and counting reactions to posts ("likes"). You are given the following posts table:

post_id   Name                topic   likes
-------------------------------------------
1         Rock Concert        Music   100
2         Beach Paradise      Travel  200
3         Delicious Delights  Food    150
4         Street Art          Art     120
5         Jazz Night          Music   80
6         Mountain Escape     Travel  250

Write a query to extract the sum of like for each topic
*/

/*
drop table if exists posts;
create database if not exists test;
use test;

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `likes` int(6),
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10001 ;

INSERT INTO `posts` (`post_id`, `name`, `topic`, `likes`) VALUES
(1, 'Rock Concert', 'Music', 100),
(2, 'Beach Paradise', 'Travel', 200),
(3, 'Delicious Delights', 'Food', 150),
(4, 'Street Art', 'Art', 120),
(5, 'Jazz Night', 'Music', 80),
(6, 'Mountain Escape', 'Travel', 250);

SELECT topic, SUM(likes)
FROM posts
GROUP BY topic;

Solution:
SELECT topic, SUM(likes)
FROM posts
GROUP BY topic

Output:
topic   SUM(likes)
Music	  180
Travel	450
Food	  150
Art	    120
*/

-- Lesson: Grouping and Filtering
/*
SELECT genre, AVG(budget)
FROM movies
WHERE budget > 50
GROUP BY genre;

SELECT genre, AVG(budget)
FROM movies
GROUP BY genre
HAVING AVG(budget) > 50;
*/

-- Lesson: Cleaning Data
/*
SELECT id, COUNT(id)
FROM employees
GROUP BY id
HAVING COUNT(id) > 1;

SELECT id, name
FROM employees
GROUP BY id, name
HAVING COUNT(id) > 1;

SELECT *
FROM employees
GROUP BY id, name, department, age
HAVING Count(name) > 1;

SELECT DISTINCT name
FROM employees;

SELECT * 
FROM movies 
WHERE genre IS NULL

SELECT * 
FROM movies 
WHERE genre IS NOT NULL
*/

-- Coding Practice: Teacher Data

/*
A school wants to get a list of subjects taught by their teachers. You are given the following teachers table

id  name          subject
-----------------------------
1   Mr. Johnson   Mathematics
2   Mrs. Davis    Science
3   Ms. Wilson    English
4   Mr. Thompson  History
5   Mrs. Lee      Mathematics
6   Mr. Anderson  Science

Write a query to extract the distinct subjects taught
*/

/*
drop table if exists teachers;
create database if not exists test;
use test;

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10001 ;

INSERT INTO `teachers` (`id`, `name`, `subject`) VALUES
(1, 'Mr. Johnson', 'Mathematics'),
(2, 'Mrs. Davis', 'Science'),
(3, 'Ms. Wilson', 'English'),
(4, 'Mr. Thompson', 'History'),
(5, 'Mrs. Lee', 'Mathematics'),
(6, 'Mr. Anderson', 'Science');

SELECT DISTINCT subject
FROM teachers;

Solution:
SELECT DISTINCT subject
FROM teachers

Output:
subject
Mathematics
Science
English
History
*/

-- Lesson: Fixing Data Types
/*
SELECT  id, title, is_oscar_winner
FROM movies
WHERE is_oscar_winner = True;
*/

-- Lesson: Making Sense of Data
/*
SELECT product, SUM(qty)
FROM sales
WHERE month = 'June'
GROUP BY product

SELECT title
FROM books
WHERE qty >= 5 AND year > 1950
*/
-- Module 1: Getting Started with SQL

-- NOTE: The database/table used in this Module is not provided to run queries on 
-- These were created in MySQL Workbench to simulate the course queries where applicable

-- Lesson: Working with Data
-- No code in this lesson

-- Lesson: Running SQL Queries
/*
drop table if exists movies;
create database if not exists test;
use test;

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10001 ;

INSERT INTO `movies` (`id`, `title`, `year`) VALUES
(1, 'Home Alone', 1990),
(2, 'Star Wars', 1977),
(3, 'Jurassic Park', 1993),
(4, 'Frozen', 2013),
(5, 'Pirates of the Caribbean', 2003);

SELECT year
FROM movies

Output:
year
1990
1977
1993
2013
2003
*/

-- Lesson: Relational Databases
/*
SELECT year_founded
FROM studios
*/

/*
Which 2 fields are being extracted with the following SQL query?

SELECT name, price
FROM products

Answer: name and price
*/

-- Lesson: Debugging
/*
SELECT title
FROM
Output: ERROR:  syntax error at end of input
        FROM
            ^

SELECT title FROM movies // Line breaks are not necessary 
*/

-- Coding Practice: Box Office

/*
Imagine you want to explore movie revenues and you are given the following movies table:

id      title                       revenue
-----------------------------------------------
1       Home Alone                  477000
2       Star Wars                   775000  
3       Jurassic Park               1030000
4       Frozen                      1434000
5       Pirates of the Caribbean    963000

Complete the given query to extract the revenue field data from the table
*/

/*
drop table if exists movies;
create database if not exists test;
use test;

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `revenue` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10001 ;

INSERT INTO `movies` (`id`, `title`, `revenue`) VALUES
(1, 'Home Alone', 477000),
(2, 'Star Wars', 775000),
(3, 'Jurassic Park', 1030000),
(4, 'Frozen', 1434000),
(5, 'Pirates of the Caribbean', 963000);

Solution: 
SELECT revenue
FROM movies

Output:
revenue
477000
775000
1030000
1434000
963000
*/
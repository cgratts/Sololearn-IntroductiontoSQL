-- Module 1: Getting Started with SQL
-- NOTE: Database used in this Module not available to run queries on 

-- Lesson: Working with Data
-- No code in this lesson

-- Lesson: Running SQL Queries
/*
SELECT year
FROM movies
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
Solution: 
SELECT revenue
FROM movies
*/
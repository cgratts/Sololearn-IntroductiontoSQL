-- Module 1: Going Deeper with SQL
-- NOTE: Database used in this Module not available to run queries on 

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
Solution: 
-- sort by salaries in descending order
SELECT * 
FROM employees
ORDER BY salary DESC
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
Solution: 
-- extract the first 4 records
SELECT *
FROM menu
LIMIT 4
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
-----------------------------------------
John Smith          6       6       7
Michael Johnson     7       4       5
Emily Thompson      7       7       6
Daniel Wilson       7       4       5
Sophia Davis        6       6       6

Write a query to select the players' names and the total points as a field called Total.
*/

/*
Solution: 
-- select players` names and the total points as Total
SELECT player_name, set_1+set_2+set_3 AS Total
FROM matches
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


-----------------------------------------
1 To Kill a Mockingbird     Harper Lee          Fiction     12.99
2 1984                      George Orwell       Fiction     9.99
3 The Great Gatsby          F. Scott Fitzgerald Fiction     15.99
4 Pride and Prejudice       Jane Austen         Romance     19.99
5 The Hobbit                J.R.R. Tolkien      Fantasy     14.99
6 The Chronicles of Narnia  C.S. Lewis          Fantasy     16.99
7 The Catcher in the Rye    J.D. Salinger       Fiction     13.99
8 A Game of Thrones         George R.R. Martin  Fantasy     17.99

Write a query to select all fields from the books table, but only retrieve the books that belong to the 'Fiction' genre.
*/

/*
Solution: 
-- select all fields, filter by genre 'Fiction'
SELECT *
FROM books
WHERE genre = 'Fiction'
*/




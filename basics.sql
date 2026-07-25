/*
    SQL Practice
    Benjamin James

    Purpose:
    Refresh SQL fundamentals using business-oriented examples.

    Scenario:
    Working as a technical operations analyst for a construction
    technology company. Using SQL to answer business questions
    about employees, projects, and operations.
*/


/*
====================================================
SELECT
Retrieve specific columns or all columns from a table.
====================================================
*/

/*
Question:
Show every employee in the company.
*/

SELECT *
FROM employees;


/*
Question:
Show each employee's first name, last name, and department.
*/

SELECT first_name, last_name, department
FROM employees;


/*
====================================================
WHERE
Filter rows that meet a specific condition.
====================================================
*/

/*
Question:
Show all active projects.
*/

SELECT project_name
FROM projects
WHERE status = 'Active';


/*
Question:
Show the names and budgets of all construction projects.
*/

SELECT project_name, budget
FROM projects
WHERE department = 'Construction';


/*
Question:
Show all active construction projects.
*/

SELECT project_name, budget
FROM projects
WHERE department = 'Construction'
AND status = 'Active';


/*
Question:
Show all projects with a budget greater than $5,000,000.
*/

SELECT project_name, budget
FROM projects
WHERE budget > 5000000;


/*
====================================================
ORDER BY
Sort query results.
====================================================
*/

/*
Question:
Show all projects ordered from the largest budget to the smallest.
*/

SELECT project_name, budget
FROM projects
ORDER BY budget DESC;

/*
Question:
Show all employees sorted alphabetically by their last name.
*/

SELECT first_name, last_name
FROM employees
ORDER BY last_name;


/*
====================================================
DISTINCT
Return only unique values.
====================================================
*/

/*
Question:
What departments exist in the company?
*/

SELECT DISTINCT department
FROM employees;


/*
====================================================
COUNT()
Count the number of rows that meet a condition.
====================================================
*/

/*
Question:
How many employees work for the company?
*/

SELECT COUNT(*)
FROM employees;

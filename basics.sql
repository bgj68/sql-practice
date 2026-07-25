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
01. SELECT
Retrieve columns from a table.
====================================================
*/

/*
Question: Show every employee in the company.
*/

SELECT *
FROM employees;


/*
Question: Show each employee's first name, last name, and department.
*/

SELECT first_name, last_name, department
FROM employees;



/*
====================================================
02. WHERE
Filter rows that meet specific conditions.
====================================================
*/

/*
Question: Show all active projects.
*/

SELECT project_name
FROM projects
WHERE status = 'Active';


/*
Question: Show the names and budgets of all construction projects.
*/

SELECT project_name, budget
FROM projects
WHERE department = 'Construction';


/*
Question: Show all active construction projects.
*/

SELECT project_name, budget
FROM projects
WHERE department = 'Construction'
AND status = 'Active';


/*
Question: Show all projects with a budget greater than $5,000,000.
*/

SELECT project_name, budget
FROM projects
WHERE budget > 5000000;



/*
====================================================
03. ORDER BY
Sort query results.
====================================================
*/

/*
Question: Show all projects ordered from largest budget to smallest.
*/

SELECT project_name, budget
FROM projects
ORDER BY budget DESC;


/*
Question: Show all employees sorted alphabetically by last name.
*/

SELECT first_name, last_name
FROM employees
ORDER BY last_name;



/*
====================================================
04. DISTINCT
Return only unique values.
====================================================
*/

/*
Question: What departments exist in the company?
*/

SELECT DISTINCT department
FROM employees;



/*
====================================================
05. COUNT()
Count rows that meet a condition.
====================================================
*/

/*
Question: How many employees work for the company?
*/

SELECT COUNT(*) AS employee_count
FROM employees;


/*
Question: How many active projects does the company currently have?
*/

SELECT COUNT(*) AS active_project_count
FROM projects
WHERE status = 'Active';



/*
====================================================
06. GROUP BY
Group rows together to perform calculations.
====================================================
*/

/*
Question: How many projects does each department have?
*/

SELECT department, COUNT(*) AS project_count
FROM projects
GROUP BY department;



/*
====================================================
07. HAVING
Filter groups after aggregation.
====================================================
*/

/*
Question: Which departments have more than five projects?
*/

SELECT department, COUNT(*) AS project_count
FROM projects
GROUP BY department
HAVING COUNT(*) > 5;



/*
====================================================
08. INNER JOIN
Combine matching information from multiple tables.
====================================================
*/

/*
Question: Show every employee and the department they work in.
*/

SELECT first_name, last_name, department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;



/*
====================================================
09. LEFT JOIN
Keep all records from the left table, even without matches.
====================================================
*/

/*
Question:
Show every employee and their department, including employees
without an assigned department.
*/

SELECT first_name, last_name, department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id;

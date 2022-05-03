USE employees;

#WHERE thing = stuff has to be specific, whereas IN can be any of them
#dleineated by commas.
#solution
SELECT *
FROM employees e
WHERE e.first_name IN ('Irena', 'Vidva', 'Maya');

#solution
SELECT *
FROM employees e
WHERE e.last_name LIKE 'E%';

SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';
#solution
SELECT * FROM employees e
WHERE e.last_name LIKE '%q%';
AND e.last_name NOT LIKE '%q%'

SELECT first_name
FROM employees
WHERE first_name = ('Irena' OR 'Vidya' OR 'Maya');

#solution
SELECT *
FROM employees e
WHERE (e.first_name = 'Irena'
    OR e.first_name = 'Vidya'
    OR e.first_name = 'Maya')
  AND (e.gender = 'M');
#grouping operator is when we separate things into parens.
# performance tuning on relational database, you just think about the order in which things are sorted.

# SELECT *
# examples
# FROM employees.salaries s
# ORDER BY s.salary DESC
# LIMIT 5 OFFSET 50;
# # // how to filter, sort, and deterine size of return. The WHERE clause is very important for updates and eletes
# # shows 5 records starting at #11 record
#
#
# SELECT *
# FROM employees.salaries s
# ORDER BY s.salary DESC
# LIMIT 100 OFFSET 10;
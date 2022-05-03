USE employees;

SELECT *
FROM employees e
WHERE (e.gender = 'F')
WHERE e.first_name IN ('Irena', 'Vidva', 'Maya')
ORDER BY e.first_name, e.last_name;

#solution
SELECT *
FROM employees e
WHERE e.last_name LIKE 'E%'
AND e.last_name LIKE '%E'
ORDER BY e.emp_no DESC;

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
WHERE e.last_name LIKE '%q%'
AND e.last_name NOT LIKE '%q%';

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
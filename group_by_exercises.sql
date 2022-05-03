USE employees;

#2
SELECT DISTINCT title
FROM titles;

#3
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY last_name;

#4
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
GROUP BY last_name;

#5
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND NOT LIKE 'qu';
GROUP BY last_name;

#6
SELECT COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%' AND NOT LIKE 'qu';
ORDER BY last_name;

#7
SELECT COUNT (*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

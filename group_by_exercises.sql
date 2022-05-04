USE employees;

#2
SELECT DISTINCT title
FROM titles;

#3
SELECT e.last_name
FROM employees e
WHERE e.last_name LIKE 'E%' AND e.last_name LIKE '%E'
GROUP BY e.last_name;

#4
SELECT e.first_name, e.last_name FROM employees e
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
GROUP BY last_name;

#5
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND NOT LIKE 'qu';
GROUP BY last_name;

#6
SELECT COUNT(*), e.last_name
FROM employees e
WHERE e.last_name LIKE '%q%' AND e.last_name NOT LIKE '%qu%'
GROUP BY e.last_name
ORDER BY e.last_name;

SELECT COUNT(*), e.last_name
FROM employees e
WHERE e.last_name LIKE '%q%' AND e.last_name NOT LIKE '%qu%'
GROUP BY e.last_name
ORDER BY e.last_name;
#7
SELECT COUNT (*), e.gender
FROM employees e
WHERE (e.first_name = 'Irena'
    OR e.first_name = 'Vidya'
        OR e.first_name = 'Maya')
GROUP BY e.gender;

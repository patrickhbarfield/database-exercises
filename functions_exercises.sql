USE employees;

#2
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Full Name'
FROM employees e
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
#3
SELECT * FROM employees e
WHERE DAY(e.birth_date) = 25 AND MONTH(e.birth_date) = 12;

#4
SELECT * FROM employees e
WHERE (DAY(e.birth_date) = 25 AND MONTH(e.birth_date) = 12)
AND (YEAR(e.hire_date) > 1989 AND YEAR(e.hire_date) < 2000);

#5
SELECT * FROM employees e
WHERE (DAY(e.birth_date) = 25 AND MONTH(e.birth_date) = 12)
  AND (YEAR(e.hire_date) > 1989 AND YEAR(e.hire_date) < 2000)
ORDER BY hire_date DESC, birth_date DESC;

#6
SELECT e.emp_no, DATEDIFF(NOW(), e.hire_date) AS 'Days Worked'
FROM employees e
WHERE (DAY(e.birth_date) = 25 AND MONTH(e.birth_date) = 12)
  AND (YEAR(e.hire_date) > 1989 AND YEAR(e.hire_date) < 2000);
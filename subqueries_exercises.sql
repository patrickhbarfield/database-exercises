USE employees;

);
ind all the employees with the same hire
date as employee 101010 using a subquery.
69 Rows
SELECT first_name, last_name, hire_date
    FROM employees
        WEHRE emp_no IN (
        SELECT emp_no
        FROM
        )

/*DESCRIBE albums;
DESCRIBE dept_employee;
/*Add an index to make sure
all album names combined with the artist are unique. Try to add duplicates to test the constraint.*/

C/*REATE UNIQUE INDEX unique_name_artist
ON albums (artist);

SHOW DATABASES;*/
*/

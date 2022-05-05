CREATE DATABASE IF NOT EXISTS join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id)
VALUES ('Pat', 'pat@example.com', 2),
       ('George', 'george@ex.com', NULL),
       ('jim', 'kim@ex.com', 2),
       ('troyf', 'troy@ex.com', 2)

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name as

SELECT COUNT(users.name), roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;

USE employees;

SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager dm ON e.emp.emp_no
         JOIN departments AS d on d.dept_no = dm.dept_no
WHERE dm.to_date > CURDATE()
  AND e.gender = 'F';

SELECT t.title AS Title,
       COUNT(t.emp_no)
FROM titles AS t
         JOIN employees AS e ON e.emp_no = t.emp_no JOINT dept_emp de
on e.emp_no = de.emp_no
    JOIN departments d on de.dept_no = d.dept_no
WHERE t.to_date > CURDATE()
AND d.dept_name = 'Customer Service'
AND de.to_date > CURDATE()
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Derpartment Manager',
       s.salary AS 'Salary'
FROM employees AS e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
JOIN salaries s on e.emp_no = s.emp_no
WEHERE dm.to_date > CURDATE()
AND s.to_date > CURDATE();

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee,
       d.dept_name AS Department,


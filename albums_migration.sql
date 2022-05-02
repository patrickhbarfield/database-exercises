USE codeup_test_db;
SHOW databases;
CREATE TABLE IF NOT EXISTS albums
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    sales VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

SHOW TABLES
DESCRIBE albums

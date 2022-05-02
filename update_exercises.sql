USE codeup_test_db;

SELECT name AS 'Here are all albums in the table'
FROM albums;

UPDATE albums
SET sales = sales *10;

SELECT sales
FROM albums;


SELECT name AS 'All albums released before 1980'
FROM albums;

UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;

SELECT release_date
FROM albums;

SELECT name AS 'All albums by Michael Jackson'
FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE id = 1;

SELECT artist
FROM albums;

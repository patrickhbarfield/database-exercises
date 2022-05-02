USE codeup_test_db;

SELECT name AS 'Here are all albums by Pink Floyd w/over 30mil sales'
FROM albums
WHERE artist = 'Pink Floyd';


SELECT release_date AS 'Year Sgt. Pepper''s Lonely Hearts Club Band was released'
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'Genre for the album Nevermind'
FROM albums
WHERE name = 'Nevermind';

SELECT name AS 'Albums that were released in the 1990s'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT name AS 'Albums that had less than 20 million certified sales'
FROM albums
WHERE sales < 20;

SELECT name AS 'Albums with a genre of "Rock'
FROM albums
WHERE genre = 'Rock';


USE codeup_test_db;

SELECT 'Albums by Pink Floyd';
SELECT * FROM albums WHERE artist LIKE 'P%';

# // creating an ilias is useful if column names have th esame something...
# SELET * FROM albums a WHERE a.name LIKE 'Sgt. Pepper%';

SELECT name AS 'Here are all albums by Pink Floyd w/over 30mil sales'
FROM albums
WHERE artist = 'Pink Floyd';


SELECT release_date AS 'Year Sgt. Pepper''s Lonely Hearts Club Band was released'
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'Genre for the album Nevermind'
FROM albums
WHERE name = 'Nevermind';

# //this is a quality comparison, vs. a between.
# SELECT * FROM albums a WHERE a.release_date > 1989 AND a.release_date < 2000;

SELECT name AS 'Albums that were released in the 1990s'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT name AS 'Albums that had less than 20 million certified sales'
FROM albums
WHERE sales < 20;

SELECT name AS 'Albums with a genre of "Rock'
FROM albums
WHERE genre = 'Rock';

SELECT * FROM albums a WHERE genre = 'rock';

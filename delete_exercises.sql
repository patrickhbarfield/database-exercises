USE codeup_test_db;

DELETE FROM albums
WHERE release_date >1991;

DELETE FROM albums
WHERE genre = 'disco';

# SELECT * FROM albums a WHERE a.genre LIKE '%disco%';
# don't use * when deleting'
# DELETE FROM albums a WHERE a.genre LIKE '%disco%';


DELETE FROM albums
WHERE artist = 'Whitney Houston';
# SELECT * FROM albums a WHERE a.artist = 'Whitney Houston';
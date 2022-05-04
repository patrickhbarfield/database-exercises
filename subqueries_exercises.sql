USE codeup_test_db;

DESCRIBE albums;
/*Add an index to make sure
all album names combined with the artist are unique. Try to add duplicates to test the constraint.*/

CREATE UNIQUE INDEX unique_name_artist
ON albums (artist);

SHOW DATABASES;


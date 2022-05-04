USE employees;

ALTER TABLE quotes
    ADD UNIQUE (content);


# ALTER TABLE users
# ADD UNIQUE (username);
#
# DESCRIBE users;
#
# INSERT INTO users(username, email, first_name, last_name, middle_name)
# VALUES ('bob','newbob@bob.com','Robert','Roberts','Robby');
# #forcing unique constraints on email and what?
#
# CREATE TABLE IF NOT EXISTS posts
# #insert a foreign key to reference another table, so it's...
# ( id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
# title VARCHAR(255) NOT NULL,
# content TEXT NOT NULL,
# FOREIGN KEY  (user_id) REFERENCES users(id
# );

DESCRIBE POSTS;

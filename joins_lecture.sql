USE codeup_test_db;

CREATE TABLE persons (
 person_id INT NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(25) NOT NULL,
 album_id INT NOT NULL,
 PRIMARY KEY (person_id)
);

INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);

SELECT p.person_id, a.album_name FROM persons p JOIN albums a ON p.album_id = a.album_id;

CREATE TABLE preferences (
                             person_id INT NOT NULL,
                             album_id INT NOT NULL
);

INSERT INTO preferences (person_id, album_id) VALUES (1, 12), (1, 5), (1, 22), (1, 29), (2, 1), (2, 31), (2, 30), (3, 11), (3, 26), (3, 25);
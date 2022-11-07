USE codeup_test_db;

SELECT artist, album_name FROM albums WHERE artist = 'Pink Floyd';

SELECT album_name, release_date  FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT artist, album_name FROM albums WHERE release_date BETWEEN 1989 AND 2000;

SELECT artist, album_name FROM albums WHERE genre = "Rock";

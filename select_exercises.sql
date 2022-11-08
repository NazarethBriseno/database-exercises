USE codeup_test_db;

SELECT artist, album_name FROM albums WHERE artist = 'Pink Floyd';

SELECT album_name, release_date  FROM albums WHERE album_name LIKE '%Pepp%';

SELECT 'Albums released in the 1990''s' AS caption, artist, album_name FROM albums WHERE release_date BETWEEN 1989 AND
    2000;

SELECT artist, album_name FROM albums WHERE genre = "Rock";

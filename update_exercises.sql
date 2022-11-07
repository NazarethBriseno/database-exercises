USE codeup_test_db;

SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10 WHERE sales;
SELECT * FROM albums;

SELECT artist, album_name FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;

SELECT album_name FROM albums WHERE artist = "Michael Jackson";
UPDATE albums
SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums;

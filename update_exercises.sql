USE codeup_test_db;

SELECT * FROM albums;

UPDATE albums
SET sales = (sales * 10);

SELECT record AS 'Albums B4 1980'
FROM albums
WHERE release_date <= 1980;

UPDATE albums
SET 'release_date' = DATE_SUB('release_date', INTERVAL 100 YEAR)
WHERE 'release_date' < TIMESTAMP('1980-01-01'); 

SELECT record AS 'Michael Jackson Albums'
FROM albums
WHERE artist = "Michael Jackson";

UPDATE albums
SET artist = "Peter Jackson"
WHERE artist = "Michael Jackson";
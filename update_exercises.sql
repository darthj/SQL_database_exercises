USE codeup_test_db;

SELECT * FROM albums;

UPDATE albums
SET sales = (sales * 10);

SELECT record AS 'Albums B4 1980'
FROM albums
WHERE release_date <= 1980;

-- UPDATE albums
-- SET release_date = (release_date - 100)
-- WHERE release_date <= 1980; after setting albums_migration to INT from YEAR

SELECT record AS 'Michael Jackson Albums'
FROM albums
WHERE artist = "Michael Jackson";

UPDATE albums
SET artist = "Peter Jackson"
WHERE artist = "Michael Jackson";
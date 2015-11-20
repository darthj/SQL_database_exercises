USE codeup_test_db;

SELECT 'Pink Floyd' AS 'Artist';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Thriller' AS 'Year';
SELECT release_date FROM albums WHERE record = 'Thriller';

SELECT 'Pop' AS 'Genre';
SELECT genre FROM albums WHERE record = 'Saturday Night Fever';

SELECT '1990s' AS 'Decade';
SELECT * FROM albums WHERE release_date >= '1990';

SELECT	'Greater Than 20' AS 'Sales';
SELECT * FROM albums WHERE sales >= '20';
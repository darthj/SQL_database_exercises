USE codeup_test_db;

SELECT record AS 'Pink Floyd Albums'
FROM albums 
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'Year Thriller was released'
FROM albums
WHERE record = 'Thriller';

SELECT genre AS 'Genre of Saturday Night Fever'
FROM albums 
WHERE record = 'Saturday Night Fever';

SELECT record AS '1990s Albums'
FROM albums 
WHERE release_date >= '1990';

SELECT record, sales AS 'Sales Greater Than 20 million'
FROM albums 
WHERE sales >= 20;
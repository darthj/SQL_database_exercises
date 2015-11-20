 USE codeup_test_db;

 DROP TABLE IF EXISTS albums;
 
 CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    record  VARCHAR(100) NOT NULL,
    release_date YEAR(4) NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);
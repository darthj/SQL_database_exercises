CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (NAME) VALUES ('admin');
INSERT INTO roles (NAME) VALUES ('author');
INSERT INTO roles (NAME) VALUES ('reviewer');
INSERT INTO roles (NAME) VALUES ('commenter');

INSERT INTO users (NAME, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', NULL),
('mike', 'mike@example.com', NULL);

INSERT INTO users (NAME, email, role_id) VALUES
('jim', 'jim@example.com','2'),
('jordan', 'jordan@example.com','2'),
('gigi', 'gigi@example.com', '2'),
('natalia', 'natty@example.com', NULL);

SELECT *
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT r.name, count(u.`name`) AS User_no
FROM users AS u
JOIN roles AS r ON u.role_id = r.id
GROUP BY r.name;
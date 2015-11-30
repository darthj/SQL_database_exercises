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

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM `dept_manager` AS dm
JOIN `departments` AS d ON dm.dept_no = d.dept_no
JOIN `employees` AS e ON dm.emp_no = e.emp_no
WHERE dm.to_date > now()
AND e.gender LIKE 'F';

SELECT t.title, count(t.title) AS Count
FROM dept_emp AS de
JOIN titles AS t ON de.emp_no = t.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE t.to_date > now()
AND d.dept_name LIKE 'Customer Service'
AND de.to_date > now()
GROUP BY t.title;

SELECT CONCAT(first_name, ' ', last_name) AS NAMES
FROM employees
WHERE hire_date IN(
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010
);

SELECT title
FROM titles
WHERE emp_no IN(
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod'
)
AND to_date > now();

SELECT CONCAT(first_name, ' ', last_name) AS NAMES, gender
FROM employees
WHERE emp_no IN(
	SELECT emp_no
	FROM dept_manager
	WHERE to_date > now()
)
AND gender = 'F';

SELECT dept_name AS Departments
FROM departments
WHERE dept_no IN(
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN(
		SELECT emp_no
		FROM employees
		WHERE gender ='F'
	)
	AND to_date > now()
);

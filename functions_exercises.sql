USE employees;
#Shows every employee who has the names Irena Vidya and Maya
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') order by last_name, first_name;

#Every employee that has a last name that  starts with an E
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

#Every employee that has a Q in their last name
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%Q%';

#Shows employees with names Irena, Vidya, Maya and are Male
SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M';

#Last names that start with an E OR end with an E
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

#Last names that start with an E and end with an E
SELECT emp_no, CONCAT(first_name,' ', last_name)
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';


#Everyone with the last name that has a 'Q' in their name but doesn't have 'qu'
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT * FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 2000
AND (MONTH(birth_date) = 12)
AND (DAY(birth_date) = 25) ORDER BY hire_date DESC;

SELECT first_name,DATEDIFF(NOW(), hire_date) AS 'Days Worked'  FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND
    2000
 AND (MONTH(birth_date) = 12)
 AND (DAY(birth_date) = 25) ORDER BY hire_date DESC;






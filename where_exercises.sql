USE employees;
#Shows every employee who has the names Irena Vidya and Maya
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

#Every employee that has a last name that  starts with an E
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

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
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';


#Everyone with the last name that has a 'Q' in their name but doesn't have 'qu'
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';




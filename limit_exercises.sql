USE employees;
#Get the UNIQUE last names and limit the amount to 10
    SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;

SELECT emp_no FROM salaries ORDER BY salary DESC
LIMIT 4 OFFSET 46;




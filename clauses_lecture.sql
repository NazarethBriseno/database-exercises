USE employees;

SELECT * FROM employees WHERE hire_date = '1985-01-01';


#Two percents '%stuff%' means you can find something anywhere that has the words stuff
#Percent in the beginning will mean it will end with stuff '%stuff'
#Percent in the back will mean it will start with stuff 'stuff%'
SELECT first_name FROM employees WHERE first_name LIKE '%sus%';

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 and 10082;

SELECT emp_no, first_name, last_name FROM employees WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek') ORDER
    BY last_name;

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no < 10026;

SELECT emp_no, first_name, last_name
FROM employees WHERE emp_no < 20000 AND last_name
IN ('Herber', 'Baek') OR first_name = 'Shridhar';

SELECT first_name, last_name, gender FROM employees WHERE (last_name = 'Bolotov' OR last_name = 'mcClurg') AND gender ='m';

#NOT BETWEEN FUNCTION
SELECT * FROM salaries WHERE salary NOT BETWEEN 50000 AND 100000;

#Employees not born in the 1950s
SELECT birth_date FROM employees WHERE birth_date NOT LIKE '195%';

#Employees not born in the 1950's and not hired in the 1990's
SELECT birth_date FROM employees WHERE birth_date NOT LIKE '195%'
AND hire_date NOT LIKE '199%';

#This is for searching for the month of a date
SELECT * FROM employees WHERE birth_date LIKE '%-01-%';
#This searches for the days in a date
SELECT * FROM employees WHERE birth_date LIKE '%-01';
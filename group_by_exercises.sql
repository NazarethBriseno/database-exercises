USE employees;

SELECT DISTINCT title FROM titles;

#RECEIVES LAST NAMES THAT START AND END WITH E, GROUPS BY LAST NAMES SO IT SHOWS THE DISTINCT LAST NAMES(5 of them) and ORDERS it alphabetically
SELECT last_name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY last_name
ORDER BY last_name;

SELECT DISTINCT CONCAT(first_name, ' ',last_name) FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT COUNT(last_name), last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT count(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;





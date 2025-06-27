SELECT e.first_name, e.last_name, e.salary, (SELECT AVG(salary) FROM employees) 
AS avg_salary, (e.salary - (SELECT AVG(salary) FROM employees)) AS salary_difference 
FROM employees e; 

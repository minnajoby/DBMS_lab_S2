SELECT first_name, last_name, salary FROM employees WHERE salary = (SELECT 
MAX(salary) FROM employees);

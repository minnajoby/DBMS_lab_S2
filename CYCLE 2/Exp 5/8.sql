SELECT e.first_name, e.last_name, e.salary FROM employees e WHERE e.salary >= 
(SELECT MAX(salary) FROM employees WHERE department_id = e.department_id); 

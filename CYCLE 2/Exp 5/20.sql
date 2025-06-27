SELECT e.first_name, e.last_name, e.department_id FROM employees e WHERE 
e.department_id = ( SELECT department_id FROM employees WHERE last_name = 'Taylor' );

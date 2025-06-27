SELECT e.first_name, e.last_name, d.department_name FROM employees e JOIN 
departments d ON e.department_id = d.department_id WHERE d.department_id IN (1, 2, 3);

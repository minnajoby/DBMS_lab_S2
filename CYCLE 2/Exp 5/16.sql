SELECT e.first_name, e.last_name, e.department_id, d.department_name FROM 
employees e LEFT JOIN departments d ON e.department_id = d.department_id;

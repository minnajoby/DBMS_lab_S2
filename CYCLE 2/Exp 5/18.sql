SELECT e.first_name, e.last_name, d.department_id, d.department_name FROM 
departments d LEFT JOIN employees e ON d.department_id = e.department_id;

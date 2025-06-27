SELECT e.first_name, e.last_name, e.department_id, l.city FROM employees e JOIN 
departments d ON e.department_id = d.department_id JOIN locations l ON d.location_id = 
l.location_id WHERE l.location_id != 1700;

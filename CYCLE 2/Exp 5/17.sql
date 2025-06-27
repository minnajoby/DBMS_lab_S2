SELECT e.first_name, e.last_name, d.department_name, l.city, l.state_province FROM 
employees e JOIN departments d ON e.department_id = d.department_id JOIN locations l ON 
d.location_id = l.location_id WHERE e.first_name LIKE '%Z%';

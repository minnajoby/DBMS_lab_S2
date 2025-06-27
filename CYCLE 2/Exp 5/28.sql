SELECT e.first_name, e.last_name, e.employee_id FROM employees e JOIN dependents 
d ON e.employee_id = d.employee_id;

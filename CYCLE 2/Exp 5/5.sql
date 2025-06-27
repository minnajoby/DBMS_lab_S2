SELECT DISTINCT d.department_id, d.department_name FROM departments d JOIN 
employees e ON d.department_id = e.department_id WHERE e.salary > 10000;

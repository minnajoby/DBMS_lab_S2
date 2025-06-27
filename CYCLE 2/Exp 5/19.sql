SELECT e.first_name AS employee_first_name, m.first_name AS manager_first_name 
FROM employees e LEFT JOIN employees m ON e.manager_id = m.employee_id;

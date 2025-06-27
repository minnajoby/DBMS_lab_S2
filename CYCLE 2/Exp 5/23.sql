CREATE VIEW employee_details_in_delhi AS SELECT e.first_name, e.last_name, 
e.employee_id, e.phone_number, j.job_title, d.department_name, m.first_name AS 
manager_first_name FROM employees e JOIN jobs j ON e.job_id = j.job_id JOIN departments 
d ON e.department_id = d.department_id LEFT JOIN employees m ON e.manager_id = 
m.employee_id JOIN locations l ON d.location_id = l.location_id WHERE l.city = 'Delhi';

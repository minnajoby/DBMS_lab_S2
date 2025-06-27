SELECT d.department_name, AVG(e.salary) AS avg_salary, COUNT(e.employee_id) AS 
num_employees FROM departments d JOIN employees e ON d.department_id = 
e.department_id GROUP BY d.department_name;

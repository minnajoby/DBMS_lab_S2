SELECT e.first_name, e.last_name, e.employee_id FROM employees e LEFT JOIN 
dependents d ON e.employee_id = d.employee_id WHERE d.dependent_id IS NULL;

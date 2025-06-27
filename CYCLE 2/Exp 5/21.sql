SELECT j.job_title, e.first_name, e.last_name, (j.max_salary - e.salary) AS 
salary_difference FROM employees e JOIN jobs j ON e.job_id = j.job_id;

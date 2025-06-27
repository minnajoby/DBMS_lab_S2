SELECT AVG(department_avg_salary) AS avg_of_avg_salary FROM ( SELECT 
AVG(salary) AS department_avg_salary FROM employees GROUP BY department_id ) AS 
department_avg;

select max(Basic) as second_max_salary from employees where Basic<(select max(Basic)from employees);

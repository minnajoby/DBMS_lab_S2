select min(Basic) as second_min_salary from employees where Basic>(select min(Basic) 
from employees);

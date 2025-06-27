select avg(salary),dept_no from employee group by dept_no having dept_no!='D05' and avg(salary)>20000 order by avg(salary) asc;

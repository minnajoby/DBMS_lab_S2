select name from employee e where basic>(select avg(basic)from employee where 
DeptID=e.DeptID);

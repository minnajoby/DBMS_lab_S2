select D.Dname from employees E join departments D on E.DeptID=D.DeptID group by 
D.Dname having max(E.Basic)=(select max(Basic) from employees);

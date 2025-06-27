SELECT SUM(E.Basic) FROM employees E JOIN departments D ON E.DeptID = D.DeptID where D.Dname='DESIGN';

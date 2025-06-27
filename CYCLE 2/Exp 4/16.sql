SELECT E.Name FROM employees E JOIN departments D ON E.DeptID = D.DeptID where E.Gender='F' AND D.Dname='Testing';

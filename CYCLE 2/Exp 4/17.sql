SELECT E.* FROM employees E LEFT JOIN departments D ON E.DeptID = D.DeptID 
where D.Dname NOT IN('Coding','Testing');

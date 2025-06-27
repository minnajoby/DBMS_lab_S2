SELECT ID,Name,Designation,DeptID,Basic,(Basic * 0.075) AS DA,(Basic * 0.10) AS HRA,(Basic + (Basic * 0.075) + (Basic * 0.10)) AS NET_SAL FROM employees;

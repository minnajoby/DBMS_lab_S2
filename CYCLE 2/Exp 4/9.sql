CREATE TABLE departments(DeptID INT PRIMARY KEY, DName varchar(20));
ALTER Table employees ADD FOREIGN KEY (DeptID) REFERENCES departments(DeptID);

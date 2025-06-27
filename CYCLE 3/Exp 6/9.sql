DELIMITER // 
CREATE FUNCTION GetSalary(empID INT) 
RETURNS DECIMAL(10,2) 
DETERMINISTIC 
BEGIN 
    DECLARE sal DECIMAL(10,2); 
    SELECT salary INTO sal 
    FROM employees 
    WHERE emp_id = empID; 
    RETURN sal; 
END // 
DELIMITER ; 

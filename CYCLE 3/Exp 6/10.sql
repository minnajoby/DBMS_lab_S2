DELIMITER // 
CREATE FUNCTION CountByName(emp_name VARCHAR(50)) 
RETURNS INT 
DETERMINISTIC 
BEGIN 
    DECLARE count_emp INT; 
    SELECT COUNT(*) INTO count_emp 
    FROM employees 
    WHERE name = emp_name; 
    RETURN count_emp; 
END // 
DELIMITER ;

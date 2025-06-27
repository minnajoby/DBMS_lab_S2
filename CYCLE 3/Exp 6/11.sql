 DELIMITER // 
CREATE PROCEDURE CalculateSalary() 
BEGIN 
    DECLARE done INT DEFAULT 0; 
    DECLARE e_id INT; 
    DECLARE name VARCHAR(50); 
    DECLARE days INT; 
    DECLARE desig VARCHAR(50); 
    DECLARE sal DECIMAL(10,2); 
    DECLARE emp_cursor CURSOR FOR 
        SELECT emp_id, emp_name, no_of_working_days, designation FROM Emp_salary; 
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1; 
    OPEN emp_cursor; 
    read_loop: LOOP 
        FETCH emp_cursor INTO e_id, name, days, desig; 
        IF done THEN 
            LEAVE read_loop; 
        END IF; 
        SET sal = CASE 
            WHEN desig = 'Manager' THEN days * 500 
            WHEN desig = 'Developer' THEN days * 300 
            ELSE days * 200 
        END; 
        SELECT e_id AS EmpID, name AS Name, sal AS CalculatedSalary; 
    END LOOP; 
    CLOSE emp_cursor; 
END // 
DELIMITER ;

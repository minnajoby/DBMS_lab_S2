DELIMITER $$ 
CREATE TRIGGER after_employee_delete 
AFTER DELETE ON employee 
FOR EACH ROW 
BEGIN 
    INSERT INTO Emp_history(emp_id, emp_name, designation, salary, Date_of_deletion) 
    VALUES (OLD.emp_id, OLD.emp_name, OLD.designation, OLD.salary, CURDATE()); 
END $$ 
DELIMITER ;

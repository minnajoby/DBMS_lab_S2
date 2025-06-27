DELIMITER $$ 
CREATE TRIGGER before_insert_details 
BEFORE INSERT ON emp_details 
FOR EACH ROW 
BEGIN 
    SET NEW.first_name = TRIM(NEW.first_name); 
    SET NEW.last_name = TRIM(NEW.last_name); 
    SET NEW.job_id = UPPER(TRIM(NEW.job_id)); 
END $$ 
DELIMITER ;

DELIMITER $$ 
CREATE TRIGGER trg_after_update_marks 
AFTER UPDATE ON students 
FOR EACH ROW 
BEGIN 
    DECLARE total INT; 
    DECLARE per_marks DECIMAL(5,2); 
    DECLARE grade VARCHAR(20); 
    SET total = NEW.Sub1 + NEW.Sub2 + NEW.Sub3 + NEW.Sub4 + NEW.Sub5; 
    SET per_marks = total / 5; 
    IF per_marks >= 90 THEN 
        SET grade = 'EXCELLENT'; 
    ELSEIF per_marks >= 75 THEN 
        SET grade = 'VERY GOOD'; 
    ELSEIF per_marks >= 60 THEN 
        SET grade = 'GOOD'; 
    ELSEIF per_marks >= 40 THEN 
        SET grade = 'AVERAGE'; 
    ELSE 
        SET grade = 'NOT PROMOTED'; 
    END IF; 
    UPDATE students SET Total = total,Per_Marks = per_marks,Grade = grade WHERE 
Stud_id= NEW.Stud_id; 
END$$ 
DELIMITER ;

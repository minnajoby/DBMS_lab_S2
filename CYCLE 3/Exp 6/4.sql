DELIMITER // 
CREATE PROCEDURE GetGrades(IN mark INT) 
BEGIN 
    DECLARE grade VARCHAR(10); 
    IF mark >= 90 THEN 
        SET grade = 'A'; 
    ELSEIF mark >= 75 THEN 
        SET grade = 'B'; 
    ELSEIF mark >= 60 THEN 
        SET grade = 'C'; 
    ELSEIF mark >= 40 THEN 
        SET grade = 'D'; 
    ELSE 
        SET grade = 'F'; 
    END IF; 
    SELECT grade AS Grade; 
END // 
DELIMITER ;

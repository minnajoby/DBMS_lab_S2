DELIMITER // 
CREATE PROCEDURE GetMembership( 
    IN credit INT, 
    OUT membership VARCHAR(20) 
) 
BEGIN 
    IF credit > 5000 THEN 
        SET membership = 'Platinum'; 
    ELSEIF credit >= 1000 THEN 
        SET membership = 'Gold'; 
    ELSE 
        SET membership = 'Silver'; 
    END IF; 
END // 
DELIMITER ; 

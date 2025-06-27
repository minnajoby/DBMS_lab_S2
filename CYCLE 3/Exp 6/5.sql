DELIMITER // 
CREATE PROCEDURE InvertNumbers(IN num INT) 
BEGIN 
    DECLARE reversed INT DEFAULT 0; 
    DECLARE remainder INT; 
 WHILE num > 0 DO 
        SET remainder = num % 10; 
        SET reversed = reversed * 10 + remainder; 
        SET num = num DIV 10; 
    END WHILE; 
    SELECT reversed AS InvertedNumber; 
END // 
DELIMITER ;

DELIMITER $$ 
CREATE PROCEDURE Calculate_Bill() 
BEGIN 
    DECLARE done INT DEFAULT FALSE; 
    DECLARE v_id INT; 
    DECLARE v_units INT; 
    DECLARE v_amount DECIMAL(10,2); 
    DECLARE v_name VARCHAR(100); 
    DECLARE v_pre INT; 
    DECLARE v_cur INT; 
    DECLARE cur CURSOR FOR SELECT customer_id, name, pre_reading, cur_reading 
FROM Bill; 
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE; 
    OPEN cur; 
    read_loop: LOOP 
        FETCH cur INTO v_id, v_name, v_pre, v_cur; 
        IF done THEN 
            LEAVE read_loop; 
        END IF; 
        SET v_units = v_cur - v_pre; 
        SET v_amount = 0; 
        IF v_units <= 100 THEN 
            SET v_amount = v_units * 2; 
        ELSEIF v_units <= 200 THEN 
            SET v_amount = (100 * 2) + ((v_units - 100) * 2.5); 
        ELSEIF v_units <= 300 THEN 
            SET v_amount = (100 * 2) + (100 * 2.5) + ((v_units - 200) * 3); 
        ELSE 
            SET v_amount = (100 * 2) + (100 * 2.5) + (100 * 3) + ((v_units - 300) * 4); 
        END IF; 
        UPDATE Bill 
        SET unit = v_units, 
            amount = v_amount 
        WHERE customer_id = v_id; 
    END LOOP; 
    CLOSE cur; 
END$$ 
DELIMITER ;

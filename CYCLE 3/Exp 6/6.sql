DELIMITER // 
CREATE PROCEDURE WithdrawAmount( 
    IN acc_id INT, 
    IN amount DECIMAL(10,2) 
) 
BEGIN 
    DECLARE current_balance DECIMAL(10,2); 
    SELECT balance INTO current_balance 
    FROM accounts 
    WHERE account_id = acc_id; 
    IF current_balance IS NULL THEN 
        SELECT 'Account does not exist' AS Message; 
    ELSEIF (current_balance - amount) < 1000 THEN 
        SELECT 'Insufficient balance. Must maintain at least 1000.' AS Message; 
    ELSE 
        UPDATE accounts 
        SET balance = balance - amount 
        WHERE account_id = acc_id; 
        SELECT 'Withdrawal successful' AS Message; 
    END IF; 
END // 
DELIMITER ;

DELIMITER // 
CREATE PROCEDURE GetsCustomerDetails(IN cust_name VARCHAR(50)) 
BEGIN 
    SELECT * FROM Customer WHERE name = cust_name; 
END //  
DELIMITER ;

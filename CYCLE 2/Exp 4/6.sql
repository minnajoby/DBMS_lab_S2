UPDATE employees SET Manager_ID= NULL where ID=’101’;  
UPDATE employees SET Manager_ID= 101 where ID IN (‘102’,’121’,’156’);  
UPDATE employees SET Manager_ID= 102 where ID IN (‘123’,’114’,’115’);  
UPDATE employees SET Manager_ID= 121 where ID=’127’;

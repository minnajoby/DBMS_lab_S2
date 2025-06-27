START TRANSACTION; 
insert into Order_Details values (1, 'Laptop', 5544, '2020-02-01'); 
insert into Order_Details values (2, 'Mouse', 3322, '2020-02-01'); 
insert into Order_Details values (3, 'Desktop', 2135, '2020-01-05'); 
insert into Order_Details values (4, 'Mobile', 3432, '2020-02-22'); 
insert into Order_Details values (5, 'Anti-Virus', 5648, '2020-03-10'); 
DELETE FROM Order_Details WHERE Order_Num IN (5544, 3322);

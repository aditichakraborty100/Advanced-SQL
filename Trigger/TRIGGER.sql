use Youtube;
-- Trigger 
SElect * from transactions;
Create table Transaction_logs ( log_Id int auto_increment Primary key,
Txno Int,
Txndate date,
Userno int,
Amount Decimal(10,2),
Product varchar(50),
City varchar(50),
Pay varchar(10),
Operation varchar (10),
Created_at timestamp default current_timestamp);

DELIMITER $$
CREATE trigger After_insert_transation 
After Insert On transactions
for each row
Begin
Insert into Transaction_logs (Txno,Txndate,Userno,amount,Product,city,Pay,Operation)
values (New.Txno,New.Txndate,New.Userno,New.amount,New.Product,New.city,New.pay,'Insert');
END$$
DELIMITER ;

Insert into transactions(Txno,Txndate,Userno,amount,Product,City,Pay)
values (21,'2023-04-15',400327,75.50,"Exercise & fitness","cleveland","Credit");
Insert into transactions(Txno,Txndate,Userno,amount,Product,City,Pay)
values (22,'2023-05-01',400743,499.99,"Outdoor Recreation","Denver","Cash"),
(23,'2023-05-10',400978,250.00,"Team Sports","Seattle","Credit");

Select * from Transaction_logs order by log_Id DESC Limit 3;
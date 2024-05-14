-- Transation 
-- Commit & Rollback 
Select * from transactions;
-- Commit 
Start TRANSACTION;
Update transactions set amount= amount* 1.1
where Product = " Exercise & Fitness";
Commit;
-- Roll Back 
Start TRANSACTION;
DELETE from  transactions where userno = 400743;
ROLLBACK;

-- Transaction 
Start Transaction ;
savepoint SP1;
Update transactions set Pay = 'Credit' where Pay = 'Cash';
savepoint SP2;
Delete from transactions where Txdate<'2013-01-01';
-- we don't want to delete old transaction
rollback to savepoint SP2;
Commit;

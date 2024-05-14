create database Project;
Use Project;
Select * from transactions;
Select * from sales_2003;
-- Inner Join 

Select t.Txno,t.Txndate,t.Product,t.city,t.pay, s.Business
from transactions t
inner join
sales_2003 s
On t.Product = s.Business;

-- Left join 
select t.Txno,t.Txndate,t.Product,t.City,t.Pay, s.Business
from transactions t
left join sales_2003 s
on t.Product=s.Business;

-- Right join 
select t.Txno,t.Txndate,t.Product,t.City,t.Pay, s.Business
from transactions t
right join sales_2003 s
on t.product = s.Business;

select t.Txno,t.Txndate,t.Product,t.City,t.pay,s.Business
from transactions t
cross join sales_2003 s;
-- 
Create table Student1 ( ID int Primary key, Name varchar (30));
insert into Student1 (ID, Name) values(1, "Akash"),(2,"Mou"),(3,"Ratan"),(4,"Mamon");
Create table Course( Course_name varchar(50), College_Name varchar(200));
insert into Course values( "BSC", "GB_College");
Select* from Student1;
Select* from Course;

Select S.Name, c.college_Name from Student1 S
cross join Course c;
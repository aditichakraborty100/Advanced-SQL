Create database Example;
Use Example;
Select * from transactions;
Select * from sales_2003;

Select t.Txno, t.Txndate, t.Amount, t.Product, t.City, t.Pay, s.Business
from transactions t
inner join sales_2003 s
on t.Product = s.Business;

Select t.Txno, t.Txndate, t.Amount, t.Product, t.City, t.Pay, s.Business
from transactions t
Left join sales_2003 s
on t.Product = s.Business;

Select t.Txno, t.Txndate, t.Amount, t.Product, t.City, t.Pay, s.Business
from transactions t
Right join sales_2003 s
on t.Product = s.Business;

Select t.Txno, t.Txndate, t.Amount, t.Product, t.City, t.Pay, s.Business
from transactions t
Cross join sales_2003 s;
 
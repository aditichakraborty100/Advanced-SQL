Use aditi;
 show tables;
Create table Emp (Emp_Id int Primary Key,
F_name varchar(200),
L_name Varchar(200),
Department varchar(200),
Salary Decimal(10,2),
Hire_Date date);

Insert into Emp(Emp_Id,F_name,L_name,Department,Salary,Hire_Date) values
(1,"Antara","Ghosh","HR",66000.00,'2021-08-12'),
(2,"Raj","Sharma","IT",80000.00,'2022-07-14'),
(3,"Priyanka","Saha","HR",50000.00,'2022-05-10'),
(4, "Dipto", "Raj","IT",80000.00,'2023-04-11'),
(5,"Akro","Majumder","IT",70000.00,'2022-02-12'),
(6,"Amrita","Singh","Finance",71000.00,'2021-01-12'),
(7,"Rashmi","Das","Finance",71000.00,'2022-02-12'),
(8,"Apratim","Guha","IT",60000.00, '1987-03-12'),
(9," Som","Guha","Admin",50000.00,'2021-04-14'),
(10,"Akash","Sundar","Admin",40000.00,'2022-05-22'),
(11,"Anindita","Sharma","Finance",60000.00,'2021-01-12');

Select * from Emp;


-- RANK ( Skip the Rank_no when there is a tie value)
Select F_name,L_name,Department,Salary,
Rank() over(partition by Department order by salary desc)as Rank_no
from Emp;

Select F_name,salary,department,
Rank() over( Partition by Department order by salary desc  )as new_rank
from Emp;
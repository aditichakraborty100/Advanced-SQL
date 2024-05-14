Use aditi;
show tables;
select * from student2;
-- Window Function  Row_Number, Rank, Dense_Rank 

Select S_name,Dept,Salary,
Row_number() over(partition by Dept order by salary desc) 
as Row_no from Student2;

Select City,Salary,
Row_number() over(partition by city order by salary) as row_no
from Student2;
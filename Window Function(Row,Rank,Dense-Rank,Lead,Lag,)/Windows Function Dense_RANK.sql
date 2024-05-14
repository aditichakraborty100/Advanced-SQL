Select * from Emp;
-- DENSE RANK( DENSE_RANK)--
Select F_name,department,Salary,
dense_rank() Over( Partition By Department order by Salary desc) as NEW_RANK 
from Emp;
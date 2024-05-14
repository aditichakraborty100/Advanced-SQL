select * from Emp;
-- Lead 
Select F_name,Department,salary,
Lead(salary)Over(partition by Department Order by Salary Desc) as Next_Higher_Salary
From Emp;

-- LAG 
Select F_name,Department,Salary,
LAG(Salary) Over( Partition by Department order by Salary DESC) as NEXT_Lower_Salary
From Emp;
--
Select F_name,Department,Salary,
Max(Salary) Over( Partition by Department) as Max_Salary
From Emp;

Select F_name,Department,Salary,
Min(Salary) Over( Partition by Department) as Min_Salary
From Emp;

Select F_name,Department,Salary,
Avg(Salary) Over( Partition by Department) as Avg_Salary
From Emp;

Select F_name,Department,Salary,
Sum(Salary) Over( Partition by Department) as sum_Salary
From Emp;
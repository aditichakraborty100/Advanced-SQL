Select * from Emp;
-- CASE STASEMENT 
Select F_name,L_name,Department,Salary,
CASE
When Salary<60000 then 'Low'
When Salary between 60000 and 70000 then 'Medium'
Else 'High'
End  as Salary_Range
from Emp;

-- Case Statement Example 2
Update Emp 
Set Salary = Case
When Department ="IT" then Salary*1.1
When Department = "HR" then salary*1.5
Else Salary
END
Where Emp_Id = 3;
/* SubQueries*/


Select *
From EmployeeSalary

-- Sbuquery in select

select EmployeeID,  Salary, (select AVG(Salary) From EmployeeSalary) as AllavgSalary
From EmployeeSalary



-- How to do it partition By

select EmployeeID,  Salary, AVG(Salary) over() as AllavgSalary
From EmployeeSalary

-- Why Group By doesn't work

select EmployeeID,  Salary, AVG(Salary) as AllavgSalary
From EmployeeSalary
Group By EmployeeId, Salary
order by 1,2

-- Subquery in From

Select a.EmployeeID, AllAvgSalary
From ( select EmployeeID,  Salary, AVG(Salary) over() as AllavgSalary
	  From EmployeeSalary) a



-- Subquery in where

select EmployeeID, JobTitle,  Salary
From EmployeeSalary 
where EmployeeID in (
		Select EmployeeID
		from EmployeeDetails
		where Age > 30)


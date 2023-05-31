/* Temp Tables */

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle Varchar(100),
Salary int
)

Select *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1001', 'HR', '45000'
)
/* we dont have to enter the data manually, insted we can just select the data from a particular table */

INSERT INTO #temp_Employee
SELECT *
FROM database1..EmployeeSalary

DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)


INSERT INTO #Temp_Employee2
SELECT JobTitle, Count(JobTitle), Avg(Age), Avg(Salary)
FROM database1..EmployeeDetails emp
join database1..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

SELECT * 
FROM #Temp_Employee2



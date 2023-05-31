/* CTEs */

WITH CTE_Employee as  
(SELECT FirstName, LastName, Gender, Salary,
COUNT(gender) OVER (PARTITION by gender) as TotalGender
, AVG(Salary) OVER (PARTITION bY Gender) as AvgSalary
FROM database1..EmployeeDetails emp
JOIN database1..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000' 
)
SELECT FirstName, AvgSalary
FROM CTE_Employee



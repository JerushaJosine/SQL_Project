/*
CASE STATEMENT
*/

--SELECT FirstName, LastName, Age,
--CASE 
--	WHEN Age = 38 THEN 'Stanley'
--	WHEN Age > 30 THEN 'OLD'
--	WHEN Age BETWEEN 27 AND 30 THEN 'YOUNG'
--	ELSE 'BABY'
--END
--FROM database1.dbo.EmployeeDetails
--WHERE Age is NOT NULL
--ORDER BY Age

SELECT FirstName, LastName, JobTitle, Salary
FROM database1.dbo.EmployeeDetails
JOIN database1.dbo.EmployeeSalary
	ON employeeDetails.EmployeeID = EmployeeSalary.EmployeeID
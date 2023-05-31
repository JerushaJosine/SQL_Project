/*SELECT *
FROM database1.dbo.EmployeeDetails
SELECT *
FROM database1.dbo.WareHouseEmployeeDemographics
ORDER by EmployeeID


SELECT * 
FROM database1.dbo.EmployeeDetails
FUll Outer Join database1.dbo.WareHouseEmployeeDemographics
	ON EmployeeDetails.EmployeeID = 
	WareHouseEmployeeDemographics.EmployeeID*/


SELECT EmployeeID, FirstName, Age
FROM database1.dbo.EmployeeDetails
UNION
SELECT EmployeeID, JobTitle, Salary
FROM database1.dbo.EmployeeSalary
ORDER by EmployeeID

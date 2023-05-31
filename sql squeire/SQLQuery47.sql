/* ALIASING */

--SELECT FirstName + ' ' + LastName AS FullName
--FROM [database1].[dbo].[EmployeeDetails]

SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.Jobtitle, Ware.Age
FROM [database1].[dbo].[EmployeeDetails]  Demo
JOIN [database1].[dbo].[EmployeeSalary] Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [database1].[dbo].WareHouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID
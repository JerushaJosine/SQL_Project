/*
Inner Joins, Full/Left/Right Outer Joins
*/

/*SELECT *
FROM database1.dbo.EmployeeDetails

SELECT *
FROM database1.dbo.EmployeeSalary
*/

SELECT JobTitle, AVG(Salary)
FROM database1.dbo.EmployeeDetails
Inner Join database1.dbo.EmployeeSalary
    ON EmployeeDetails.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle
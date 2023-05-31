/* UNIONS, UNION ALL */

SELECT *
FROM database1.dbo.EmployeeDetails
FULL Outer Join database1.dbo.EmployeeSalary
    ON EmployeeDetails.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle
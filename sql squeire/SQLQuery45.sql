--/* having clause
--*/

--SELECT JobTitle, AVG(Salary)
--FROM database1.dbo.EmployeeDetails
--JOIN database1.dbo.EmployeeSalary
--	ON EmployeeDetails.EmployeeID=EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--HAVING AVG(Salary) > 45000
--ORDER BY AVG(Salary)

--/* Find a job title which has more that 1 person */

--SELECT * 
--FROM database1.dbo.EmployeeDetails

--UPDATE database1.dbo.EmployeeDetails
--SET Age = 31, Gender = 'Female'
--WHERE FirstName = 'Holly' AND LastName = 'Flex'

--SELECT * 
--FROM database1.dbo.EmployeeDetails

--UPDATE database1.dbo.EmployeeDetails
--SET EmployeeID = 1012
--WHERE FirstName = 'Holly' AND LastName = 'Flex'

--SELECT *
--FROM database1.dbo.EmployeeDetails

--DELETE FROM database1.dbo.EmployeeDetails 
--Where EmployeeID = 1001

--SELECT *
--FROM database1.dbo.EmployeeDetails
--WHERE EmployeeID = 1001
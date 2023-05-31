/* Partition by */

SELECT FIrstName, LastName, Gender, Salary,
	Count (Gender) OVER (PARTITION BY Gender) as TotalGender
FROM database1..EmployeeDetails dem
JOIN database1..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID



SELECT Gender,COUNT (Gender)
FROM database1..EmployeeDetails dem
JOIN database1..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY  Gender


SELECT *
FROM EmployeeDetails
ORDER BY 4 DESC, 5 DESC

SELECT Gender, COUNT(Gender) As CountGender
FROM EmployeeDetails
WHERE Age > 31
GROUP BY Gender
ORDER BY Gender 
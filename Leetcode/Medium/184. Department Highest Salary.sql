SELECT Department.Name Department, 
       A.Name Employee, 
       A.Salary Salary
FROM Employee AS A
JOIN Department ON A.DepartmentId = Department.Id
WHERE A.Salary = (
    SELECT MAX(Salary)
    FROM Employee AS B
    WHERE A.DepartmentId = B.DepartmentId
    )

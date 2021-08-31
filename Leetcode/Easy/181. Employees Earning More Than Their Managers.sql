#SUB_QUERY 를 이용한 풀이
SELECT Name AS Employee
FROM Employee AS Emp1
WHERE ManagerId IS NOT NULL AND
    Salary > (SELECT Salary
              FROM Employee AS Emp2
              WHERE Emp2.Id = Emp1.ManagerId
             );

#JOIN 을 이용한 풀이
SELECT Emp1.Name AS Employee
FROM Employee AS Emp1
JOIN Employee AS Emp2
    ON Emp1.managerId = Emp2.Id
WHERE Emp1.Salary > Emp2.Salary;

SELECT D.name AS Department,
       E.name AS Employee,
       E.Salary AS Salary
FROM Employee AS E
LEFT JOIN Department AS D ON E.departmentID = D.id
WHERE E.Salary IN (SELECT * FROM (
                        SELECT DISTINCT(E2.Salary) 
                        FROM Employee AS E2
                        WHERE E2.departmentID = D.id
                        ORDER BY E2.Salary DESC LIMIT 3) AS TOP_Salary
                   )

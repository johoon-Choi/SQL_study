# Sub query 를 활용한 풀이
DELETE FROM Person 
WHERE Id NOT IN (
    SELECT Sub.Minval FROM (
        SELECT MIN(Id) AS Minval
        FROM Person
        GROUP BY Email
        ) AS Sub
    );
    
# JOIN 을 활용한 풀이
DELETE p2 FROM Person p1
LEFT JOIN Person p2
    ON p1.Email = p2.Email
WHERE p1.Id < p2.Id;

# JOIN을 활용한 풀이
SELECT DISTINCT A.Num AS ConsecutiveNums
FROM Logs AS A
    JOIN Logs AS B ON A.Id + 1 = B.Id AND A.Num = B.Num
    JOIN Logs AS C ON A.Id + 2 = C.Id AND A.Num = C.num;
    
# SUB QUERY OF SUB QUERY를 활용한 
SELECT DISTINCT A.Num AS ConsecutiveNums
FROM Logs AS A
WHERE A.Num = (
    SELECT B.Num
    FROM Logs AS B
    WHERE A.Id + 1 = B.Id AND
    B.Num = (
        SELECT Num AS C
        FROM Logs AS C
        WHERE B.Id + 1 = C.Id
        )
    )

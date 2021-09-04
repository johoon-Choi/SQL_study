SELECT main.id, main.student
FROM (
    (SELECT id - 1 AS id, student
    FROM seat
    WHERE id & 1 = 0)
    UNION
    (SELECT 
        (CASE WHEN id < (SELECT MAX(id)
                         FROM seat)
              THEN id + 1
              ELSE id
              END
         ) AS id, student
    FROM seat
    WHERE id & 1 = 1)
) AS main
ORDER BY main.id ASC;

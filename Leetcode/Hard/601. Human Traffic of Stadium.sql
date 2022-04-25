SELECT DISTINCT(t1.id), t1.visit_date, t1.people
FROM Stadium AS t1 JOIN Stadium AS t2 JOIN Stadium AS t3
ON (t1.id = t2.id - 1 AND t1.id = t3.id - 2) OR
   (t1.id = t2.id + 1 AND t1.id = t3.id - 1) OR
   (t1.id = t2.id + 2 AND t1.id = t3.id + 1)
WHERE 100 <= t1.people AND 100 <= t2.people AND 100 <= t3.people
ORDER BY t1.id

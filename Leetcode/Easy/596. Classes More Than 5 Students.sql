# WITH 를 사용해본 코드
WITH courses2 AS (
    SELECT DISTINCT *
    FROM courses
)

SELECT DISTINCT class
FROM courses2
GROUP BY class
HAVING 5 <= COUNT(student);

# 더 간결하게 구현된 코드
SELECT DISTINCT class
FROM courses
GROUP BY class
HAVING 5 <= COUNT(DISTINCT student);

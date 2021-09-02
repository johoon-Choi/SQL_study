# Sub Query 로 해결
SELECT W1.id AS Id FROM Weather AS W1
WHERE W1.Temperature > (
    SELECT W2.Temperature FROM Weather AS W2
    WHERE W1.recordDate = W2.recordDate + INTERVAL 1 DAY
    )
    
# JOIN 으로 해결
SELECT W1.id AS Id FROM Weather AS W1
JOIN Weather AS W2
    ON W1.recordDate = W2.recordDate + INTERVAL 1 DAY
    WHERE W1.temperature > W2.temperature;

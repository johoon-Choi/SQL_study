SELECT T1.request_at AS 'Day', 
       ROUND(COUNT(IF(T1.status != 'completed', 1, NULL))/COUNT(*), 2) 
            AS 'Cancellation Rate'
FROM Trips AS T1
WHERE T1.client_id NOT IN (
                            SELECT users_id FROM Users
                            WHERE banned = 'Yes'
                          )
                          AND
      T1.driver_id NOT IN (
                            SELECT users_id FROM Users
                            WHERE banned = 'Yes'
                          )   
GROUP BY request_at
HAVING T1.request_at BETWEEN '2013-10-01' AND '2013-10-03'

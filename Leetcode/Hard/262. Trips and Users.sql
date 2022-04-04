SELECT T.request_at AS 'Day', 
       ROUND(COUNT(IF(T.status != 'completed', 1, NULL))/COUNT(*), 2) 
            AS 'Cancellation Rate'
FROM Trips AS T
WHERE T.client_id NOT IN (
                          SELECT users_id FROM Users
                          WHERE banned = 'Yes'
                         )
                          AND
      T.driver_id NOT IN (
                          SELECT users_id FROM Users
                          WHERE banned = 'Yes'
                         )   
GROUP BY request_at
HAVING T.request_at BETWEEN '2013-10-01' AND '2013-10-03'

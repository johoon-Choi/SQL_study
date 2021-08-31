# USE SUB QUERY
SELECT DISTINCT Email 
FROM Person AS L
WHERE 1 < (SELECT COUNT(*)
            FROM Person AS R
            WHERE L.Email = R.Email);
            
# USE JOIN
SELECT DISTINCT L.Email 
FROM Person AS L
LEFT JOIN Person AS R
    ON L.Email = R.Email
WHERE L.Id <> R.Id;

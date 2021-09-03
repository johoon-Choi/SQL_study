SELECT Score AS 'score', 
DENSE_RANK() OVER (ORDER BY Score DESC) AS 'Rank'
FROM Scores;

#RANK()
#DENSE_RANK()
#ROW_NUMBER()

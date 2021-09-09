SELECT DISTINCT CITY FROM STATION
WHERE (ID & 1) = 0

/*
  ID & 1 == 0 ?
    ID is even number
  ID & 1 == 1 ?
    ID is odd number
*/

SELECT  CASE WHEN A = B AND B = C THEN 'Equilateral'
             WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
             WHEN A = B OR B = C OR A = C THEN 'Isosceles'
             ELSE 'Scalene'
        END AS ANSWER
FROM TRIANGLES;

/*
  조건문의 순서가 중요하다.
*/

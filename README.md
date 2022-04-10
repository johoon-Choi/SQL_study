"Im studying MySQLBy with Leetcode, HackerRank"


<div align="center"><h1> functions </h1></div>

## GROUP BY
- 그룹화
- **HAVING** : HAVING 조건에 따른 GROUP 들만 생성이 된다.
- Ex) *`GROUP BY group_id HAVING group_id < 5 `* : group_id 가 5 미만인 Data들만 group_id 로 그룹화

## ORDER BY
- 오름차순(ASC) / 내림차순(DESC)
- Default : 오름차순(ASC)
- Ex) *`ORDER BY group_id ASC, id ASC`* : group_id 기준으로 오름차순 정렬 후 같은 group_id Data들에 대해선 id 로 오름차순 정렬

## JOIN
- 설명 Link : https://johoonday.tistory.com/179
- 두 Table의 교집합에 해당되는 Column을 정하고, 함께 참고한다.
- Ex) ```MySQL
SELECT u.id, u.name 
FROM users AS u
JOIN depts AS d ON u.dept_id = d.id
WHERE d.id = 4
```

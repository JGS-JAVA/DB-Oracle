/*

1. FROM 포이름
2. WHERE 조건식
3. GROUP BY 컬럼명
4. HAVING 그룹함수식 비교연산자 비교값
5. SELECT 컬럼명 AS 별칭, 컬럼명, 컬럼명, ...
6. ORDER BY 컬럼명 | 별칭 | 컬럼순서 [오름/내림차순] | [NULL FIRST | LAST ] 


GROUP BY = 같은 값들 여러개 있는 컬럼을 갖고 같은 값들을 하나로 묶음

GROUP BY 컬럼명 | 함수식, ...;
-- 여러 값 묶어 하나로 처리
그룹을 SELECT 절에서 그룹함수 사용
그룹함수는 한개 결과만 산출해서 그룹 여러개면 오류발생
여러 결과값 산출하려면 그룹함수 적용된 그룹기준을 ORDER BY 절에서 사용

HAVING 절 = 그룹함수로 구해올 크룹에 대한 조건설정
그룹조건, 특정그룸만 조회

HAVING 컬럼명 | 함수식 비교연산자 비교값








*/
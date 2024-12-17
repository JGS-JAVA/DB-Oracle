/*
CASE 문은 조건에 따라 다른결과 반환
IF-ELSE 문과 비슷한 역할, 다양한 상황에 맞게 조건검사
특정 결과값 검사후 도출하거나 삽입과 수정 한번에 처리


1. case ...when ...then 문법 (다중조건 처리)

여러조건 순서대로 검사후 조건에 맞는 첫번째 결과 반환
조건 불일치시 else 절에 지정된 값 반환

CASE
WHEN 조건1 THEN 결과1
WHEN 조건2 THEN 결과2
...
ELSE 결과N

END

2. CASE 컬럼 비교문법 (단일값 비교)
단일 컬럼값이 여러조건중 하나와 일치하는지 검사후 일반적으로 값이 같은지 비교

CASE 컬럼명
WHEN 조건1 THEN 결과1
WHEN 조건2 THEN 결과2
...
ELSE 결과N

END

*/


UPDATE `ORDER` 
SET STATUS = CASE
WHEN STATUS = 'PENDING' THEN '대기'
WHEN STATUS = 'SHIPPED' THEN '배송중'
WHEN STATUS = 'DELIVERED' THEN '배송완료'
WHEN STATUS = 'CANCELLED' THEN '취소'
END;











/*
함수

CONCAT = 여러 문자열을 하나의 문자열로 결합
CONCAT(STRING1,STRING1,STRING1, ..., STRINGN)
EX) SELECT CONCAT('HELLO',' ','WORLD','!');
--> HELLO WORLD!

SUBSTRING_INDEX = 문자열에서 특정 구분자 기준으로 일부만 잘라서 가져오기
SUBSTRING_INDEX(STRING,구분기준,COUNT);
COUNT = 양수일때 기준에서 왼쪽부터 COUNT 만큼 가져오기 
COUNT = 음수일때 기준에서 오른쪽부터 COUNT 만큼 가져오기 
EX) SELECT SUBSTRING_INDEX('USER@NAVER.COM','@',1);
--> @기준으로 왼쪽 첫째만 가져오기 --> USER
EX) SELECT SUBSTRING_INDEX('USER@NAVER.COM','@',1);
--> @기준으로 오른쪽 첫째만 가져오기 --> NAVER.COM










NULL 연산 = IS NULL / IS NOT NULL
EXTRACT() = 지정된 연월일 택해서 추출
SYSTIMESTAMP = 현재시간
SYSDATE = 현재시간(마이크로초 없음)

TRUNC() 버림(자르기)
FLOOR() 내림
CEIL() 올림
ROUND() 반올림

MAX
MIN
SUM -> 
SELECT SUM(*) FROM USER; --> 회우너 총인원수
SELECT SUM(*) FROM PRODUCT WHERE PRODUCT_NAME LIKE(%?%); --> 회원 총인원수

REPLACE = 문자열 바꾸기
LENGTH() = 문자열 길이 바꾸기
INSTR() = 찾을 시작위치부터 지정된 순번째 찾은 문자열 시작위치 반환
SUBSTR() = 문자열 시작부터 지정길이 잘라내 반환
TRIM() = 앞/뒤/양옆의 지정된 문자열 제거
         옵션 LEADING /TRAILING /BOTH
MOD = 나머지
ABS = 절대값
AVG() = 평균
COUNT() = 총합 -> 로그인시 사용
SELECT COUNT(*)
FROM USER
WHERE ID = ? AND PW = ? ;

ID 와 PW 가 일치시 COUNT = 1
ID 와 PW 가 불일치시 COUNT = 0











*/
/*
n=최대 문자수
p=정수 개수
s=소수점이하 자릿수 지정

VARCHAR2 NUMBER TIMESTAMP 많이 쓴다

1. 문자열 타입 character
CHAR (n) = 고정길이 문자열 한글자씩 최대 몇글자할지 설정/ 미작성시 1BYTE 컬럼 1개에 숫자나 영어 1개 가능
VARCHAR (n) = ORACLE 에서 사용불가, 표준SQL 에서 사용가능
VARCHAR2 (n) = ORACLE에서 사용불가, 가변(변경가능)길이 문자열, VARCHAR 보다 큰공간 사용가능, 길이지정 필수(보통 평균 255BYTE),
CLOB (n) = 이메일, 대량글자 담을때 사용

2. 숫자 타입 numberic
NUMBER(P,S) = 숫자나 실수 담기, P S 미작성시 38,0 으로 설정됨 (최대 38자리 정수와 소수점 밑 0번째까지 작성)


3. 날짜 시간 date and time
DATE (n) = 일시분초(기본 7 BYTE)
TIMESTAMP (n) = 일시분초(기본 7 BYTE) 나노초단위 가능


4. 2진 binary
BLOB = 크기 무제한, 이미지 동영상 등 여러 파일 저장, 최대 4 GB 저장, 유지비용 비싸 사용 안함


5. 논리형 oracle에서만 사용가능
BOOLEAN = TRUE FALSE NULL 가능 1 BYTE














*/
/*
숫자자료형
TININT = 아주 작은 정수
SALLINT = 작은 정수
MEDIUMINT = 중간크기 정수
INT = INTEGER = 표준크기 정수
BIGINT = 매우 큰 정수

실수자료형
FLOAT = 실수형 자료형 (DOUBLE보다 범위 작음)
DOUBLE =  실수형 자료형
DECIMAL OF NUMBERIC = 고정소수점 표현 숫자

문자자료형

고정길이
CHAR(n) = 길이 고정적으로 설정
            무조건 초기작성 길이만큼 공간설정 
가변길이 
VARCHAR = 변수공간길이 변경가능 문자열
            실제 데이터 길이만큼 저장
            최대 255자(숫자,영어 기준) 저장 가능
TEXT = 긴글자 저장시 사용 65535자까지 저장가능
MEDIUMTEXT = TEXT보다 큰 덱스트 저장 16MB 
LONGTEXT   = TEXT, MEDIUMTEXT 보다 큰 텍스트 저장 4GB        

기타 자료형
BLOB = 이미지 동영상 등 이진데이터 저장
ENUM = 미리 정의된값 선택하는데 사용
        HTML에서 SELECT - OPTION 
        RADIO 처럼 지정된 범위에서만 선택가능
  예) ENUM(SMALL MEDIUM LARGE) = 소 중 대 중 하나 선택해서 DB에 저장
SET = 여러값 가지는 집합 정의 (다수선택 가능)
        CHECKBOX 처럼 다수선택해 DB에 저장      
        예) SET('독서','낚시','쇼핑') = 3개 한번에 저장가능

CREATE TABLE 표이름 (
    USER_ID INT PRIMARY KEY AUTO_INCREMENT,
    GENDER ENUM('FEMALE','MALE')
    HOBBIES SET('READING','SPORTS','TRAVELING')

);


날짜자료형
DATE = 날짜만 저장 (YYYY-MM-DD)
DATETIME = 날짜, 시간 저장 (YYYY-MM-DD HH:mm:ss)
TIMESTAMP = 날짜, 시간 저장, 값 변경시 현재시간으로 갱신
            TIMESTAMP DEFALUT CURRENT_TIMESTAMP 기본으로 현재시간 저장
TIME = 시간만 저장 ( HH:mm:ss)
YEAR =  연도만 저장 (YYYY)




*/
select current_date();
-- 처음에 use 데이터베이스명; 으로 접속하기
-- use 데이터베이스명; -> 표 저장공간 사용하겠다

use KHTDB;
-- SELECT INSERT UPDATE 같은 DML DDL DCL 구문 대소문자 구분x
-- 유저가 볼 DB가 없을때 발생한 에러 
/*
USE DATABASE; 
회사의 각 서비스 데이터베이스에 접속
유저가 데이터베이스에 접근시
ID, PW 로 접속
USE DAUM;
SELECT * FROM DAUM회원정보표;

USE MELON;
SELECT * FROM MELON표;

0	6	11:33:49	-> 표 저장공간 사용하겠다
 
 use KHTDB	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> 표 저장공간 사용하겠다
 
*/
CREATE TABLE USER (
    user_id INT PRIMARY KEY auto_increment,        -- 카페의 고유 ID
    user_name VARCHAR(100) NOT NULL,  --  이름
    location VARCHAR(255),            --  위치
    contact_number VARCHAR(20)        --  연락처
);

select * from user;

INSERT INTO USER (USER_NAME, LOCATION, CONTACT_NUMBER)
VALUES('홍길동','서울시 강남구','010-1234-5678');

INSERT INTO USER (USER_NAME, LOCATION, CONTACT_NUMBER)
values('고말숙','서울시 영등포구','010-2345-6789'),
('김철수','서울시 송파구','010-9876-5432');

COMMIT;

select * FROM USER;
-- SELECT INSERT UPDATE DELETE 같은 QUERY 작업시 ; 로 닫기

select * 
FROM USER 
WHERE LOCATION = '서울시 강남구';

INSERT INTO USER (USER_NAME, LOCATION, CONTACT_NUMBER)
values('이순신','서울시 종로구','010-4567-8901'),
('최지훈','서울시 서초구','010-5677-8911'),
('정수민','서울시 강동구','010-6781-2345'),
('김태호','경기도 수원시','010-2222-3333'),
('이광수','인천시 남동구','010-4444-5555');

commit;

-- 시작할 때 use 데이터베이스명; 으로 데이터베이스 열어야 코드가 작동한다
use KHTDB;
select * from user;

-- 서울에 거주하는 사람 조회
-- select * from user where location = '서울%'; 서울% 글자와 완전일치한 건만 조회
select *
from user
where location not like '%서울%';

select * 
from user
where contact_number like '%44%';

commit;

-- USERPROFILE 표 생성 

create table USERPROFILE (
USER_ID INT PRIMARY KEY auto_increment, -- 기본키, 자동으로 번호증가
USERNAME VARCHAR(50) NOT NULL, -- 빈칸 불가
EMAIL VARCHAR(100) NOT NULL, -- 빈칸 불가
BIRTHDATE date,
ACCOUNT_BALANCE DECIMAL(10,2), -- 정수 10자리, 소수점 2자리까지
GENDER ENUM('MALE','FEMALE'), -- 선택 1개만
HOBBIES SET('READING','SPORTS','RUNNING') -- 복수선택 가능
);

COMMIT;

INSERT INTO USERPROFILE (USERNAME, EMAIL, BIRTHDATE, ACCOUNT_BALANCE, GENDER, HOBBIES)
VALUES
    ('홍길동', 'hong1@example.com', '1990-01-01', 10000.50, 'MALE', 'READING'),
    ('김영희', 'kim1@example.com', '1995-02-15', 5000.00, 'FEMALE', 'SPORTS'),
    ('이철수', 'lee1@example.com', '1987-03-10', 2000.75, 'MALE', 'RUNNING'),
    ('박민수', 'park1@example.com', '1993-05-20', 7000.25, 'MALE', 'READING,SPORTS'),
    ('최수영', 'choi1@example.com', '1998-07-30', 8000.00, 'FEMALE', 'RUNNING'),
    ('정하나', 'jung1@example.com', '1990-09-10', 3000.40, 'FEMALE', 'READING'),
    ('한상민', 'han1@example.com', '1985-04-25', 6000.30, 'MALE', 'SPORTS,RUNNING'),
    ('안세정', 'oh1@example.com', '1992-12-12', 9000.00, 'MALE', 'READING'),
    ('윤미래', 'yoon1@example.com', '1988-08-08', 4000.00, 'FEMALE', 'SPORTS'),
    ('장동건', 'jang1@example.com', '1991-11-11', 7500.50, 'MALE', 'RUNNING'),
    ('고은아', 'ko1@example.com', '1996-06-06', 3000.00, 'FEMALE', 'READING,SPORTS'),
    ('황보영', 'hwang1@example.com', '1994-03-03', 8500.75, 'FEMALE', 'RUNNING'),
    ('임채연', 'lim1@example.com', '1997-05-15', 2000.25, 'FEMALE', 'READING'),
    ('백승호', 'baek1@example.com', '1989-10-10', 6000.00, 'MALE', 'SPORTS'),
    ('송지효', 'song1@example.com', '1993-02-02', 9500.50, 'FEMALE', 'READING,RUNNING'),
    ('조세호', 'cho1@example.com', '1995-07-07', 1500.75, 'MALE', 'SPORTS'),
    ('이광수', 'lee2@example.com', '1991-09-09', 8000.00, 'MALE', 'RUNNING'),
    ('김나영', 'kim2@example.com', '1986-12-01', 7000.25, 'FEMALE', 'READING'),
    ('박지성', 'park2@example.com', '1988-01-01', 5000.75, 'MALE', 'SPORTS,RUNNING'),
    ('유재석', 'yoo1@example.com', '1987-05-05', 10000.00, 'MALE', 'READING,SPORTS');

-- 테이블 삭제
DROP TABLE USERPROFILE;

-- 테이블 내 데이터 삭제 = DELETE FROM 테이블명 WHERE = 테이블에서 행 하나 삭제조건;

-- ERROR CODE: 1051. UNKNOWN TABLE 'KHTDB.USERPROFILE' 표 없어서 삭제불가
COMMIT;
















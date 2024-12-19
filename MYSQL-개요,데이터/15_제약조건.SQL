/*
제약조건(CONSTRAINTS)
사용자가 원하는 조건의 데이터만 유지하려고 특정컬럼에 제약설정
데이터 무결성 보장

무결성 = 없을 무 / 모자랄 결/ 성질 성
INTEGRITY 데이터 손상없고 완전 정확 한결같은 성질
입력데이터 문제없나 자동검사
데이터 수정/삭제 여부 검사등
-> 제약조건 위배 DML 구문 수행불가

TCL
SAVE POINT COMMIT ROLLBACK

제약조건 종류
PRIMARY KEY, NOT NULL, UNIQUE, CHECK, FOREIGN KEY

제약조건 확인 
(MYSQL)
표 제약조건 확인
INFORMATION_SCHEMA.TABLE_CONSTRAINTS
SELECT *
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = '표이름'
AND TABLE_SCHEMA = '디비이름'

컬럼수준 제약조건 확인
INFORMATION_SCHEMA.KEY_COLUMN_USEAGE
SELECT *
FROM INFORMATION_SCHEMA.KEY_COLUMN_USEAGE
WHERE TABLE_NAME = '표이름'
AND TABLE_SCHEMA = '디비이름'

(오라클)
USER_CONSTRAINTS = 사용자작성 제약조건 확인 사전뷰

/*
PRIMARY KEY(기본키)
각 행 식별 컬럼/컬럼조합
표 하나에 PK 하나
키본키 설정된 컬럼은 자동으로 UNIQUE, NOT NULL
-> 시간순으로 순차적 번호부여
-> 전날 마지막 번호 13번이면 오늘 번호는 14번부터 시작

CREATE TABLE 표이름(
테이블_ID INT AUTO_INCREMENT PRIMARY KEY,
유저명 VARCHAR(50)
)
테이블_ID 컬럼은 기본키, 빈값없음



NOT NULL()
빈값 못갖게 제한
값입력 필수
DEFAULT VALUE 설정해서 NULL 값 방지

CREATE TABLE 표이름(
테이블_ID INT AUTO_INCREMENT PRIMARY KEY,
유저명 VARCHAR(50) NOT NULL,
가입일자 DATE NOT NULL DEFAULT CURRENT_DATE
)
유저명 가입일자 모두 빈값불가 -> 가입제한 
(유저명은 유저가 기록, 가입일자는 자동기록됨)





UNIQUE
컬럼값 고유함
표에서 중복값 불가
제약조건은 1회만 빈값 허용
표 하나에 여러 유니크 컬럼 가진다
CREATE TABLE 표이름(
테이블_ID INT AUTO_INCREMENT PRIMARY KEY,
이메일 VARCHAR(100) UNIQUE,
주민번호 VARCHAR(100) UNIQUE,
휴대폰번호 VARCHAR(100) UNIQUE
)
3개중 하나라도 중복시 가입제한,저장불가




CHECK
특정 컬럼값이 지정조건 만족해야함
MYSQL 8.0 이상만 지원
값 삽입/수정시 조건검증
조건 불만족시 저장불가
CREATE TABLE 표이름(
테이블_ID INT AUTO_INCREMENT PRIMARY KEY,
가격 DECIMAL(10,2) CHECK(가격 > 0)
)


FOREIGN KEY(다른 표에서 가져온 외부 키)
한 표의 컬럼이 다른 표의 기본키나 유니크 컬럼 참조
디비 내에서 표 간 관계정의
참조 무결성 유지
부모 표 값 변경시 삭제/업데이트 제어 가능
ON DELETE, ON UPDATE 
CASCADE = 참조하는 값 변경시 참조된 값도 함께 변경
SET NULL = 참조된 값 NULL로 설정
RESTRICT = 변경제한

CREATE TABLE CUSTOMERS(
CUSTOMER_ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(100) 
)
CREATE TABLE ORDERS(
ORDER_ID INT AUTO_INCREMENT PRIMARY KEY,
CUSTOMER_ID INT
NAME VARCHAR(100) 
FOREIGN KEY(CUSTOMER_ID INT) REFERENCES CUSTOMERS(CUSTOMER_ID) ON DELETE CASCADE
) 
-- ID 삭제시 ID 일치하는 모든 컬럼(댓글, 주문내역 등) 같이 삭제됨
-- 카페,블로그 등은 회원탈퇴시 게시물,댓글 유지됨(외부키 안걸었다)
-- 배달앱은 가게폐업시 메뉴,리뷰 삭제됨(외부키 걸었다)


CREATE TABLE 이츠(
    이츠회원번호
    카테고리이름
        가게번호

)

CREATE TABLE 이츠가게들(
    가게번호
    가게이름
    가게주소
)
CREATE TABLE 메뉴들 (
    메뉴번호
    가게번호
    메뉴이름
    메뉴가격

)







*/







*/
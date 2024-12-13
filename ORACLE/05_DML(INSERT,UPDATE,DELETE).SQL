--- DML
/*
DML(DATA MANIPULATION LANGUAGE)
데이터 조작 언어
값 삽입, 수정, 삭제 후 반드시 
COMMIT 작성해야 저장됨 / 망각하기 쉬우니 메모장에 따로 저장할 것!
ROLLBACK 작성해 저장취소

마음대로 COMMIT, ROLLBACK 금지!!

삽입
INSERT INTO 테이블명 VALUES (데이터, ...)
표에 모든 컬럼값 추가

INSERT INTO 테이블명(컬럼명, ...)
            VALUES (데이터, ...);
표에 특정컬럼만 값 추가, 나머지 컬럼엔 NULL 값 추가

-- INSERT 작성용 표 복제해서 생성
CAFE 표 복제해서 EATS 표 생성


*/
--CAFE 표형식 복제해서 EATS 표 생성
CREATE TABLE EATS AS SELECT * FROM CAFE;

COMMIT;

/*
CREATE TABLE Cafe (
    cafe_id NUMBER PRIMARY KEY,        -- 카페의 고유 ID
    cafe_name VARCHAR2(100) NOT NULL,  -- 카페 이름
    location VARCHAR2(255),            -- 카페 위치
    contact_number VARCHAR2(20)        -- 카페 연락처
);


CREATE TABLE EATS (
    cafe_id NUMBER PRIMARY KEY,        -- 카페의 고유 ID
    cafe_name VARCHAR2(100) NOT NULL,  -- 카페 이름
    location VARCHAR2(255),            -- 카페 위치
    contact_number VARCHAR2(20)        -- 카페 연락처
);
DELETE FROM 테이블명; -- 표 전체 삭제(데이터뱅크 날리기)
DELETE FROM 테이블명 WHERE 컬럼명 = '삭제할 데이터';
DELETE FROM 테이블명 
WHERE 컬럼명1 = '컬럼명1에서 삭제할 데이터' 
AND 컬럼명2 = '컬럼명2에서 삭제할 데이터';
*/

/*
2. UPDATE
값수정
UPDATE 표이름 SET 컬럼명 = 바꿀값[WHERE 컬럼명 비교연산자 비교값];


3.--DELETE
/*행 삭제구문
 * DELETE FROM 테이블명 WHERE 조건설정
 * 만약 WHERE 안쓰면 전체삭제됨!!
 * 
DELETE FROM 테이블명; -- 표 전체 삭제(데이터뱅크 날리기)
DELETE FROM 테이블명 WHERE 컬럼명 = '삭제할 데이터';
DELETE FROM 테이블명 
WHERE 컬럼명1 = '컬럼명1에서 삭제할 데이터' 
AND 컬럼명2 = '컬럼명2에서 삭제할 데이터';
 * */







*/
















SELECT * FROM CAFE;
-- 시퀀스 생성 = 자동으로 증가하는 고유값 제공
/*
 * 표에서 데이터 사용시 기본키에 회원가입한 순서 작성
 * 
 * CREATE SEQUENCE 시퀀스 이름 START WITH 1 INCREMENT BY 1 ;
 * CREATE SEQUENCE 먹고간다 START WITH 100 INCREMENT BY 1 ;
 * CREATE SEQUENCE 포장한다 START WITH 400 INCREMENT BY 1 ;
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * */
CREATE SEQUENCE seq_user; -- 1부터 1씩 증가
-- 표 이름에 예약어 금지 user 금지 / 오라클은 "" 로 감싸기, mysql 은 `` 로 감싸기
CREATE TABLE Student(
studentid NUMBER PRIMARY KEY, 
studentname VARCHAR2(100),
studentage NUMBER 
);

-- 트리거 생성 = 데이터 삽입시 시퀀스 자동활용하게 설정
-- 트리거로 표에 새 숫자 삽입시 시퀀스에 저장된 번호 호출해 id값 자동설정
-- 생성 수정 삭제시 or replace 사용하면 새로만들거나 덮어쓰기


CREATE OR REPLACE TRIGGER trg_user
BEFORE INSERT ON student
FOR EACH ROW
BEGIN
    :NEW.studentid := seq_user.NEXTVAL;
END;


INSERT INTO student (STUDENTNAME, STUDENTAGE) VALUES ('홍길동',11);
INSERT INTO student (STUDENTNAME, STUDENTAGE) VALUES ('강철수',12);
INSERT INTO student (STUDENTNAME, STUDENTAGE) VALUES ('박길자',13);
INSERT INTO student (STUDENTNAME, STUDENTAGE) VALUES ('오발숙',14);
INSERT INTO student (STUDENTNAME, STUDENTAGE) VALUES ('안정미',15);

SELECT TRIGGER_NAME, STATUS
FROM USER_TRIGGERS
WHERE TRIGGER_NAME = 'TRG_USER';

select * FROM STUDENT S; 
-- show errors trigger trg_user; 명령 프롬포트 창예써 문쪠를 찾을때 사용
 
SELECT SEQUENCE_name
FROM user_sequences
WHERE SWQUENCE_name

INSERT INTO student (STUDENTID, STUDENTNAME, STUDENTAGE) 
VALUES (seq_user.NEXTVAL,'안정미',15);

DROP TRIGGER TRG_USER;
CREATE SEQUENCE seq_std INCREMENT BY 1 START WITH 1; 

REATE OR REPLACE TRIGGER trg_std
BEFORE INSERT ON student
FOR EACH ROW
BEGIN
    :NEW.studentid = seq_user.NEXTVAL;
END;

/*
 * 오라클 구문때 cmd 나 sqldeveloper 환경에서 사용시 작성필수
 * 
 * 
 * 
 * 
 * 
 * 
 * */














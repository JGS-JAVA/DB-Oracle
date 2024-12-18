/*
VIEW = 논리적 가상 표
표 모양이나, 실제값 저장 안함
SELECT 문 실행결과 (RESULT SET) 저장하는 객체

복잡한 SELECT 문 쉽게 재사용
표 진짜모습 감춰 보안 유리

가상 표라 ALTER 불가
VIEW 로 DML(INSERT DELETE UPDATE) 가능하나 제한적이라
DQL(SELECT) 로 사용



CREATE [OR REPLACE] [FORCE | NOFORCE] VIEW 뷰이름 [ZJFFJAAUD]
AS 서브쿼리(SELECT 문)
[WITH CHECK OPTION]
[WITH READ ONLY];
1. OR REPLACE 옵션 = (오라클만 가능 MYSQL 5.7버전 이상부터) 
기존에 동일이름의 뷰 존재시 덮어쓰기처럼 현재의 뷰로 변경, 없으면 새로 생성
2. FORCE | NOFORCE 옵션 = 
FORCE = 서브쿼리에 사용한 표 없어도 뷰 생성
NOFORCE = 표 있어야 뷰 생성
3. 컬럼명 옵션 = 조회되는 뷰 컬럼명 지정
4. WITH CHECK OPTION 옵션 = 옵션 지정 컬럼ㅁ값 수정 불가
5. WITH READ ONLY 옵션 = (오라클만 가능) 
뷰에 대해 SELECT 만 가능

SEQUENCE(순서 연속)
순차적 일정간격 번호 생성기
오라클은 무조건 사용
그 외 다른회사는 시퀀스 대신 다른거 사용
MYSQL = AUTO_INCREMENT 사용해 숫자 순차적 증감

사용 이유
PRIMARY KEY(기본키) = 표 내 행구분 식별자 = PK
NOT NULL + UNIQUE 의 의미 가진다

PK 지정된 컬럼에 값 삽입시 SEQUENCE(=AUTO_INCREMENT) 쓰면 좋다

시퀀스 사용시 ID값에 자동순번넘김 작성한다
시뭔스명.NEXTVAL = 다음 시퀀스 번호 얻어오기
(INCREMENT BY 만큼 증가한 수) 단 생성후 처음 호출된 시퀀스면 START WITH에 작성된값 반환
시퀀스명.CURRVAL = 현재 시퀀스 번호 얻어옴, 시퀀스 생성되자마자 호출시 오류, 마지막 호출한 NEXTVAL 값 반환

MYSQL 은 시퀀스 대신 AUTO_INCREMENT 사용










*/

-- 뷰 표는 JOIN 해서 만들면 INSERT UPDATE DELETE 안됨
-- 단일 표로 VIEW 설정시 INSERT DELETE 임시로 가능하나 주로 SELECT 결과 임시저장용도










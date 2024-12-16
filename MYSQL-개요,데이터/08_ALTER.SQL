/*
DDL(DATA DEFINITION LANGUAGE) : 데이터 전체구조 정의 언어 데이터베이스 관리자,설계자가 사용
CREATE
ALTER
DROP

오라클
TABLE VIEW SEQUENCE INDEX PACKAGE TRIGGER PROCEDURE SYNONYM USER 생성

MYSQL
DATABASE, UWER, TABLE VIEW SEQUENCE INDEX PACKAGE TRIGGER PROCEDURE SYNONYM USER 생성

PRIMARY KEY = 기준 키 / 같은키 넣을순 있어도 넣지말기.
AUTO_INCREMENT = 자동 번호 증가

ALTER = 컬럼(추가/수정/삭제), 제약조건(추가/삭제), 이름변경(표,컬럼,제약조건)

표 수정
ALTER TABLE 표이름 ADD|MODIFY|DROP 수정할내용;

---------------------------------------------------------
1. 제약조건(추가/삭제)

ALTER TABLE 표이름 ADD COLUMN 컬럼명 컬럼조건;
ALTER TABLE 표이름 DROP COLUMN 컬럼명;
ALTER TABLE 표이름 MODIFY COLUMN 컬럼명 컬럼조건;
*/



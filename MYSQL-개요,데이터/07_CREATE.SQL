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

CREATE = 다양한 데이터 생성

1. 표 생성
표 = 행 ROW , 열 COLUMN 로 된 기본 데이터 객체
모든 데이터는 표로 저장

CREATE TABLE 표이름(
컬럼명 PRIMARY KEY AUTO_INCREMENT
컬럼명 자료형(크기),
컬럼명 자료형(크기), 
컬럼명 자료형(크기) DEFAULT 기본값 설정
...)

DEFAULT = 기본값 지정 (필수 아님)
INSERT UPDATE 시 값 입력안하면 기본값 들어감

CREATE 생성 제약조건은 15_제약조건.SQL 참조




*/
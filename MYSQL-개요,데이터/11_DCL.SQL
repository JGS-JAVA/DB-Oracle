/*
계정(사용자)
관리자 = 디비 생성과 관리 담당
모든 권한, 책임 가짐
sys(최고관리자), system(sys보다 몇개 제한된 관리자)
사용자 = 데이터베이스에 대해 질의 갱신 보고서작성 등 작업수행계정
업무에 필요한 최소한의 권한만 가진다
newbie(신입), staff, associate, seniorStaff, 
직급마다 권한 다르다

DCL
계정에 디비, 디비객체에 대한 접근권한 부여GRANT/회수REVOKE
시스템 = 디비접속,객체생성
CREATE SESSION = 디비 접속권한
CREATE TABLE = 표 생성 권한
CREATE VIEW = 뷰
CREATE SEQUENCE = 시퀀스
CREATE PROCEDURE = 함수 생성
CREATE USER = 사용자
DROP USER
DROP ANY TABLE = 임의 표

객체 권한 = 특정객체 조작

SELECT = TABLE VIEW SEQUENCE 객체 설정
INSERT = TABLE VIEW
UPDATE = TABLE VIEW
DELETE = TABLE VIEW
ALTER = TABLE SEQUENCE
REFERENCES = TABLE
INDEX = TABLE
EXECUTE = PROCEDURE


관리자 계정 접속
CREATE 
CREATE 

*/

-- 관리자 계정 접속후 유저 아이디 비번 생성
-- 외부 컴퓨터에서 회사 디비에 접근가능
CREATE USER '유저아이디'@'%' IDENTIFIED BY '유저비번';

-- 내부 컴퓨터에서 회사 디비에 접근가능
CREATE USER '유저아이디'@'localhost' IDENTIFIED BY '유저비번';

-- 디비 생성
CREATE DATABASE 디비명칭;
-- 디비 접속권한 직급에 따라 부여
GRANT ALL PRIVILEGES ON 디비명칭.표이름 TO '유저명'@'호스트';
-- 표이름에 * , 특정 표이름
-- 호스트에 %(모든 외부 컴퓨터), localhost(디비 존재 컴퓨터), 
-- 192.168.0.1(현재 네트워크 내 존재 컴표터) 우리집 거실 컴
-- 211.0.0.1(특정 ip 주소에서만 접근가능) 길동이네에서 우리집 디비에 점근가능

-- 계정 OWNER / NEWBIE
-- 예시 KHCAFE / KHUSER 디비 존재 , 접속권한 직급에 따라 부여
GRANT ALL PRIVILEGES ON KHCAFE.menu TO 'NEWBIE'@'%';
-- 신입은 KHCAFE 디비에서 menu 표만 접근가능

GRANT ALL PRIVILEGES ON KHCAFE.* TO 'OWNER'@'%';
-- PRIVILEGES 는 ALL 뒤에만 붙는다
-- 소유자 계정은 KHCAFE 디비에서 menu order store 등 모든 표에 접근가능

GRANT SELECT ON KHUSER.user TO 'NEWBIE'@'%';
-- 신입은 user 표의 SELECT 만 가능

-- JUNIOR 급
CREATE USER '유저아이디'@'%' IDENTIFIED BY '유저비번';

GRANT SELECT, INSERT, UPDATE ON KHUSER.user TO 'JUNIOR'@'%';

-- 
REVOKE INSERT, UPDATE ON KHUSER.user TO 'JUNIOR'@'%';

REVOKE ALL PRIVILEGES ON KHUSER.* TO 'JUNIOR'@'%';















/*
cmd 에서 mysql db명칭, 유저생성, 권한설정 접속
mysql -u root -p
초기 mysql 설치시 비번 작성
회사 내 table, query 저장 위한 db명칭 설정
create database 데이터베이스명칭;

db에 점속가능 유저 생성
 CREATE USER '아이디'@'%' IDENTIFIED BY '비번';

'%' = 자바에서 public 같은 개념으로 어떤 컴퓨터에서든 접근가능
'localhost' = private 같은 개념, 현재 컴퓨터에서만 접근가능

권한허용    모든특권     데이터베이스.* = 안의 모든 표 접근 가능     계정명칭에 권한부여
GRANT ALL PRIVILEGES ON 데이터베이스명.*                      TO '계정명칭'@'%';
특권 적용
FLUSH PRIVILEGES;




데이터베이스명, 유저명, 유저비번은 대소문자, 띄어쓰기 구분
*/





CREATE DATABASE 데이터베이스명
 CREATE USER '유저명'@'%' IDENTIFIED BY '유저비번';
GRANT ALL PRIVILEGES ON 데이터베이스명.* TO '유저명'@'%';
FLUSH PRIVILEGES;
SELECT CURRENT_DATE;















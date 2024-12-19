/*
초기에 sql 문 cmd 창에서 작성후 출력 결과 수정 확인
눈으로 직관적으로 확인할 화면 필요
UI 화면 구현된 프로그램
MYSQL - MYSQL WORKBENCH
ORACLE - ORACLE DEVELOPER
DBEAVER - 모든 SQL 회사 통합 화면 프로그램

초기 접속명령어

유저명 초기에 root 사용해서 접속
C:\Users\user1> mysql -u 유저명 -p
특정 디비에 접속
C:\Users\user1> mysql -u 유저명 -p 디비이름

SHOW DATABASES; -- DB 목록확인
USE 디비이름; -- 특정DB로 접속
SHOW TABLES; -- 특정DB 내 표들 목록 확인
SHOW COLUMN FROM 표이름 -- 특정 표 안 컬럼구조 확인
이외 CREATE ~ DELETE COMMIT 등 모든 명령어 사용가능
; 작성 전까지 이어서 쿼리 작성가능

mysql 종료시 exit 작성하거나 오른쪽 위에있는 x 버튼 누르기

아래 ↓ 명령 프롬프트에서 mysql 사용예제

mysql> use khtdb;
Database changed
mysql> select * from user;
+---------+-----------+-----------------+----------------+
| user_id | user_name | location        | contact_number |
+---------+-----------+-----------------+----------------+
|       1 | 홍길동    | 서울시 강남구   | 010-1234-5678  |
|       2 | 고말숙    | 서울시 영등포구 | 010-2345-6789  |
|       3 | 김철수    | 서울시 송파구   | 010-9876-5432  |
|       4 | 이순신    | 서울시 종로구   | 010-4567-8901  |
|       5 | 최지훈    | 서울시 서초구   | 010-5677-8911  |
|       6 | 정수민    | 서울시 강동구   | 010 6781-2345  |
|       7 | 김태호    | 경기도 수원시   | 010-2222-3333  |
|       8 | 이광수    | 인천시 남동구   | 010-4444-5555  |
|       9 | 강정식    | 서울시 중랑구   | 010-5558-6666  |
+---------+-----------+-----------------+----------------+
9 rows in set (0.00 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| khtdb              |
| performance_schema |
+--------------------+
3 rows in set (0.00 sec)

mysql> SHOW TABLES;
+-----------------+
| Tables_in_khtdb |
+-----------------+
| employee        |
| user            |
| userprofile     |
+-----------------+
3 rows in set (0.00 sec)

mysql> DESCRIBE USER;
+----------------+--------------+------+-----+---------+----------------+
| Field          | Type         | Null | Key | Default | Extra          |
+----------------+--------------+------+-----+---------+----------------+
| user_id        | int          | NO   | PRI | NULL    | auto_increment |
| user_name      | varchar(100) | NO   |     | NULL    |                |
| location       | varchar(255) | YES  |     | NULL    |                |
| contact_number | varchar(20)  | YES  |     | NULL    |                |
+----------------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> SHOW COLUMNS FROM USER;
+----------------+--------------+------+-----+---------+----------------+
| Field          | Type         | Null | Key | Default | Extra          |
+----------------+--------------+------+-----+---------+----------------+
| user_id        | int          | NO   | PRI | NULL    | auto_increment |
| user_name      | varchar(100) | NO   |     | NULL    |                |
| location       | varchar(255) | YES  |     | NULL    |                |
| contact_number | varchar(20)  | YES  |     | NULL    |                |
+----------------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> exit
Bye

C:\Users\user1>





*/
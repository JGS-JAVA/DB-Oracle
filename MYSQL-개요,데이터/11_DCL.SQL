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
REVOKE INSERT, UPDATE ON KHUSER.user from 'JUNIOR'@'%';

REVOKE ALL PRIVILEGES ON KHUSER.* from 'JUNIOR'@'%';


/*
권한 부여/회수
grant ___ to;
rovoke ___ from;


Microsoft Windows [Version 10.0.19045.5131]
(c) Microsoft Corporation. All rights reserved.

C:\Users\user1>mysql -u junior -p
Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 45
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| khtcafe            |
| khtuser            |
| performance_schema |
+--------------------+
4 rows in set (0.00 sec)

mysql> exit
Bye

C:\Users\user1>mysql -u root -p
Enter password: *******
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 46
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| khtcafe            |
| khtdb              |
| khtshopping        |
| khtuser            |
| khtworkbook        |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
9 rows in set (0.00 sec)

mysql> use information_schema;
Database changed
mysql> show tables
    -> ;
+---------------------------------------+
| Tables_in_information_schema          |
+---------------------------------------+
| ADMINISTRABLE_ROLE_AUTHORIZATIONS     |
| APPLICABLE_ROLES                      |
| CHARACTER_SETS                        |
| CHECK_CONSTRAINTS                     |
| COLLATION_CHARACTER_SET_APPLICABILITY |
| COLLATIONS                            |
| COLUMN_PRIVILEGES                     |
| COLUMN_STATISTICS                     |
| COLUMNS                               |
| COLUMNS_EXTENSIONS                    |
| ENABLED_ROLES                         |
| ENGINES                               |
| EVENTS                                |
| FILES                                 |
| INNODB_BUFFER_PAGE                    |
| INNODB_BUFFER_PAGE_LRU                |
| INNODB_BUFFER_POOL_STATS              |
| INNODB_CACHED_INDEXES                 |
| INNODB_CMP                            |
| INNODB_CMP_PER_INDEX                  |
| INNODB_CMP_PER_INDEX_RESET            |
| INNODB_CMP_RESET                      |
| INNODB_CMPMEM                         |
| INNODB_CMPMEM_RESET                   |
| INNODB_COLUMNS                        |
| INNODB_DATAFILES                      |
| INNODB_FIELDS                         |
| INNODB_FOREIGN                        |
| INNODB_FOREIGN_COLS                   |
| INNODB_FT_BEING_DELETED               |
| INNODB_FT_CONFIG                      |
| INNODB_FT_DEFAULT_STOPWORD            |
| INNODB_FT_DELETED                     |
| INNODB_FT_INDEX_CACHE                 |
| INNODB_FT_INDEX_TABLE                 |
| INNODB_INDEXES                        |
| INNODB_METRICS                        |
| INNODB_SESSION_TEMP_TABLESPACES       |
| INNODB_TABLES                         |
| INNODB_TABLESPACES                    |
| INNODB_TABLESPACES_BRIEF              |
| INNODB_TABLESTATS                     |
| INNODB_TEMP_TABLE_INFO                |
| INNODB_TRX                            |
| INNODB_VIRTUAL                        |
| KEY_COLUMN_USAGE                      |
| KEYWORDS                              |
| OPTIMIZER_TRACE                       |
| PARAMETERS                            |
| PARTITIONS                            |
| PLUGINS                               |
| PROCESSLIST                           |
| PROFILING                             |
| REFERENTIAL_CONSTRAINTS               |
| RESOURCE_GROUPS                       |
| ROLE_COLUMN_GRANTS                    |
| ROLE_ROUTINE_GRANTS                   |
| ROLE_TABLE_GRANTS                     |
| ROUTINES                              |
| SCHEMA_PRIVILEGES                     |
| SCHEMATA                              |
| SCHEMATA_EXTENSIONS                   |
| ST_GEOMETRY_COLUMNS                   |
| ST_SPATIAL_REFERENCE_SYSTEMS          |
| ST_UNITS_OF_MEASURE                   |
| STATISTICS                            |
| TABLE_CONSTRAINTS                     |
| TABLE_CONSTRAINTS_EXTENSIONS          |
| TABLE_PRIVILEGES                      |
| TABLES                                |
| TABLES_EXTENSIONS                     |
| TABLESPACES                           |
| TABLESPACES_EXTENSIONS                |
| TRIGGERS                              |
| USER_ATTRIBUTES                       |
| USER_PRIVILEGES                       |
| VIEW_ROUTINE_USAGE                    |
| VIEW_TABLE_USAGE                      |
| VIEWS                                 |
+---------------------------------------+
79 rows in set (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| khtcafe            |
| khtdb              |
| khtshopping        |
| khtuser            |
| khtworkbook        |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
9 rows in set (0.00 sec)

mysql> grant all privileges on KHTCAFE.* TO 'junior'@'%';
Query OK, 0 rows affected (0.01 sec)

mysql> grant all privileges on KHTUSER.* TO 'junior'@'%';
Query OK, 0 rows affected (0.00 sec)

mysql> flush privileges;
Query OK, 0 rows affected (0.00 sec)

mysql> exit
Bye

C:\Users\user1>mysql -u junior -p
Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 47
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| khtcafe            |
| khtuser            |
| performance_schema |
+--------------------+
4 rows in set (0.00 sec)

mysql> use khtcafe;
Database changed
mysql> show tables;
+-------------------+
| Tables_in_khtcafe |
+-------------------+
| cafe_order        |
| cafe_order_item   |
| menu              |
| snack             |
| snack_order       |
| tables            |
+-------------------+
6 rows in set (0.00 sec)

mysql> select * from menu;
+---------+---------------+------------------------------------------+---------+----------+
| MENU_ID | NAME          | DESCRIPTION                              | PRICE   | CATEGORY |
+---------+---------------+------------------------------------------+---------+----------+
|       1 | 아메리카노    | 진한 에스프레소와 깔끔한 물의 조화       | 4000.00 | COFFEE   |
|       2 | 카페라떼      | 부드러운 우유와 에스프레소               | 4500.00 | COFFEE   |
|       3 | 유자차        | 달콤하면서도 상큼한 전통차               | 5000.00 | TEA      |
|       4 | 초코 브라우니 | 진한 초콜릿의 풍미를 느낄 수 있는 디저트 | 3500.00 | DESSERT  |
|       5 | 치즈 케이크   | 입안에서 살살 녹는 크림치즈 케이크       | 5000.00 | DESSERT  |
+---------+---------------+------------------------------------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select * from tables;
+----------+--------------+----------+-----------+
| TABLE_ID | TABLE_NUMBER | CAPACITY | STATUS    |
+----------+--------------+----------+-----------+
|        1 |            1 |        4 | 사용 가능 |
|        2 |            2 |        2 | 사용중    |
|        3 |            3 |        6 | 사용 가능 |
|        4 |            4 |        4 | 사용중    |
|        5 |            5 |        2 | 사용 가능 |
+----------+--------------+----------+-----------+
5 rows in set (0.00 sec)

mysql> select * from cafe_order;
+----------+----------+---------------------+--------------+-----------+
| ORDER_ID | TABLE_ID | ORDER_DATE          | TOTAL_AMOUNT | STATUS    |
+----------+----------+---------------------+--------------+-----------+
|        1 |        2 | 2024-12-16 10:53:08 |      8500.00 | PREPARING |
|        2 |        4 | 2024-12-16 10:53:08 |     13500.00 | COMPLETED |
|        3 |        1 | 2024-12-16 10:53:08 |      5000.00 | PENDING   |
|        4 |        3 | 2024-12-16 10:53:08 |     15000.00 | COMPLETED |
|        5 |        5 | 2024-12-16 10:53:08 |      4000.00 | CANCELLED |
+----------+----------+---------------------+--------------+-----------+
5 rows in set (0.00 sec)

mysql> select *
    -> from cafe_order
    -> where status = '완료';
Empty set (0.00 sec)

mysql> select * from cafe_order;
+----------+----------+---------------------+--------------+-----------+
| ORDER_ID | TABLE_ID | ORDER_DATE          | TOTAL_AMOUNT | STATUS    |
+----------+----------+---------------------+--------------+-----------+
|        1 |        2 | 2024-12-16 10:53:08 |      8500.00 | PREPARING |
|        2 |        4 | 2024-12-16 10:53:08 |     13500.00 | COMPLETED |
|        3 |        1 | 2024-12-16 10:53:08 |      5000.00 | PENDING   |
|        4 |        3 | 2024-12-16 10:53:08 |     15000.00 | COMPLETED |
|        5 |        5 | 2024-12-16 10:53:08 |      4000.00 | CANCELLED |
+----------+----------+---------------------+--------------+-----------+
5 rows in set (0.00 sec)

mysql> exit
Bye

C:\Users\user1>mysql -u root -p
Enter password: *******
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 48
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> revoke all privileges on KHTUSER.* from 'JUNIOR'@'%';
ERROR 1141 (42000): There is no such grant defined for user 'JUNIOR' on host '%'
mysql> revoke all privileges on KHTUSER.* from 'junior'@'%';
Query OK, 0 rows affected (0.00 sec)

mysql> revoke all privileges on KHTCAFE.* from 'junior'@'%';
Query OK, 0 rows affected (0.00 sec)

mysql> flush privileges;
Query OK, 0 rows affected (0.00 sec)

mysql>


*/












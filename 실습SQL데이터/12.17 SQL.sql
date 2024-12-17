use khtshopping;
use khtuser;
use khtcafe;

select * from product;
select * from `order`;
select * from review;
select * from order_item;
-- PENDING SHIPPED DELIVERED CANCELLED

 SET SQL_SAFE_UPDATES = 0; 
 -- ALTER table 'ORDER'
--  modify column 
--  status enum('PENDING','SHIPPED','DELIVERED','CANCELLED','대기중','배송중','배송완료','취소');
--  
--  UPDATE `ORDER` SET STATUS = '대기중' WHERE USER_ID = 1;
--  
--  SET SQL_SAFE_UPDATES = 1;
--  
--  commit;
--  
--  alter table `order`modify column
--  status enum ()
 
SELECT * FROM USER;

-- EMAIL 도메인 변경
-- CONCAT SUBSTRING SUBSTRING_INDEX
-- LIKE 로 일치시 변경

select CONCAT('HELLO',' ','WORLD','!');
select substring_index('USER@EXAMPLE.COM','@','1');
select substring_index('USER@EXAMPLE.COM','@','-1');
select CONCAT(SUBSTRING_INDEX('USER@EXAMPLE.COM','@','1'),'@KHT.COM');

/*
ERROR CODE 1241 잘못된 문법으로 문자열 처리시도
ERROR CODE 1175 SAFE UPDATE MODE 비활성화
-> 1. EDIT -> PREFERENCE -> SQL EDITOR -> 맨 밑에 SAFE UPDATE 비활성화
-> 2. SET SQL_SAFE_UPDATES = 0;  
ERROR CODE 1406 컬럼이 VARCHAR(20) 또는 그보다 작은길이로 정의된 경우 새 값이 길이제한 초과 -> 컬럼길이 늘리기

*/
SET SQL_SAFE_UPDATES = 0; 
UPDATE USER
SET EMAIL = CONCAT(SUBSTRING_INDEX(EMAIL,'@','1'),'@KHT.COM');
select * FROM USER;
COMMIT;
UPDATE USER
SET PHONE = CONCAT('+82)',PHONE);
alter TABLE USER MODIFY COLUMN PHONE VARCHAR(20);
rollback;

USE KHTCAFE;
select * FROM MENU;
USE KHTUSER;


select * from user ;

						
-- commit;
-- UPDATE USER SET PHONE = '010-5678-9012' WHere username ='최수지';

update user set phone = substring_index(phone,')',-1);
select * from user;
savepoint SP1;
update USER SET PHONE = CONCAT('KOR)',PHONE);
select * FROM USER;
-- update USER SET PHONE = CONCAT('KOR)',SUBSTRING_INDEX(PHONE,')',-1));

ROLLBACK TO SP1;
SELECT * FROM USER;

START TRANSACTION; -- 트랜잭션 개념 ACID 개념






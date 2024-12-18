-- 뷰 사용
-- ERROR CODE 1046 USE DB명 쓰기
USE KHTSHOPPING;
select * FROM SNACK;
select * FROM SNACK_ORDER;

select O.ID, S.NAME, O.QUANTITY, O.ORDER_DATE, O.STATUS
FROM SNACK_ORDER O
LEFT JOIN SNACK S
ON O.ID = S.ID;
-- 표에 NULL 값 존재
-- 뷰로 지속적 확인하기

create view VIEW_ORDER_SUMMARY
AS -- 아래내용대로 복제하기
select O.ID, S.NAME, O.QUANTITY, O.ORDER_DATE, O.STATUS
FROM SNACK_ORDER O
LEFT JOIN SNACK S
ON O.ID = S.ID;

USE KHTSHOPPING;
SELECT * FROM VIEW_ORDER_SUMMARY;

-- 뷰는 확인후 삭제한다

select O.ID, S.NAME, O.QUANTITY, S.PRICE, (O.QUANTITY * S.PRICE) AS 총매출, O.ORDER_DATE
from SNACK_ORDER 
JOIN SNACK S
ON O.ID = S.ID
WHERE O.STATUS = '배송완료';

create VIEW VIEW_CANCELLED_ORDERS
AS
select O.ID AS 순번, S.NAME AS 과자이름, O.QUANTITY, O.ORDER_DATE
FROM SNACK_ORDER O
JOIN SNACK S
ON O.SNACK_ID = S.ID
WHERE O.STATUS = '취소';

select * FROM VIEW_CANCELLED_ORDERS;

DROP VIEW IF exists VIEW_CANCELLED_ORDERS;

create OR replace VIEW VIEW_CANCELLED_ORDERS -- DROP VIEW IF exists 없어도 됨
AS
select O.ID AS 순번, S.NAME AS 과자이름, O.QUANTITY, O.ORDER_DATE
FROM SNACK_ORDER O
JOIN SNACK S
ON O.SNACK_ID = S.ID
WHERE O.STATUS = '취소';

-- 과자 NULL 일때 
create OR replace VIEW VIEW_CANCELLED_ORDERS -- DROP VIEW IF exists 없어도 됨
AS
select O.ID AS 순번,
 IFNULL( S.NAME,'알수없음') AS 과자이름, 
 O.QUANTITY, 
 O.ORDER_DATE
FROM SNACK_ORDER O
JOIN SNACK S
ON O.SNACK_ID = S.ID
WHERE O.STATUS = '취소';

select * FROM VIEW_CANCELLED_ORDERS;

SELECT * FROM KHTCAFE.MENU; -- USE KHTCAFE; 안해도 됨
SELECT * FROM KHTUSER.USER; 

USE KHTUSER;
SET SQL_SAFE_UPDATES = 0;
UPDATE USER SET PHONE = substring_index(PHONE,')',1 );
select * FROM USER;
ROLLBACK;
UPDATE USER SET PHONE = '010-5678-9012' WHere username ='홍길동';
COMMIT;
-- START TRANSACTION;
-- savepoint SP1;

SELECT * FROM khtuser.user;
-- user phone 앞에 작성된 kor) 제거
set sql_safe_updates = 0; -- 안전모드 종료

start transaction;           -- savepoint 를 사용하기 위해서는 start transaction 시작 수동 제어
savepoint sp1;              -- 임시로 되돌릴 위치이름 sp1 설정
use khtuser;              -- khtuser db로 접속
update user set phone = substring_index(phone, ')', 1); -- 수정할 update 작성
select * from user;                                        -- 제대로 수정했는지 확인

rollback to sp1;           -- 원하는대로 결과 수정 X sp1 임시저장한 위치로 되돌리기 
update user set phone = substring_index(phone, ')', -1); -- 수정
select * from user;            -- 올바르게 수정됐는지 확인

commit;                        -- 수정 결과 저장










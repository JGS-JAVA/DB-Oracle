select concat('MySQL','is','Awesome!');
select substring_index('hello.world.program','.',2);

use khtuser;
select count(*)
from user
where phone like '%5678%';

use khtshopping;
select concat('제품명: ',name,',','가격: ',floor(price),'원')
from product
where name = '울트라 게이밍 키보드';

select length(comment)
from review
where product_id = '3'; 
-- 한글 1글자는 길이 3, 영어 숫자 1자는 길이 1 -> 한글 20 + 띄어쓰기 5 + 마침표 1 = 66
-- CHAR_length 는 글자갯수로 따진다

select replace(comment,'좋고','훌륭하고') -- 모든 언어에서 사용법 동일
from review
where product_id = '4';

select * FROM `ORDER`;
select * FROM ORDER_ITEM;
select * FROM product;
select * FROM REVIEW;

select P.NAME,O.ORDER_ID,O.USER_ID,O.STATUS,O.TOTAL_AMOUNT,
OI.PRODUCT_ID,OI.QUANTITY,OI.PRICE
FROM `ORDER` O
JOIN ORDER_ITEM OI
ON O.ORDER_ID = OI.ORDER_ID
JOIN product P
ON P.PRODUCT_ID = OI.PRODUCT_ID;
-- 조건 맞는행만 가져오기

select P.PRODUCT_ID,P.NAME,R.USER_ID,R.RATING,R.COMMENT
FROM PRODUCT P
INNER JOIN REVIEW R
ON P.PRODUCT_ID = R.PRODUCT_ID;

select O.ORDER_ID,O.USER_ID,O.STATUS,R.PRODUCT_ID,R.RATING,R.COMMENT
FROM `ORDER` O
LEFT JOIN REVIEW R
ON O.USER_ID = R.USER_ID; -- 리뷰 없으면 NULL

select R.PRODUCT_ID, R.USER_ID,R.RATING,R.COMMENT,O.ORDER_ID,O.STATUS
FROM REVIEW R
RIGHT JOIN `ORDER` O
ON R.USER_ID = O.USER_ID;

USE KHTCAFE;

CREATE TABLE SNACK (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(100),
    CATEGORY VARCHAR(50),
    PRICE DECIMAL(10, 2),
    STOCK INT
);

INSERT INTO SNACK (ID, NAME, CATEGORY, PRICE, STOCK) VALUES
(1, '초코칩 쿠키', '과자', 1500.00, 50),
(2, '양파링', '스낵', 2000.00, 30),
(3, '포테이토칩', '스낵', 2500.00, NULL),
(4, '치즈볼', '과자', 1800.00, 40),
(5, NULL, '스낵', 3000.00, 20);

CREATE TABLE SNACK_ORDER (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    SNACK_ID INT,
    QUANTITY INT,
    ORDER_DATE DATETIME,
    STATUS VARCHAR(20)
);

INSERT INTO SNACK_ORDER (ID, SNACK_ID, QUANTITY, ORDER_DATE, STATUS) VALUES
(1, 1, 3, '2024-12-16 10:35:00', '배송 중'),
(2, 2, 2, '2024-12-16 11:00:00', '대기'),
(3, NULL, 1, '2024-12-16 12:00:00', '취소'),
(4, 3, NULL, '2024-12-16 13:00:00', '배송 완료'),
(5, 5, 5, '2024-12-16 14:00:00', NULL);

select * FROM SNACK;
select * FROM SNACK_ORDER;

select S.ID,S.NAME,S.CATEGORY,S.PRICE,S.STOCK
, O.QUANTITY,O.ORDER_DATE,O.STATUS
FROM SNACK S
INNER JOIN SNACK_ORDER O
ON S.ID = O.SNACK_ID; -- 4번 없음 

select S.ID,S.NAME,S.CATEGORY,S.PRICE,S.STOCK
, O.QUANTITY,O.ORDER_DATE,O.STATUS
FROM SNACK S
LEFT JOIN SNACK_ORDER O
ON S.ID = O.SNACK_ID; -- 4번 있음

-- 스낵 오더 표 데이터 가져와서 왼쪽 표의 일치하는 데이터 가져옴
select S.ID,S.NAME,S.CATEGORY,S.PRICE,S.STOCK
, O.QUANTITY,O.ORDER_DATE,O.STATUS
FROM SNACK S
RIGHT JOIN SNACK_ORDER O
ON S.ID = O.SNACK_ID;















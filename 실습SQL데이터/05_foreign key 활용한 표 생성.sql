USE KHTUSER;
SELECT * FROM USER;
select * FROM ADDRESS;
select * FROM USER_ACTIVITY;

DROP TABLE USER_ACTIVITY;
DROP TABLE USER;
DROP TABLE ADDRESS;

-- 유저 표와 주소 표는 부모자식 관계로 ID 로 연결됨
-- 주소 먼저 삭제해야 유저 삭제 가능
-- FOREIGN KEY 로 ON DELETE CASCADE 안걸면 유저 삭제시 주소만 남는다 
-- DROP TABLE USER	Error Code: 3730. Cannot drop table 'user' 
-- referenced by a foreign key constraint 'address_ibfk_1' on table 'address'.

create TABLE USER (
user_id INT AUTO_INCREMENT PRIMARY KEY,
username varchar(50) NOT NULL -- 동명이인 가능
email VARCHAR(100) NOT NULL UNIQUE, 
age INT CHECK(age >= 18), -- 체크에 NOT NULL 포함됨
create_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP 
-- 미작성시 등록일자로 자동등록
-- DATE 자료형은 연월일 만 가능, 시간 불가. CURRENT_TIMESTAMP 불가
-- DATETIME 은 연월일시 가능

);

CREATE TABLE USER (
    user_id  INT auto_increment primary KEY,                 -- 기본키 가입시 순차적으로 숫자 증가
    username VARCHAR(50) NOT NULL,                             -- 빈 값 허용 X 동명이인 OK
    email    VARCHAR(100) NOT NULL UNIQUE,                    -- 빈 값 허용 X 동일한이메일 X
    age         INT          CHECK( age >= 18),                 -- 18세 이상만 가능 NOT NULL 상태
    create_at DATETIME       NOT NULL DEFAULT current_timestamp -- 가입일자 필히 작성 / 미작성할 경우 DB 등록 일자로 기입
);

CREATE TABLE order_item(
order_id INT auto_increment primary key,
USER_ID INT NOT NULL,
PRODUCT_NAME varchar(100) NOT NULL,
QUANTITY INT CHECK(QUANTITY > 0),
ORDER_DATE DATETIME NOT NULL DEFAULT current_timestamp,

foreign key(USER_ID) references USER(USER_ID)
on update cascade
on delete cascade

);

select * from user;
select * from order_item;

INSERT INTO USER (username, email, age)
VALUES
('김민수', 'minsu.kim@example.com', 28),
('이영희', 'younghee.lee@example.com', 34),
('박철수', 'chulsoo.park@example.com', 21),
('최지연', 'jiyeon.choi@example.com', 29),
('정다은', 'daeun.jung@example.com', 25),
('한승우', 'seungwoo.han@example.com', 32),
('김서연', 'seoyeon.kim@example.com', 22),
('이준호', 'junho.lee@example.com', 27),
('장민지', 'minji.jang@example.com', 30),
('윤성호', 'seongho.yoon@example.com', 24),
('강유진', 'yujin.kang@example.com', 26),
('조은비', 'eunbi.cho@example.com', 23),
('배현우', 'hyunwoo.bae@example.com', 31),
('신재은', 'jaeeun.shin@example.com', 28),
('홍길동', 'gildong.hong@example.com', 35),
('오지훈', 'jihoon.oh@example.com', 29),
('서미경', 'mikyoung.seo@example.com', 22),
('노수민', 'sumin.no@example.com', 20),
('하윤아', 'yuna.ha@example.com', 26),
('황도영', 'doyoung.hwang@example.com', 33);
commit;

select * from user;

INSERT INTO order_item (USER_ID, PRODUCT_NAME, QUANTITY)
VALUES
(1, '노트북', 1),
(2, '무선 이어폰', 2),
(3, '휴대폰 케이스', 3),
(4, '커피 머신', 1),
(5, '스마트 워치', 1),
(6, '책상', 1),
(7, '게이밍 마우스', 1),
(8, '키보드', 2),
(9, '스탠드 조명', 1),
(10, '운동화', 1),
(11, '휴대폰', 1),
(12, '캠핑 의자', 2),
(13, '캠핑 텐트', 1),
(14, '블루투스 스피커', 1),
(15, '전자책 리더기', 1),
(16, 'HDMI 케이블', 3),
(17, '모니터', 1),
(18, '가습기', 1),
(19, '공기청정기', 1),
(20, '프라이팬 세트', 1);

commit;
select * from order_item;

set sql_safe_updates = 0;
update USER SET email = CONCAT (SUBSTRING_INDEX(email,'@','1'),'@kht.co.kr' );

select U.user_id, U.username, U.email, U.age, O.order_id, O.product_name, O.quantity, O.order_date
FROM USER U
JOIN order_item O
ON U.USER_ID = O.USER_ID;

select 
u.username,
o.product_name,
o.order_date
from 
user u
join
ORDER_ITEM O
ON
u.user_id = o.user_id
order by 
o.order_date desc;






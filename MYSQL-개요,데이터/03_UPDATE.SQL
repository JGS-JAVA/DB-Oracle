/*
DML (DATA MANIPULATION LANGUAGE) : 데이터 조작

맘대로 COMMIT, ROLLBACK 금지!

UPDATE

컬럼값 수정

UPDATE 표이름 SET 컬럼명 = 바꿀값 [WHERE 컬럼명 비교연산자 비교값];

ERROR CODE: 1265. DATA TRUNCATED FOR COLUMN '컬럼명' AT ROW
1. VARCHAR(25) 최대 25자 용량 칸에 초과작성시 
2. ENUM, SET 등 컬럼에 들어갈 데이터 정해져있고 정해진 데이터범위 벗어날 때

컬럼값으로 SHOPPING, READING 만 입력설정하고 다른값 넣을때

ALTER 로 컬럼명에 들어갈 데이터로 쇼핑, 책읽기 추가시
ERROR CODE: 1175. YOU ARE USING SAFE UPDATE MODE AND TRIED TO UPDATE A TABLE WITHOUT A 
WHERE THAT USES A KEY COLUMN

TO DISABLE SAFE MODE, TOGGLE THE OPTION IN PREFERENCES -> SQL EDITOR AND RECONNECT.

SET SQL_SAFE_UPDATES = 0; 안전모드 종료
ALTER로 컬럼 수정후 업데이트 진행
SET SQL_SAFE_UPDATES = 1; 안전모드 시작










*/






























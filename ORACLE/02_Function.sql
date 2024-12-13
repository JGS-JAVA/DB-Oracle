/*
검색대상 조회대상 검색어 모두 대/소문자 변환후 비교

UPPER(컬럼명) = 컬럼명의 문자열 대문자 변환



LOWER(컬럼명) = 컬럼명의 문자열 소문자 변환

대문자 구분없이 특정컬럼 데이터 조회
SELECT*
FROM 표이름
WHERE UPPER(컬럼명) = UPPER('조회할데이터');

대문자 구분없이 특정컬럼에서 조회할 데이터 이용해 조회
SELECT*
FROM 표이름
WHERE UPPER(컬럼명) = UPPER('%조회할데이터%');

조회결과 대문자로 변환
SELECT UPPER(컬럼명) AS 대문자컬럼명
FROM 표이름;
---------------------------------------------------------

소문자 구분없이 특정컬럼 데이터 조회
SELECT*
FROM 표이름
WHERE UPPER(컬럼명) = UPPER('조회할데이터');

소문자 구분없이 특정컬럼에서 조회할 데이터 이용해 조회
SELECT*
FROM 표이름
WHERE UPPER(컬럼명) = UPPER('%조회할데이터%');

조회결과 소문자로 변환
SELECT UPPER(컬럼명) AS 대문자컬럼명
FROM 표이름;

COUNT(컬럼명) = NULL 값 제외하고 행갯수 반환
COUNT(DISTINCT 컬럼명) : 컬럼에서 중복값 제외한 행갯수 반환
COUNT(*) : 조회된 행갯수 반환


AVG(숫자만 기록된 컬럼명) = 그룹 평균






*/
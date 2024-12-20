/*SELECT (조회)
지정된 표에서 데이터 선택조회하는 SQL
구문에 맞는 행,열 데이터 조회
조회된 결과 행의 집함 == RESULT SET(결과 집합)
-결과는 0행 이상 포함가능
조건에 맞는행 없을수 있다
asterisk = * = 모든, 포함하다
SELECT 작성법
1. SELECT    *     FROM   테이블이름;
    조회   모든내용  ~에서   조회할 표이름
2. SELECT 컬럼명, 컬럼명, ... FROM 테이블이름;
조회할 컬럼만 선택조회
3. SELECT 특정기준에 맞는 컬럼조회

SELECT 조회할컬럼명
FROM 테이블명
WHERE 조건작성

WHERE 에서 존재유무 확인
IS NOT NULL = 빈값 아닌 칸

where 절에는 조건식 (true/false) 만 작성
비교연산자 !=, <> 같지않다
논리연산자 and, or not
컬럼 존재여부 : 컬럼명 IS NULL / 컬럼명 IS NOT NULL
컬럼명 IN (값1,값2, ...) = 컬럼값이 일치시 TRUE
컬럼명 NOT IN (값1,값2, ...) = 컬럼값이 불일치시 TRUE


LIKE
비교값이 특정패턴 만족시 참 조회하는 연산자
WHERE 컬럼명 LIKE '패턴';
'%' (포함하다)
- %A : A로 끝나는 문자열 찾기
- A% : A로 시작하는 문자열 찾기
- %A% : A 포함하는 문자열 찾기

'_'(글자수 띄어쓰기 포함)
'A_'(A로 시작하는 2글자짜리 단어)
'_A'(A로 끝나는 2글자짜리 단어)

-- like 글자수 지정 조회 가능 '_'
    
    select name from product where name like '한________';
    
    select name from product where name like '한_________';

SELECT USERNAME, EMAIL
FROM USER
WHERE EMAIL LIKE '_________@%';

ESCAPE'#' = 특수문자# 을 단순 문자로 인식

SELECT EMAIL
FROM USER
WHERE EMAIL LIKE '_________@%';


*/
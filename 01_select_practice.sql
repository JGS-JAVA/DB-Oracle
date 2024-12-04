/*
범위주석 ctrl + shift + /
*/
-- 한줄주석 ctrl+ /



--SQL 1개 실행 : CTRL + ENTER
--SQL 2개 실행 : 드래그 + ALT + X
--CTRL + SPACE 자동완성
--SQL 지정명칭코드는 보통 대문자로 써서 다른 코드와 구분하기
--컬럼명, 표이름 등 조회할 단어,기능은 소문자로 작성하여 구분하기


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


*/
--department표의 모든내용 조회하기
SELECT * FROM department;
SELECT * FROM location;
SELECT * FROM JOB;
SELECT * FROM NATIONAL;
SELECT * FROM sal_grade;

--EMPLOYEE 표에서 사번 이름 급여 조회
SELECT emp_id,emp_name,salary from employee;

--EMPLOYEE 표에서 이름 조회
SELECT emp_name,hire_date from employee;

SELECT hire_date from employee;

SELECT DEPT_ID,DEPT_TITLE from department;

SELECT DEPT_TITLE from department;

SELECT * FROM department

/*
컬럼값 : 한칸값
셀렉트문 작성시 컬럼명에 산술연산 작성시 결과에 연산 반영되어 조회됨

직원표에서 모든이의 이름 급여 급여*12 로 연봉조회


*/
SELECT EMP_ID,EMP_NAME,SALARY*12 FROM employee;
SELECT EMP_ID,EMP_NAME,SALARY,SALARY*12 FROM employee;
--SALARY*12 를 연봉이라 표기
--AS = Alias = 별칭
SELECT EMP_ID,EMP_NAME,SALARY,SALARY*12 AS 연봉 FROM employee;
--직원표에서 별칭붙이기
SELECT EMP_ID AS 직원아이디,EMP_NAME AS 직원이름,SALARY AS 월급,SALARY*12 AS 연봉 FROM employee;

/*
SYSDATE   : 현재 연월일시분초 조회
SYSTIMESTAMP    : 현재 연월일시분초,마이크로초 + 지역(Local) 조회

DUAL (DUMMYTABLE) 가짜표
기능,단순데이터조회할 때 SQL에서 제공하는 가짜표



*/
--가짜 테이블로 시간 기능 조회
SELECT SYSDATE FROM DUAL;
--24/12/04
SELECT SYSTIMESTAMP FROM DUAL;
--24/12/04 14:29:04.212000000 +09:00
--날짜데이터 영산 (+ -만 가능) +1 은 1일 추가
SELECT SYSDATE-1 AS 어제,SYSDATE AS 오늘,SYSDATE+1 AS 내일,SYSDATE+2 AS 모레 FROM DUAL;

--현재시간 조회
--SYSDATE + 1/24 1시간후
--SYSDATE + 1/24/60 1분후
--SYSDATE + 1/24/60/60*10 10초후

--TO_DATE('문자열','패턴');
--문자열을 패턴형태로 해석해 DATE 타입으로 변경하는 함수

SELECT '2024-12-04' TO_DATE('2024-12-04','YYYY-MM-DD') FROM DUAL;

--사원이름 입사일 근무일수 조회
SELECT EMP_NAME, HIRE_DATE, (SYSDATE - HIRE_DATE) FROM employee;

--퇴사여부가 Y 인 사원 이름, 퇴사일 조회
SELECT EMP_NAME, ENT_DATE --무엇을
FROM EMPLOYEE             --어디서
WHERE ENT_YN = 'Y';       --어떤조건

--보너스가 있는 사원이름,보너스금액 조회
SELECT EMP_NAME,BONUS
FROM employee
WHERE BONUS IS NOT NULL;

--급여가 300만원 이상인 사원 이름,급여 조회
SELECT EMP_NAME,SALARY
FROM employee
WHERE SALARY >= 3000000;

SELECT *
FROM department
WHERE LOCATION_ID = 'L1';

SELECT EMP_NAME
FROM employee
WHERE EMAIL IS NOT NULL;

SELECT *
FROM employee
WHERE MANAGER_ID IS NULL;

--EMPLOYEE 표에서 모든이 이름 입사일 근무일수 조회
SELECT EMP_NAME, HIRE_DATE, SYSDATE - HIRE_DATE
FROM EMPLOYEE;

--포멧팅 활용해 정리
--FLOOR 로 정리 (소수점 아래 버리기)
--CEIL (올림)
--ROUND (반올림)
--로또번호 MATH.FLOOR(MATH.RANDOM());

SELECT EMP_NAME AS 이름, HIRE_DATE AS 입사일, FLOOR(SYSDATE - HIRE_DATE) AS 근무일수
FROM EMPLOYEE;

SELECT *
FROM employee
WHERE DEPT_CODE != 'D9';

SELECT emp_id, emp_name, salary * 12 as 연봉
FROM employee
WHERE salary * 12 <= 50000000;

SELECT emp_name, dept_code, phone
FROM employee
WHERE DEPT_CODE != 'D6';

SELECT emp_name, dept_code
FROM employee
WHERE DEPT_CODE != 'D1' 
or DEPT_CODE != 'D3';

/*
where절 기준설정시 범위, 조건
AND = 동시만족
OR = 하나만 만족
IN () = 조건에 여러값 지정하고 하나만 일치 OR 와 같다
NOT IN () = 일치하지 않는 행만 선택


*/
SELECT EMP_NAME, DEPT_CODE
FROM EMPLOYEE
WHERE dept_code NOT IN ('D1','D3');





---------------------------------------------------------------------------------------------------
/* SELECT (조회) 
    - 지정된 테이블에서 원하는 데이터를 선택해서 조회하는 SQL
    - 작성된 구문에 맞는 행, 열 데이터가 조회됨
     -> 조회된 결과 행의 집합 == RESULt SET(결과 집합)
    
    - 결과는 0 행 이상이 포함될 수 있다
     -> 왜냐하면 조건에 맞는 행이 없을 수 있기 때문

 SELECT 작성하는 방법
1. SELECT       *            FROM              테이블이름;
   조회하다  모든내용을   어디서조회할 것인가?   조회할테이블이름;

2. SELECT 컬럼명, 컬럼명, ... FROM 테이블이름;
테이블 내부에 있는 모든 컬럼을 조회하는 것이 아니라 조회하고 싶은 컬럼명만 선택해서 조회


-- AS : AliaS = 별명 = 별칭

 SYSDATE     SYSTIMESTAMP 
--(시스템이 나타내고 있는) 현재 시간

-- SYSDATE      : 현재 시간(년, 월, 일, 시, 분, 초) 조회
-- SYSTIMESTAMP : 현재 시간(년, 월, 일, 시, 분, 초, ms + 지역(local)) 조회

DUAL (DUmmy tAbLe) 가짜 테이블 
-- 기능이나 단순 데이터 조회를 위해 SQL에서 제공하는 존재하지 않는 가짜 테이블



-- 현재시간           한 시간 후,                     1분 후,                  10초 후 조회
   SYSDATE      SYSDATE + 1/24           SYSDATE + 1/24/60     SYSDATE +1/24/60/60 * 10
                24시간 중 1시간 후   24시간에서 60분 중 1분 후     24시간 중 60분 60초 중에 (1 * 10) 초 후

-- TO_DATE('문자열', '패턴');
-- 문자열을 패턴 형태로 해석해서 DATE 타입으로 변경하는 함수
 
3. SELECT 특정 기준에 부합한 컬럼을 조회

SELECT 조회할 컬럼명
FROM 테이블명
WHERE 조건작성;

*/


WHERE에서 존재 유무 확인 
IS NOT NULL = 빈 값이 아닌 칸
ex ) 이름이 비어있는 사원 조회    
    select emp_name 
    from  employee 
    where emp_name is null;
ex ) 이름이 비어있지 않은 사원 조회    
    select emp_name 
    from  employee 
    where emp_name is not null;











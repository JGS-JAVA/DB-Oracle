
-----------------8교시 실습문제--------------------
-- 1.EMPLOYEE 테이블에서 모든 데이터를 조회하세요.
SELECT *
FROM EMPLOYEE;
-- 2. DEPARTMENT 테이블에서 DEPT_TITLE과 LOCATION_ID를 조회하세요
SELECT DEPT_TITLE, LOCATION_ID
FROM DEPARTMENT;
-- 3. EMPLOYEE 테이블에서 SALARY가 
--3,000,000 이상인 직원들의 EMP_NAME과 SALARY를 조회하세요.
SELECT EMP_NAME,SALARY
FROM EMPLOYEE
WHERE SALARY >= 3000000;
-- 4. DEPARTMENT 테이블에서 LOCATION_ID가 'L1'인 부서를 조회하세요.
SELECT *
FROM DEPARTMENT
WHERE LOCATION_ID = 'L1';
-- 5. EMPLOYEE 테이블에서 BONUS가 NULL인 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE BONUS IS NULL;
-- 6. EMPLOYEE 테이블에서 SALARY가 2,500,000 이상이고 
--BONUS가 0.2 이상인 직원의 EMP_NAME을 조회하세요.
SELECT EMP_NAME
FROM EMPLOYEE
WHERE SALARY >= 2500000
AND BONUS >= 0.2;
-- 7. EMPLOYEE 테이블에서 JOB_CODE가 
--'J6'이거나 'J7'인 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE JOB_CODE = 'J6'
OR JOB_CODE = 'J7';
-- 8. DEPARTMENT 테이블에서 
--DEPT_TITLE에 '영업'이라는 단어가 포함된 부서를 조회하세요
SELECT *
FROM DEPARTMENT
WHERE DEPT_TITLE
LIKE '%영업%';
-- 9. EMPLOYEE 테이블에서 입사일(HIRE_DATE)이 
--2000년 이후인 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE HIRE_DATE >= TO_DATE('2000-01-01','YYYY-MM-DD');
-- 10. EMPLOYEE 테이블에서 퇴직 여부가 'Y'이고 
--퇴사일이 2015년 이후인 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE ent_yn = 'Y'
AND ENT_DATE >= TO_DATE('2015-01-01','YYYY-MM-DD');
-- 11. EMPLOYEE 테이블에서 EMP_NAME의 첫 글자가 '김'인 직원들의 정보를 조회하세요
SELECT *
FROM EMPLOYEE
WHERE EMP_NAME
LIKE '김%';
-- 12. EMPLOYEE 테이블에서 JOB_CODE가 
--'J1', 'J2', 'J3'인 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE JOB_CODE = 'J1'
OR JOB_CODE = 'J2'
OR JOB_CODE = 'J3';
-- 13. EMPLOYEE 테이블에서 
--특정 DEPT_CODE('D1', 'D5', 'D9')를 제외한 직원들의 정보를 조회하세요
SELECT *
FROM EMPLOYEE
WHERE DEPT_CODE != 'D1'
AND DEPT_CODE != 'D5'
AND DEPT_CODE != 'D9';
-- 14. EMPLOYEE 테이블에서 
--MANAGER_ID가 NULL인 직원들의 EMP_NAME과 DEPT_CODE를 조회하세요.
SELECT EMP_NAME,DEPT_CODE
FROM EMPLOYEE
WHERE MANAGER_ID IS NULL;
-- 15. EMPLOYEE 테이블에서 EMP_NAME에 
--'김'이 포함된 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE EMP_NAME
LIKE '%김%';
-- 16. EMPLOYEE 테이블에서 EMAIL 주소에 
--'gmail'이 포함된 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE EMAIL
LIKE '%gmail%';
-- 17. EMPLOYEE 테이블에서 PHONE 번호가 
--'010'으로 시작하는 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE PHONE
LIKE '010%';
-- 18. EMPLOYEE 테이블에서 PHONE 번호가 
--'1234'로 끝나는 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE PHONE
LIKE '%1234';
-- 19. DEPARTMENT 테이블에서 DEPT_TITLE이 '영업'으로 끝나는 부서를 조회하세요.
SELECT *
FROM DEPARTMENT
WHERE DEPT_TITLE
LIKE '%영업';
-- 20. DEPARTMENT 테이블에서 DEPT_TITLE에 
--'관리'라는 단어가 포함된 부서를 조회하세요.
SELECT *
FROM DEPARTMENT
WHERE DEPT_TITLE
LIKE '%관리%';
-- 21. EMPLOYEE 테이블에서 EMP_NAME이 '이'로 시작하는 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE EMP_NAME
LIKE '이%';
-- 22. EMPLOYEE 테이블에서 JOB_CODE가
--'J'로 시작하고 두 번째 문자가 '1'인 직원을 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE JOB_CODE
LIKE 'J1%';
-- 23. EMPLOYEE 테이블에서 EMAIL이 'com'으로 끝나는 직원들의 정보를 조회하세요
SELECT *
FROM EMPLOYEE
WHERE EMAIL
LIKE '%COM';
-- 24. EMPLOYEE 테이블에서 HIRE_DATE의 연도가 2021년인 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE HIRE_DATE >= TO_DATE('2015-01-01','YYYY-MM-DD')
AND HIRE_DATE <= TO_DATE('2016-01-01','YYYY-MM-DD');
-- 25. EMPLOYEE 테이블에서 EMP_NAME의 
--마지막 글자가 '호'인 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE EMP_NAME
LIKE '%호';
-- 26. EMPLOYEE 테이블에서 EMAIL에 
--'company'라는 단어가 포함된 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE EMAIL
LIKE '%company%';
-- 27. EMPLOYEE 테이블에서 EMP_NAME에 
--'수'로 시작하거나 끝나는 직원들의 정보를 조회하세요.
SELECT *
FROM EMPLOYEE
WHERE EMP_NAME
LIKE '수%';




















































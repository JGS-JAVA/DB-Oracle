SELECT * 
FROM EMPLOYEE ;

--
SELECT emp_id,emp_name,salary
FROM EMPLOYEE
ORDER BY SALARY;
--
SELECT emp_id,emp_name,hire_date
FROM EMPLOYEE 
order BY hire_date DESC;
--
SELECT dept_id, dept_title
FROM DEPARTMENT 
ORDER BY DEPT_TITLE ASC;
--
SELECT emp_id,emp_name
FROM EMPLOYEE 
WHERE dept_code IS NULL
order BY emp_name DESC;
--
SELECT EMP_NAME,SAL_LEVEL
FROM EMPLOYEE 
WHERE SALARY >= 3000000
ORDER BY SAL_LEVEL DESC;
--
SELECT EMP_NAME,PHONE
FROM EMPLOYEE
ORDER BY PHONE NULLS FIRST;
--NULLS LAST (기본설정값)
SELECT EMP_NAME,PHONE
FROM EMPLOYEE
ORDER BY PHONE NULLS LAST;
--
SELECT EMP_NAME,PHONE
FROM EMPLOYEE
ORDER BY PHONE /*ASC NULLS LAST*/;
--
SELECT EMP_NAME,PHONE
FROM EMPLOYEE
ORDER BY PHONE DESC NULLS FIRST;
--
SELECT 
FROM EMPLOYEE
ORDER BY 









--1. 직원들 중 봉급이 5000이상인 직원들의 모든 정보 조회하기 
SELECT * FROM EMPLOYEES ;
--성이 last 
SELECT * FROM EMPLOYEES 
WHERE SALARY >= 5000;
--2. 직원들 중 부서 번호가 30번인 직원들의 이름(성-이름 풀네임으로) 과 입사일 조회하기
SELECT FIRST_NAME || ' ' || LAST_NAME 풀네임 ,
HIRE_DATE 
FROM EMPLOYEES 
WHERE DEPARTMENT_ID = 30;
--3. 직원들 중 성이 Smith인 직원들의 이름과 봉급과 부서 번호 조회하기 
SELECT FIRST_NAME || ' ' || LAST_NAME 풀네임 ,
SALARY 봉급,
DEPARTMENT_ID "부서 번호"
FROM EMPLOYEES 
WHERE  LAST_NAME = 'Smith';
--4. 직원들 중 봉급이 3000미만이거나 10000이상인 직원들의 이름과 봉급 조회하기 
SELECT FIRST_NAME || ' ' || LAST_NAME 풀네임 ,
SALARY 
FROM EMPLOYEES 
WHERE SALARY < 3000 OR SALARY  >= 10000;
--5. 직원들 중 이름이 A로 시작하는 직원들의 이름과 이메일 주소 조회하기 
--단 , 이메일 주소에는 @koreait.com 형태여야한다 
SELECT FIRST_NAME || ' ' || LAST_NAME 풀네임 ,
EMAIL || '@koreait.com'
FROM EMPLOYEES 
WHERE FIRST_NAME LIKE 'A%';
--6. 직원들 중 성에 o가 포함되고 이름이 4글자인 직원들의 이름(풀네임), 부서번호 조회하기 
SELECT FIRST_NAME || ' ' || LAST_NAME 이름풀네임 ,
DEPARTMENT_ID 
FROM EMPLOYEES 
WHERE LAST_NAME LIKE '%o%' AND FIRST_NAME LIKE '____';
--7. 직원들중 이름이 J로 시작하고 성이 s로 끝나는 직원들의 이름과 성 조회하기 
SELECT FIRST_NAME  이름 ,
LAST_NAME  성
FROM EMPLOYEES 
WHERE FIRST_NAME  LIKE 'J%' AND LAST_NAME  LIKE '%s';
--없음 
-- DBMS 주석 
-- 실행시키지않고 설명을 작성할 때 사용한다
-- 스크립트 파일 생성 : ctrl +]
-- 실행 : ctrl + enter
-- 주석 : ctrl + /

--SELECT 문을 이용하여 employees 테이블의 first_name 컬럼만 선택하여 조회하기 
SELECT FIRST_NAME FROM EMPLOYEES ;
--SELECT : 조회
--SELECT 컬럼명 FORM 테이블명 ;

SELECT * FROM EMPLOYEES ;
--테이블의 모든 내용 확인가능 

SELECT FIRST_NAME , LAST_NAME 
FROM HR.EMPLOYEES ;
-- 현재 HR계정으로 로그인되어있으므로 HR.은 생략 가능하다
-- 계정을 작성하는 이유는 여러 계정에 동일한 이름의 테이블명이 존재할 수 있기 때문이다 
-- 지금 로그인한 계정의 테이블의 우선순위가 높기때문에 일반적으로 계정명은 생략 가능하다 

--[실습] 
--직원의 LAST_NAME 과 FIRST_NAME 과 핸드폰 번호 , 이메일 주소 , 사원번호를 조회하기
--순서대로 조회되어야한다 
SELECT LAST_NAME,
FIRST_NAME ,
PHONE_NUMBER ,
EMAIL ,
EMPLOYEE_ID 
FROM EMPLOYEES;

--1)우리가 만든 테이블이 아니므로 컬럼명을 먼저 확인한다 
-- 테이블로 확인하거나 SELECT * 로 확인
--2)순서를 생각하고 조회한다 

--웹사이트를 만들고 게시판에 데이터를 저장하는 테이블을 만들었다고 가정
-- 글제목 , 글내용, 작성자 , 작성시간, 추천 
--정렬 순서를 바꾸는 기능이 있다면 추천순, 조회순 , 오래된 순 등으로 정렬해야한다 
--ORDER BY

--정렬해서 조회하기 
--사원의 이름, 성 , 봉급을 낮은 순서부터 조회하기 
SELECT FIRST_NAME ,
LAST_NAME ,
SALARY 
FROM EMPLOYEES 
ORDER BY SALARY; 
--내림차순 DESCENDING DESC
--오름차순 ASCENDING  ASC

--문자열이나 , 날짜 데이터 타입에서의 정렬 
SELECT * FROM EMPLOYEES;
--HIRE_DATE : 날짜 타입 
--FIRST_NAME : 문자열 타입
--LAST_NAME : 문자열 타입

SELECT FIRST_NAME,
LAST_NAME ,
HIRE_DATE 
FROM EMPLOYEES 
ORDER BY HIRE_DATE;

SELECT FIRST_NAME,
LAST_NAME ,
HIRE_DATE 
FROM EMPLOYEES 
ORDER BY LAST_NAME DESC ;

--테이블의 컬럼이름을 바꿔서 조회하고 싶을 때
--별칭을 이용한다 
SELECT FIRST_NAME AS "이름",
LAST_NAME AS "성",
SALARY AS "봉급",
EMPLOYEE_ID  AS "사원 번호"
FROM EMPLOYEES;

--테이블 컬럼명을 별칭으로 설정하기 
-- AS 키워드 생략가능, ""생략가능 (단 띄어쓰기가 포함되어 있다면 ""생략 불가능 )

--[실습]사원의 이름 , 성 , 봉급을 봉급 내림차순으로 정렬해서 조회하기 
--단 , 별칭 사용할 것 
SELECT FIRST_NAME 이름,
LAST_NAME 성,
SALARY "봉급"
FROM EMPLOYEES
ORDER BY 봉급 DESC; -- 별칭을 지었을 경우 , 컬럼명 대신에 별칭을 사용할 수 있다 

SELECT FIRST_NAME || ' ' || LAST_NAME "전체 이름",
SALARY "봉급"
FROM EMPLOYEES
ORDER BY SALARY DESC;

--10||20 을 연결한 결과를 보고싶다는 것이므로 두 값의 연산결과를 조회하고 싶다는 것
-- 조회 SELECT 문을 사용해야한다 
SELECT 10||20
FROM DUAL;
--특정 테이블에서 조회하는 것이 아닌 우리가 작성한 연산식에서 
--조회하려는 것이기 떄문에 FROM뒤에 테이블명을 쓸 수 없다 
--DUAL 테이블  : 다른 테이블을 참조할 필요없이 값을 확인하고 싶을때 사용할 수 있는 테이블 
--오라클에서 지원함 

SELECT '안녕' || '하세요' AS "인사말"
FROM DUAL;
--문자열은 ''로 표현한다 

--날짜 타입의 값에 안녕을 연결하기 
SELECT HIRE_DATE || '안녕'
FROM EMPLOYEES ;
SELECT * FROM EMPLOYEES ;
--주석 하이픈 두개 ,단축키 : CTRL + /
/**/ --범위주석 단축키 :CTRL + SHIFT + / 
 -- *은 모든 컬럼을 조회할 때 SELECT절에 작성하면 된다 .
 
--열골라내기 
 SELECT  EMPLOYEE_ID ,
 	EMAIL ,
 	PHONE_NUMBER ,
 	HIRE_DATE 
 FROM EMPLOYEES ;
 
--행골라내기 
SELECT *
FROM EMPLOYEES 
WHERE SALARY > 10000;

--정렬하기 
SELECT *
FROM EMPLOYEES 
WHERE SALARY > 10000
ORDER BY SALARY ;

--연산자 (사칙연산)
SELECT 5+5
FROM DUAL; --숫자와 숫자의 연산은 숫자

SELECT 5+'5'
FROM DUAL; --숫자와 문자인 숫자의 연산은 숫자

SELECT 5+'ㄷㄷ'
FROM DUAL; --숫자와 문자의 연산은 에러

SELECT 'ㄷㄷ'+'ㄷㄷ'
FROM DUAL; --문자의 사칙연산은 에러 

--날짜와 숫자의 연산은 추후에 
SELECT SYSDATE - 1/24 --1이 1DAY기준 
FROM DUAL;

--연결 연산자 
-- || 
SELECT 'ㄷㄷ'||'ㄷㄷ'  
FROM DUAL; --문자의 연결은 ||로 해준다 

--날짜 - 날짜 (+는 안됨) 지나간 일수가 튀어나옴
SELECT  SYSDATE - SYSDATE 
FROM DUAL ;

--실제 테이블에 저장되어있는 데이터를 이용해서 여러가지 연산을 수행 
SELECT EMPLOYEE_ID "직원 번호",
	HIRE_DATE,
	EMAIL ,
	SALARY +1000 AS "조정급여" --알리아스 AS
FROM EMPLOYEES 
WHERE SALARY >= 10000;

SELECT EMPLOYEE_ID "직원 번호",
	HIRE_DATE,
	EMAIL ,
	SALARY +1000 AS "조정급여" ,--알리아스 AS
	ROUND((SYSDATE - HIRE_DATE)/365, 0) "근속 년수" --ROUND(VALUE, 소수점)
FROM EMPLOYEES 
WHERE SALARY >= 10000;






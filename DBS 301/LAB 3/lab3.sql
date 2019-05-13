/***************** Task 1 *****************/

SELECT TO_CHAR(SYSDATE + 1, 'MONTH DD"th of year " YYYY') AS "Tomorrow" 
FROM DUAL;


/***************** Task 2 *****************/
SELECT LAST_NAME AS "Last Name", 
FIRST_NAME AS "First Name", 
SALARY AS "Salary",
SALARY * 1.07 AS "Good Salary", 
((SALARY * 1.07) - SALARY) * 12 AS "Annual Pay Increase"  
FROM EMPLOYEES 
WHERE DEPARTMENT_ID IN(20, 50, 60); 

/***************** Task 3 *****************/

SELECT (UPPER(last_name) || ', ' || UPPER(first_name)) || ' is ' || job_id AS "Person and Job" 
FROM employees 
WHERE last_name LIKE '%s' AND (first_name LIKE 'C%' OR first_name LIKE 'K%') 
ORDER BY last_name;

/***************** Task 4 *****************/

SELECT last_name AS "Last name",
hire_date AS "Hire Date",
ROUND((sysdate - hire_date) / 365) AS "Years worked" 
FROM employees 
WHERE hire_date < to_date('1992', 'yyyy') 
ORDER BY 3;

/***************** Task 5 *****************/
SELECT city AS "City Name",
country_id AS "Country Code",
NVL(state_province, 'Unknown Provice') AS "State Province Name"
FROM locations
WHERE city LIKE 'S%' AND LENGTH(city) >= 8;
/***************** Task 5 *****************/
SELECT last_name AS "Last Name",
hire_date AS "Hire Date",
initcap(to_char(next_day(hire_date + 365, 'tuesday'), 'fmDAY"," MONTH "the" ddspth "of year" yyyy')) AS "REVIEW DAY" 
FROM employees 
WHERE hire_date > to_date('19971231', 'yyyymmdd') 
ORDER BY "REVIEW DAY";
/***************** Task 6 *****************/
SELECT LAST_NAME,HIRE_DATE,
TO_CHAR(next_day(add_months(hire_date, 12),'Tuesday'),'fMDAY, Month "the" fmDdspth "of year" YYYY') AS "Review Day"
From employees
Where hire_date > '01-JAN-1998';


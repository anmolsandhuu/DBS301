SELECT * FROM EMPLOYEES;

SELECT employee_id, last_name, job_id, manager_id, department_id
from EMPLOYEES;

SELECT * FROM DEPARTMENTS;

SELECT * FROM JOB_HISTORY;




SELECT last_name LName, job_id JobTitle, Hire_date JobStart
FROM EMPLOYEES;

SELECT employee_id, last name, commission_pct Emp Comm,
FROM employees;

// ques 4

desc locations;

// QUES 5

SELECT state_province || ' IN THE '|| country_id as q
from locations;


SELECT trim("LOCATION_ID") CITY#, CITY City,trim(state_province || ' IN THE '|| country_id) as "Province with Country Code" 
from Locations
where (location_id between 1000 and 1500);



// ques 6 

SELECT DISTINCT DEPARTMENT_ID, JOB_ID
FROM EMPLOYEES;
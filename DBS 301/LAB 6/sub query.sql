SELECT * FROM EMPLOYEES;

SELECT LAST_NAME , JOB_ID, SALARY
FROM employees
WHERE SALARY >          (SELECT SALARY 
                        FROM EMPLOYEES
                        WHERE LAST_NAME = 'Gietz');
                        
                        
                        
                        

SELECT LAST_NAME, JOB_ID, SALARY ,EMPLOYEE_ID
FROM EMPLOYEES
WHERE JOB_ID = (SELECT JOB_ID
                FROM EMPLOYEES
                WHERE EMPLOYEE_ID = 141);
)


SELECT LAST_NAME, JOB_ID, SALARY ,EMPLOYEE_ID
FROM EMPLOYEES
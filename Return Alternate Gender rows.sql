Create Table Emp
( ID NUMBER,
  NAME VARCHAR2(10),
GENDER	VARCHAR2(1));

Insert Into Emp values ( 1, 'Mr ABC', 'M');
Insert Into Emp values ( 2, 'Ms ZZZ', 'F');
Insert Into Emp values ( 3, 'Ms Adbhut', 'F');
Insert Into Emp values ( 4, 'Mr Ambani', 'M');
Insert Into Emp values ( 5, 'Mr Neeraj', 'M');
Insert Into Emp values ( 6, 'Mr Sonu', 'M');

SELECT * FROM EMP; 

-- DELETE FROM EMP 

-- MY ATTEMPT 
SELECT ID, NAME , GENDER, ROW_NUMBER() OVER(ORDER BY GENDER) AS GENDER_RN
FROM EMP
    ORDER BY ID;

-- SOLUTION
SELECT GENDER,  ROW_NUMBER() OVER (PARTITION BY GENDER ORDER BY GENDER) AS R
FROM   EMP
ORDER BY R, GENDER DESC

use college;

CREATE TABLE emp(
empno INT PRIMARY KEY,
ename VARCHAR(50),
job VARCHAR(40),
hiredate DATE,
sal INT,
comm INT,
deptno INT
);

DESC emp;

INSERT INTO emp(empno,ename,job,hiredate,sal,deptno)
 VALUES(7369,'SMITH','CLERK','80-12-17' ,800 ,20);
 
 INSERT INTO emp(empno,ename,job,hiredate,sal,comm,deptno)
 VALUES(7499,'ALLEN','SALESMAN','81-02-20' ,1600,300 ,30);
 
  INSERT INTO emp(empno,ename,job,hiredate,sal,comm,deptno)
 VALUES(7521,'WARD','SALESMAN','81-02-22' ,1250,500 ,30);
 
  INSERT INTO emp(empno,ename,job,hiredate,sal,deptno)
 VALUES(7566,'JONES','MANAGER','81-04-02' ,2975 ,20);
 
  INSERT INTO emp(empno,ename,job,hiredate,sal,comm,deptno)
 VALUES(7654,'MARTIN','SALESMAN','81-09-28' ,1250,1400 ,30);
 
  INSERT INTO emp(empno,ename,job,hiredate,sal,deptno)
 VALUES(7698,'BLAKE','MANAGER','81-05-01' ,2850 ,30);
 
  INSERT INTO emp(empno,ename,job,hiredate,sal,deptno)
 VALUES(7782,'CLARK','MANAGER','81-08-09' ,2450,10);
 
  INSERT INTO emp(empno,ename,job,hiredate,sal,deptno)
 VALUES(7788,'SCOTT','ANALYST','87-04-19' ,3000 ,20);
 
  INSERT INTO emp(empno,ename,job,hiredate,sal,deptno)
 VALUES(7839,'KING','PRESIDENT','81-11-17' ,5000 ,10);
 
  INSERT INTO emp(empno,ename,job,hiredate,sal,comm,deptno)
 VALUES(7844,'TURNER','SALESMAN','81-09-08' ,1500,0 ,30);
 
  INSERT INTO emp(empno,ename,job,hiredate,sal,deptno)
 VALUES(7876,'ADAMS','CLERK','87-05-23' ,1100 ,20);
 
  INSERT INTO emp(empno,ename,job,hiredate,sal,deptno)
 VALUES(7900,'JAMES','CLERK','81-12-03' ,950,30);
 
  INSERT INTO emp(empno,ename,job,hiredate,sal,deptno)
 VALUES(7902,'FORD','ANALYST','81-12-02' ,3000 ,20);
 
  INSERT INTO emp(empno,ename,job,hiredate,sal,deptno)
 VALUES(7934,'MILLER','CLERK','82-12-23' ,1300,10);
 
SELECT * FROM EMP;

SELECT ename,job from emp;

SELECT empno, sal AS individual_salary, 
       (SELECT SUM(sal) FROM emp) AS total_salary
FROM emp;

select ename from emp where deptno=10;

select ename from emp where  job='clerk' AND SAL > 1000;

SELECT empno , ename FROM emp WHERE comm IS NOT NULL;

SELECT empno, ename FROM emp WHERE comm IS NULL;

SELECT ename FROM emp WHERE job='clerks' or job='salesman' or job= 'analyst' and sal >1500;

SELECT ename 
FROM emp 
WHERE hiredate < DATE_SUB(CURDATE(), INTERVAL 5 YEAR);

SELECT empno, ename, hiredate 
FROM emp 
WHERE hiredate < '1990-06-30' 
   OR hiredate > '1990-12-31';


SELECT CURDATE();

SELECT USER();

SHOW TABLES;

SELECT CURRENT_USER();

SELECT ename FROM emp where deptno=10 or deptno = 20 or deptno = 40 or job='clerks' or job='salesman' or job='analyst';

SELECT ename FROM emp WHERE ename like's%';

SELECT ename FROM emp WHERE ename like'_a%';

SELECT ename FROM emp WHERE ename like'_____';

SELECT empno,ename,job FROM emp WHERE job!='manager';

SELECT empno, ename, job FROM emp WHERE job NOT IN('CLERK','SALESMAN','ANALYST');

SELECT count(*)  AS total_employee FROM emp;

SELECT SUM(sal) AS total_sal FROM emp;

SELECT MAX(sal) AS maximum_sal FROM emp;

SELECT MIN(SAL) AS minimum_sal FROM emp;

SELECT AVG(sal) AS aberage_sal FROM emp;

SELECT MAX(sal) AS clerk_max_sal FROM emp WHERE JOB='clerk';

SELECT MIN(sal) AS clerk_min_sal FROM emp WHERE JOB ='clerk';

SELECT MAX(sal)  AS clerk_max_sal FROM emp WHERE deptno=20;

SELECT MIN(sal) AS clerk_min_sal FROM emp WHERE job='salesman';

SELECT empno, ename,sal FROM emp ORDER BY sal;

SELECT ename, sal * 12 AS annual_salary FROM emp ORDER BY annual_salary DESC;

SELECT ename FROM emp ORDER BY ename desc;

SELECT  deptno, COUNT(*) AS total_number FROM emp GROUP BY deptno;

SELECT job, count(*)AS total_no FROM emp GROUP BY job;

SELECT deptno, count(sal) AS total_sal from emp group by deptno;

SELECT job, COUNT(sal+comm)AS total_sal FROM emp GROUP BY job;

SELECT job, sum(SAL+1000) FROM emp where job='manager';

UPDATE emp SET SAL=SAL+1000 WHERE job='manager';

UPDATE emp SET job='s_manager'  WHERE job = 'manager'AND (SAL*12)>50000;

select * from emp;

UPDATE emp SET comm = 100 WHERE comm IS NULL;

DELETE FROM EMP WHERE JOB='MANAGER';

DELETE FROM EMP WHERE SAL<1000;



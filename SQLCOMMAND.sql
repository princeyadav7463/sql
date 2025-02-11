USE COLLEGE;
DESC STUDENT;
SELECT * FROM STUDENT;
 SHOW DATABASES;
 SHOW TABLES;
 DROP TABLE STUDENT ;
 
 CREATE TABLE STUDENT(
  ROLL_NO INT PRIMARY KEY,
  NAME VARCHAR(20)
 );
 
 SELECT*FROM STUDENT;
 
 INSERT INTO STUDENT(ROLL_NO,NAME)VALUES
 (101,'PRINCE'),
 (102,'RAJ');
 
 CREATE DATABASE XYZ;
 USE XYZ;
 
 CREATE TABLE EMPLOYEE(
 ID INT PRIMARY KEY,
 NAME VARCHAR(10),
 SALARY INT
 );
 
 INSERT INTO EMPLOYEE(ID,NAME,SALARY)values
 (1,'ADAM',25000),
 (2,'BOB',30000),
 (3,'CASEY',40000);
 
 SELECT * FROM EMPLOYEE;
 
 CREATE TABLE temp1(
 id int UNIQUE	
 );
 
 INSERT INTO temp1 VALUES (101);
 SHOW TABLES;
 
 CREATE TABLE city(
 id INT PRIMARY KEY ,
 city VARCHAR (50),
 age INT,
 CONSTRAINT age_check CHECK(AGE>=18 AND CITY = 'DELEHI' )
 );
 
 DROP TABLE TEMP1;
 INSERT INTO city VALUES(1,'RANCHI','28');
 USE COLLEGE;
 DESC student;
 
 SELECT* FROM student;
 UPDATE student SET name ='anil' WHERE ROLL_NO=101;
 
 
 UPDATE student SET marks =93 WHERE ROLL_NO=102;
 
 ALTER TABLE student ADD(
 marks INT NOT NULL,
 grade VARCHAR(1),
 city VARCHAR(20)
 );
 
 UPDATE student SET city ="Pune" WHERE ROLL_NO=101;
 
 INSERT INTO student (roll_no,name,marks,grade,city)VALUES
 (103,"Chetan",85,"B","MUMBAI"),
 (104,"Dhruv",85,"A","Delhi"),
 (105,"emanuel",12,"F","Delhi"),
 (106,"farah",82,"B","Delhi");
 
 
 select * from student;

SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks >80;

SELECT * FROM student WHERE city="Mumbai";

 select * from student; 

SELECT * FROM student
WHERE city IN ("faridabad","Gurgaon");

SELECT * FROM student
WHERE city NOT IN ("faridabad","Gurgaon");

SELECT * FROM student LIMIT 3;

SELECT * FROM student WHERE marks >75 LIMIT 3;

SELECT * FROM student ORDER BY city DESC;
 use college;
 
 CREATE TABLE dept(
 id INT PRIMARY KEY,
 name VARCHAR(50)
 );
 INSERT INTO dept(id,name)VALUES
 (101,"English"),
 (102,"It");
 
 select * from dept;
 
 CREATE TABLE teacher(
 id int PRIMARY KEY,
 name VARCHAR(50),
 dept_id INT,
 FOREIGN KEY (dept_id) REFERENCES dept(id)
 ON UPDATE CASCADE
 ON DELETE CASCADE
 );
  desc teacher;
  
  INSERT INTO teacher 
  values
  (101,"Adam",101),
  (102,"Eve",102);
  
SELECT * FROM teacher; 

UPDATE dept SET id=103 where id = 102; 
  
SELECT* FROM teacher;
 
 SELECT * FROM dept;
 
 ALTER TABLE student 
 ADD COLUMN age INT NOT NULL DEFAULT 19;
 
 SELECT * FROM student;
 
 ALTER TABLE student 
 CHANGE age stu_age INT;
 ALTER TABLE student
 MODIFY COLUMN age VARCHAR(2);
 
 INSERT INTO student 
 (roll_no, name,marks,stu_age)
 VALUES(108,"Ragni",91,109);
 
 ALTER TABLE student
 DROP COLUMN stu_age;
 

 SELECT * FROM student;
 
ALTER TABLE student RENAME TO stu;
desc stu;

TURNCATE TABLE stu;
use college;
select * from stu;
ALTER TABLE stu
change name full_name varchar(30);

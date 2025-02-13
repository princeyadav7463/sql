USE college; 
SELECT * FROM student;
SELECT AVG(marks) FROM student;
SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;

SELECT COUNT(NAME) FROM student;

select city,count(name)from student group by city;

select city from student group by city;

select city,avg(marks) from student group by city;

 SELECT city ,AVG(marks) FROM student group by city order by city;
 
 CREATE TABLE payment(
 customer_id INT PRIMARY KEY,
 customer VARCHAR(15),
 mode VARCHAR(15),
 city VARCHAR(20)
 );
 DROP TABLE payment;
 DESC payment;
 
 INSERT INTO payment(customer_id,customer,mode,city) VALUES
 (101,"Olivia Barrett","Netbanking","Portland");
 INSERT INTO payment(customer_id,customer,mode,city) VALUES
 (102,"Ethan Sinclair","Credit Card","Miami");
 INSERT INTO payment(customer_id,customer,mode,city) VALUES
 (103,"Maya Hernandez","Credit card","seattle");
 INSERT INTO payment(customer_id,customer,mode,city) VALUES
 (104,"Liam Donovan","Netbanking","Denver");
 INSERT INTO payment(customer_id,customer,mode,city) VALUES
 (105,"Sophia Ngyuyen","credit card","New Orleans");
 INSERT INTO payment(customer_id,customer,mode,city) VALUES
 (106,"Caleb Foster","Debit Card","Minneapolis");
 INSERT INTO payment(customer_id,customer,mode,city) VALUES
 (107,"Ava Patel","Debit card","Phoenix");
 INSERT INTO payment(customer_id,customer,mode,city) VALUES
 (108,"Lucas Carter","Netbanking","Boston");
 INSERT INTO payment(customer_id,customer,mode,city) VALUES
 (109,"Isabel Martinez","Netbanking","Nashville");
 
 INSERT INTO payment(customer_id,customer,mode,city) VALUES
 (110,"Jackson Brooks","Credit card","Boston");
 
 SELECT * FROM payment;
 
 SELECT mode,COUNT(MODE) FROM payment group by mode;
   
   
   SELECT * FROM STUDENT;
 select city, count(ROLL_NO)
 from student
 group by city
 having max(marks)>90;
 
UPDATE student set grade="o"
where grade="A";

set sql_safe_updates=0;

update student set marks =12 where roll_no =105;
update student set grade="B" where roll_no =105;

select * from student;


delete from student where marks <33;
update student set marks=marks+1;

 
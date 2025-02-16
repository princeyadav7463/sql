use college;

select * from stu;

alter table stu drop column grade;

SET SQL_SAFE_UPDATES = 0;


delete from stu where marks < 80 ;

/*inner jion start*/ 


create table student(
student_id int primary key,
name varchar(20)
);

insert into student values(101,'adam');
insert into student values(102,'bob');
insert into student values(103,'sasey');

select * from student;

create table course(
student_id int primary key,
courser varchar (20)
);

desc course;

insert into course values (102,'english');
insert into course values (105,'math');
insert into course values (103,'science');
insert into course values (107,'computer_science');

select * from course;

select * from student inner join course on student.student_id=course.student_id;

select * from student as s
inner join course as c
on s.student_id=c.student_id;


select * from student as a
left join course as b
on a.student_id=b.student_id;

select * from student as a
right join course as b
on a.student_id=b.student_id;


select * from student as a
left join course as b
on a.student_id=b.student_id
union
select * from student as a
right join course as b
on a.student_id=b.student_id;



select * from student as a
left join course as b
on a.student_id=b.student_id
where b.student_id is null;

select * from student as a
right join course as b
on a.student_id=b.student_id
where a.student_id is  null;

select * from student as a
join course as b
on a.student_id=b.student_id;

create table emp2(
id int primary key,
name varchar(30),
manager_id int
);


insert into emp2(id,name,manager_id)
values(101, 'adam',103);
insert into emp2(id,name,manager_id)
values(102,'bob',104);
insert into emp2(id,name,manager_id)
values(103, 'casey',null);
insert into emp2(id,name,manager_id)
values(104, 'donald',103);
select * from emp2;


select * from emp2 as a
join emp2 as b
on a.id=b.manager_id;
 
 select a.name AS manger_name,b.name
from emp2 as a
join emp2 as b
on a.id=b.manager_id;

select name from emp2
union 
select name from emp2;

select * from stu;

select avg(marks) from stu;

select full_name 
from stu
where marks>89.666;

select full_name, marks from stu where marks > (select avg(marks) from stu);

select full_name , roll_no from stu where roll_no % 2=0;

select full_name  from stu where roll_no in(102,104,106,108);

select full_name from stu where roll_no in(select roll_no from stu where roll_no % 2=0);

select  max(marks) from (select * from stu where city='delhi')as temp;

select(select max(marks)from stu),full_name from stu;


create view view1 as select roll_no , full_name , marks from stu;

select * from view1 where marks=98;

drop view view1;


create database college;
use college;

create table student (
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);

insert into student 
(rollno, name, marks, grade, city) 
values
(101, "Istiak", 78, "C", "Dhaka"),
(102, "Mistiak", 93, "A", "Ctg"),
(103, "kistiak", 85, "B", "Sylhet"),
(104, "Tistiak", 96, "A", "Dhaka"),
(105, "Ristiak", 12, "F", "Rajshahi"),
(106, "Pistiak", 82, "B", "Sylhet");

select * from student;

select name, marks from student;

select distinct city from student; 

select *
from student
where marks > 80;

select *
from student
where marks > 80 and city = 'Dhaka';

select *
from student
where marks > 80 or city = 'Sylhet';

select *
from student
where marks between 70 and 80;

select *
from student
where city in ('Dhaka', 'ctg');

select *
from student
where marks > 80
limit 3;

select *
from student
order by marks desc;

select max(marks) from student;

select min(marks) from student;

select avg(marks) from student;

select count(rollno) from student;

select city, count(name)
from student
group by city
order by city asc;

select city, avg(marks)
from student
group by city
order by city asc;


/*
how many students get A grade then B grade and so on
*/

select grade, count(rollno)
from student
group by grade
order by grade asc;


select city, count(rollno)
from student
group by city
having max(marks) > 90;

/*
use UPDATE to update a value where A grade means Outstanding= 'O'
we need to trun off safe sql mode before update any value.
*/

set sql_safe_updates = 0;

update student
set grade = 'O'
where grade ='A';

select * from student;

delete from student
where marks < 33;

select * from student;

/*Start more abour primary and foreign key*/


create table dept(
id int primary key,
name varchar(50)
);

insert into dept values
(101, 'CSE'),
(102, "EEE"),
(103, "ENG"),
(104, "BIO");

select * from dept;

update dept
set id = 111
where name='CSE';


create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
on update cascade
on delete cascade
);

insert into teacher values
(101, "Jawad", 101),
(102, "Mahdi", 102),
(103, "Omar", 102);

select * from teacher;


/*
ALTER --> Now study table related queries.
*/

alter table student
add column age int;

/*
This will change the table name:
alter table student
rename to students;

Drop Column:
alter table student
drop column age;

change column (rename):
alter table student
change column age last_name varchar(50);

modify (to update data type)
alter table student
modify last_name varchar(100);

*/


/*
Truncate--> to delete all the data in the table not the table itself. 
Drop table delete the entire table where truncate delete 
only the data inside the table.

truncate table student;
*/



/*
SQL JOINS:
==================
INNER JOIN:
syntax:
SELECT *
FROM tableA
INNER JOIN tableB
ON tableA.column1 = tableB.column1
=======================
LEFT JOIN:
RIGHT JOIN:
FULL JOIN:
*/
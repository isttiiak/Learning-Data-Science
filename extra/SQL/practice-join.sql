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

create table newStudent(
	id int primary key,
	name varchar(50)
);

insert into newStudent (id, name) values
	(101, 'Ibrahim'),
	(102, 'Rahaman'),
	(103, 'Karim');

create table course(
	id int primary key,
    name varchar(50)
);

insert into course (id, name) values
	(105, 'english'),
	(102, 'bangla'),
	(103, 'computer science'),
	(107, 'physics');

select * from course;
    
select *
from newstudent
inner join course
on newstudent.id = course.id;


/*LEFT join start*/

select *
from newstudent as std
left join course as crs
on std.id = crs.id;

/*LEFT right start*/

select *
from newstudent as std
right join course as crs
on std.id = crs.id;

select * from student;

select full_name, marks
from student
where marks > (select avg(marks) from student);


select rollno from student
where rollno%2=0;

select full_name, rollno
from student
where rollno % 2 = 0;
create database pr_db;
use pr_db;

CREATE TABLE payments (
    customer_id  INT PRIMARY KEY,
    customer     VARCHAR(100),
    mode         VARCHAR(50),
    city         VARCHAR(100)
);

INSERT INTO payments (customer_id, customer, mode, city) VALUES
(101, 'Rahim Uddin',       'NetBanking',  'Dhaka'),
(102, 'Fatema Begum',      'Debit Card',  'Chittagong'),
(103, 'Karim Hossain',     'Credit Card', 'Sylhet'),
(104, 'Nasrin Akter',      'NetBanking',  'Rajshahi'),
(105, 'Sabbir Ahmed',      'Debit Card',  'Khulna'),
(106, 'Sharmin Sultana',   'Credit Card', 'Barisal'),
(107, 'Farhan Islam',      'NetBanking',  'Mymensingh'),
(108, 'Roksana Khanam',    'Debit Card',  'Comilla'),
(109, 'Imran Chowdhury',   'Credit Card', 'Narayanganj'),
(110, 'Taslima Parvin',    'NetBanking',  'Gazipur'),
(111, 'Nabil Rahman',      'Debit Card',  'Rangpur'),
(112, 'Halima Khatun',     'Credit Card', 'Jessore'),
(113, 'Shakib Hasan',      'NetBanking',  'Bogra'),
(114, 'Umme Kulsum',       'Debit Card',  'Tangail'),
(115, 'Arif Billah',       'Credit Card', 'Dinajpur'),
(116, 'Mahmuda Akter',     'NetBanking',  'Noakhali'),
(117, 'Tanvir Ahmed',      'Debit Card',  'Dhaka'),
(118, 'Sadia Islam',       'Credit Card', 'Chittagong'),
(119, 'Raihan Malik',      'NetBanking',  'Sylhet'),
(120, 'Moriom Begum',      'Debit Card',  'Khulna');


select * from payments;

select mode, count(customer)
from payments
group by mode;

select city, count(customer)
from payments
group by city
order by count(customer) desc limit 5;


/*---------------------practice: 2----------------------*/

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

alter table student
change column name full_name varchar(80);

select * from student;


delete from student
where marks < 80;

alter table student
drop column grade;
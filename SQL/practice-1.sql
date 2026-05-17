CREATE DATABASE college;

USE college;

CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR(50), 
    age INT NOT NULL 
);


INSERT INTO student VALUES(1, "Istiak", 24);
INSERT INTO student VALUES(2, "Izhaan", 25);
INSERT INTO student VALUES(3, "Imtihan", 22);

SELECT * FROM student;
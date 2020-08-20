create database MCourses 

use MCourses

CREATE TABLE instructors (
 id INT,
 fname VARCHAR(20),
 lname VARCHAR(20),
 address VARCHAR(20),
 salary iNT default 3000,
 hiredate DATETIME,
 overtime int,
 bd date,
 netsalry as ( ISNULL(salary,0)+ isnull(overtime,0)) persisted,
 age as ( year(getdate())-year(bd)),
 Constraint c1 PRIMARY KEY(id) ,
 CONSTRAINT c2 check( address in ('cairo' , 'alex')),
 Constraint c3 check (salary between 1000 and 5000),
 Constraint c4 unique (overtime)
)


CREATE TABLE courses (
 c_id INT Identity(1,1),
 name VARCHAR(20),
 duration int unique,
 Constraint c5 PRIMARY KEY(c_id)
)

CREATE TABLE labs (
 l_id INT identity,
 location int,
 capacity int,
 cou_id int,
 Constraint c6 PRIMARY KEY(l_id),
 Constraint c7 check (capacity < 20),
 Constraint c8 FOREIGN KEY (cou_id) REFERENCES course (c_id) ON
DELETE CASCADE ON UPDATE CASCADE
)


CREATE TABLE teachs (
 in_id INT,
 cou_id int,
 Constraint c9 PRIMARY KEY(in_id, cou_id),
 Constraint c10 FOREIGN KEY (in_id) REFERENCES instructor (id) ON DELETE CASCADE ON UPDATE CASCADE,
 Constraint c11 FOREIGN KEY (cou_id) REFERENCES course (c_id) ON DELETE CASCADE ON UPDATE CASCADE
)
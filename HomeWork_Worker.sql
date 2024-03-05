CREATE DATABASE Worker_Info;

create table worker(
worker_id INT IDENTITY(1,1) PRIMARY KEY,
first_name varchar(25) not null,
last_name varchar(25) not null,
salary varchar(10) not null,
joining_date Date not null,
Department varchar(10),
);
SET IDENTITY_INSERT worker ON;
INSERT INTO worker(worker_id,first_name,last_name,salary,joining_date,Department) VALUES (1,'Monika', 'Aíoía', '100000', '2021-02-20','HR');
INSERT INTO worker(worker_id,first_name,last_name,salary,joining_date,Department) VALUES (2, 'Nihaíika', 'Veíma', '80000', '2021-06-11','Admin');
INSERT INTO worker(worker_id,first_name,last_name,salary,joining_date,Department) VALUES (3, 'Vishal', 'Singhal', '300000', '2021-02-20','HR');
INSERT INTO worker(worker_id,first_name,last_name,salary,joining_date,Department) VALUES (4, 'Amitabh', 'Singh', '500000', '2021-02-20','Admin');
INSERT INTO worker(worker_id,first_name,last_name,salary,joining_date,Department) VALUES (5,'Vivek', 'Bhati', '500000', '2021-06-11','Admin');
INSERT INTO worker(worker_id,first_name,last_name,salary,joining_date,Department) VALUES (6,'Vipul', 'Diwan', '200000', '2021-06-11','Account');
INSERT INTO worker(worker_id,first_name,last_name,salary,joining_date,Department) VALUES (7,'Satish', 'Kumaí', '75000', '2021-01-20','Account');
INSERT INTO worker(worker_id,first_name,last_name,salary,joining_date,Department) VALUES (8,'Geetika', 'Chauhan', '90000', '2021-04-11','Admin');
SET IDENTITY_INSERT worker OFF;

select * from worker;


create table bonus(
bonus_id int IDENTITY(1,1) PRIMARY KEY,
worker_ref_id int default null,
bonus_date date not null,
bonus_amount int default null,
FOREIGN KEY (worker_ref_id) REFERENCES worker (worker_id) ON DELETE CASCADE ON UPDATE CASCADE
);

----drop table bonus;

select * from bonus;

set identity_insert bonus on;

INSERT INTO bonus(bonus_id,worker_ref_id,bonus_date,bonus_amount) VALUES (1,1,'2023-02-20 ',5000);
INSERT INTO bonus(bonus_id,worker_ref_id,bonus_date,bonus_amount) VALUES (2,2,'2023-06-11',3000);
INSERT INTO bonus(bonus_id,worker_ref_id,bonus_date,bonus_amount) VALUES (3,3,'2023-02-20',4000);
INSERT INTO bonus(bonus_id,worker_ref_id,bonus_date,bonus_amount) VALUES (4,1,'2023-02-20 ',4500);
INSERT INTO bonus(bonus_id,worker_ref_id,bonus_date,bonus_amount) VALUES (5,2,'2023-06-11',3500);
INSERT INTO bonus(bonus_id,worker_ref_id,bonus_date,bonus_amount) VALUES (6,3,'2021-04-13',3600);

set identity_insert bonus off;


create table title(
title_id int identity(1,1) primary key,
worker_ref_id int default null,
worker_title varchar(25) not null,
affected_from date
FOREIGN KEY (worker_ref_id) REFERENCES worker (worker_id) ON DELETE CASCADE ON UPDATE CASCADE
);

---drop table title;
select * from title;

set identity_insert title on;
INSERT INTO title( title_id ,worker_ref_id,worker_title,affected_from) VALUES (1,1,'Manager','2023-02-20');

INSERT INTO title( title_id ,worker_ref_id,worker_title,affected_from) VALUES (2,2,'Executive','2023-02-20');

INSERT INTO title( title_id ,worker_ref_id,worker_title,affected_from) VALUES (3,8,'Executive','2023-02-20');

INSERT INTO title( title_id ,worker_ref_id,worker_title,affected_from) VALUES (4,5,'Manager','2023-02-20');
INSERT INTO title( title_id ,worker_ref_id,worker_title,affected_from) VALUES (5,4,'Asst. Manager','2023-02-20');
INSERT INTO title( title_id ,worker_ref_id,worker_title,affected_from) VALUES (6,7,'Executive','2023-02-20');
INSERT INTO title( title_id ,worker_ref_id,worker_title,affected_from) VALUES (7,6,'Lead','2023-02-20');
INSERT INTO title( title_id ,worker_ref_id,worker_title,affected_from) VALUES (8,3,'Lead','2023-02-20');

set identity_insert title off;



----Q1 Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name<WORKER_NAME>.

select first_name as WORKER_NAME from worker ;

----Q2 Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.

select distinct Department from worker ;

---Q3 Write an SQL query list of worker whose first_name contains the letter (a)

select * from worker where first_name like 'a%';

---Q4 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending

select * from worker order by  first_name ASC; 


---Q5 Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”

select * from worker where Department= 'Admin';

---Q6 Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

select * from worker where first_name like '_____h' ;

---Q7  Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.

select * from worker where salary  between 100000 and 500000 ;

---@8 Write an SQL query to print details of the Workers who joined in Feb 2021.
select * from worker where joining_date like '2021-02%';
select * from worker where year(joining_date) =2021 and month(joining_date)= 02;

---Q9 . Write an SQL query to determine the nth (say n=5) highest salary from a table.

--SELECT TOP 1 salary FROM worker ( SELECT DISTINCT TOP 5 salary FROM Worker  ORDER BY salary DESC )ORDER BY salary ASC;


select salary from worker order by salary desc;
SELECT DISTINCT salary
FROM worker E1
WHERE 5 = (
    SELECT COUNT(DISTINCT salary)
    FROM worker E2
    WHERE E2.salary >= E1.Salary
);

---@10  Write an SQL query to print details of the worker with department name HR and admin and first name contains letter “n”

select * from worker where Department in('HR','Admin') and first_name like '%n%' ;



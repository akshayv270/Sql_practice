Select city,postal_code from locations where country_id='US';


select * from employees;

select first_name,last_name from employees;

select employees.first_name from employees;

select first_name as Fname from employees;

---- where clause
---filter the selected data
select * from employees where employee_id = 110;

----where with operator---

select * from employees where employee_id > 110 ;

select * from employees where employee_id > 110 and employee_id < 118 ;

select * from employees where employee_id != 110 and employee_id != 118 ;

select * from employees where employee_id = 110  or employee_id = 112;


----NOT IN----

select * from employees where first_name NOT IN ('Bruce','David') ;



-----12-02-2024-----

----Between---
---columane between low to high-----

select * from employees where employee_id between 105 and 110 ;


select * from employees where salary between 4800 and 10000 ;


----LIKE keyword---
---columanme like 'pattern'
---- _ simgle character---
---- % multiple character---



----find last postion A character---
select * from employees where first_name like '%a';

----find starting A character---
select * from employees where first_name like 'a%';

----find A character starting point and ending point between---
select * from employees where first_name like '%a%';


----find A character starting point and ending point between---
select * from employees where first_name like 'a%';

----order by---
---- order by columanname ASC/DESC----
select * from employees order by first_name;

select * from employees order by first_name DESC;



--- 13/02/24
---Distinct---
---this keyword remove duplication on columman ----

select DISTINCT salary, first_name from employees; 


----TOP---
---Display First Top row in columman----

select TOP 5 * from employees;

select TOP 5 * from employees where employee_id > 110;


select count(*) from employees; 

select * from employees where employee_id > 1 and employee_id < 100;

select * from employees ORDER BY  salary DESC OFFSET 0 ROWS fetch  next 5 ROWS only;

select * from employees where phone_number is null;

select * from employees where phone_number is not null;

select * from departments;

select * from employees where department_id = 2;

select * from employees where department_id in (6,10);

select * from employees where department_id in (select department_id from departments where department_name in ('IT','Marketing'));

select * from jobs; 
select * from employees where job_id in
(select job_id from jobs where job_title in ('Accountant','Marketing Manager'));


select * from employees where job_id in
(select job_id from jobs where min_salary between 2000 and  5000 );


select * from employees where job_id in
(select job_id from jobs where min_salary between 2000 and  5000 and job_title='programmer' );


---AGGREGATE Function

/*
 max
 min
 sum
 count
 avg
*/

select COUNT(employee_id) from employees;

select min(employee_id),max(employee_id) from employees;

select min(salary),max(salary) from employees;


select sum(salary),avg(salary) from employees;




---group by---

select department_id, count(employee_id) from employees group by department_id;	

---having--- only use aggriget function
select department_id, count(employee_id) from employees group by department_id having count(employee_id) > 5;









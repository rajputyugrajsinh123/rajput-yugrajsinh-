create schema worker;
use worker;
create table workers

(
workar_id int not null unique,
first_name varchar(25) not null,
last_name varchar(25) not null,
salary int not null,
joining date not null,
department_int varchar(25)not null 
);

insert into workers values(1,'monika','arora',100000,'2014/02/20 09:00','hr');
insert into workers values(2,'nharika','varma',80000,'2014/06/11 09:00','admin');
insert into workers values(3,'vishal','singhal',300000,'2014/02/20 09:00','hr');
insert into workers values(4,'amitabh','singh',500000,'2014/02/20 09:00','admin');
insert into workers values(5,'vivek','bhati',500000,'2014/06/11 09:00','admin');
insert into worker values(6,'vipul','diwan',200000,'2014-06-11 09:00:00','account');
insert into workers values(7,'satish','kumar',75000,'2014/01/20 09:00','account');
insert into workers values(8,'geetika','chauhan',90000,'2014/04/11 09:00','admin');

alter table worker modify joining datetime;  

select department_int,max(salary) from wor group by department_int having max(salary)>100000 order by 2;
-- Q9 Write an SQL query to print the name of employees having the highest salary in each department. 
select department_int,count(*) as number_people from workers group by department_int;
-- Q8  Write an SQL query to show all departments along with the nmber of people in there. 

select department_int, count(*) as number_of_pepole from worker group by department_int having count(*) < 5;
 -- Q7 Write an SQL query to fetch the departments that have less than five people in them

select * from worker order by 6 desc;
-- Q 6 Write an SQL query to show the top 6 records of a table.

select first_name , last_name , count(*) from worker group by first_name , last_name having count(*);
-- Q5 Write an SQL query to fetch duplicate records having matching data in some fields of a table. 

select * from worker where salary between 50000 and 100000;
-- Q4 Write an SQL query to print details of the Workers whose SALARY lies between.1

select * from worker where first_name like '_____h' and length(first_name) = 6;
-- Q3 Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabet

select * from worker where first_name in ('vipul','satish');
-- Q2 Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table

select * from worker order by first_name asc
-- Q1 Write an SQL query to print all Worker details from the Worker table order by FIRST_NA















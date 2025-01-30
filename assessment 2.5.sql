create schema yug_1;
create table assessement2
(
stdid int not null unique,
stdname varchar(30) not null,
sex varchar(1) not null, 
percentage decimal(5,2) not null,
sclass int not null,
sce varchar(1) not null,
stream varchar(10)not null,
dob date not null
);


describe assessement2;

insert into assessement2 value(1001,'surekha joshi','f',82.0,12,'A','science','1989-08-03');
insert into assessement2 value(1002,'maahi agarwal','f',56.0,11,'c','commerce','2008-11-23');
insert into assessement2 value(1003,'sanam varma','m',59.0,11,'c','commerce','2006-06-29');
insert into assessement2 value(1004,'ronit kumar','m',63.0,11,'c','commerce','1997-11-05');
insert into assessement2 value(1005,'dipesh pulkit','m',78.0,11,'b','science','2003-09-14');
insert into assessement2 value(1006,'janavi puri','f',60.0,11,'b','commerce','2008-11-07');
insert into assessement2 value(1007,'sanam kumar','m',23.0,12,'f','commerce','1998-03-08');
insert into assessement2 value(1008,'sahil saras','m',56.0,11,'c','commerce','2008-11-07');
insert into assessement2 value(1009,'akshra agarwal','f',72.0,12,'b','commerce','1996-01-10');
insert into assessement2 value(1010,'stuti mishra','f',39.0,11,'f','science','2008-11-23');
insert into assessement2 value(1011,'harsh agarwal','m',42.0,12,'c','science','1998-03-08');
insert into assessement2 value(1012,'nikunj agarwal','m',49.0,12,'c','commerce','1998-06-28');
insert into assessement2 value(1013,'akriti saxena','f',89.0,12,'A','science','2008-11-23');

-- Q 1 To display all the records form STUDENT table;
select * from assessement2;

-- Q 2 To display any name and date of birth from the table STUDENT.
select stdname,dob from assessement2;

-- Q 3 To display all students record where percentage is greater of equal to 80 FROM student table. 
select * from assessement2 where percentage >=80;

-- Q 4 To display student name, stream and percentage where percentage of student is more than 80.
select stdname,stream,percentage from assessement2 where percentage>80;
 
-- Q 5 To display all records of science students whose percentage is more than 75 form student table. 
select * from assessement2 where stream = 'science' and percentage >75;
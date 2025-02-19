create table company
(
companyid int primary key,
compamyname varchar(45),
street varchar(45),
city varchar(45),
state varchar(2),
zip varchar(10)
);
 drop table company;
describe company; 

insert into company value(001,'WEPRO','devlop','vadodara','gj','office');
insert into company value(002,'amezon','wed devlop','mumbai','mh','office');
insert into company value(003,'adani','data analysis','ahmadabad','gj','office');
insert into company value(004,'mahinadra tech','ctis','surat','gj','office');
insert into company value(005,'flipkart','data analysis','rajkot','gj','office');

select * from company;

-- Q5 In the Company table, the statement that changes the name of “Urban
-- // Outfitters, Inc.” to “Urban Outfitters” .
update company 
set compamyname = 'yug only one' where companyid =001;

-- // Q1 Statement to create the Contact table 

create schema statement;
drop table contact;
    
create table contact
(
contactid int primary key ,
companyid int not null,
firstname varchar(50),
lastname varchar(50),
street varchar(45),
city varchar(45),
state varchar(2),
zip varchar(10),
phonenumber varchar(15),
email varchar(100),
foreign key contact(companyid)references company(companyid)
);

describe contact;

insert into contact value(1,001,'vaybhav','mahte','devlop','vadodara','gj','office','7898743874','vaybhavmahta190@gamil,com');
insert into contact value(2,002,'bhavin','suthar','wed devlop','mumbai','mh','office','9909745328','bhavinsuthar189@gamil.com');
insert into contact value(3,003,'manish','bariya','data analysis','ahmadabad','gj','office','8980542234','manishbariya1@gamil.com');
insert into contact value(4,004,'mehulsinh','rathod','ctis','surat','gj','office','998982134','mehulsinhrathod109@gamil.com');
insert into contact value(5,005,'rajveersinh','rajput','data analysis','rajkot','gj','office','8973433423','rajveersingrajput100@gamil.com');

select * from contact;



-- Q2 Statement to create the Employee table 
drop table employee;

create table employee
(
employeeid int primary key,
firstname varchar(25)not null,
lastname varchar(25)not null,
salary int not null,
hiradate varchar(25)not null,
jobtitle varchar(25)not null,
email varchar(100)not null,
phone varchar(25)not null,
contactemployeesid int ,
foreign key employee(Contactemployeesid)references Contactemployees(Contactemployeesid)
);


insert into employee valueS(1,'vaybhav','mahte',100000,'2014-09-12','hr','vaybhavmahta190@gamil,com','7898743874',01);
insert into employee valueS(2,'bhavin','suthar',20000,'2015-08-18','admina','bhavinsuthar189@gamil.com','9909745328',02);     
insert into employee valueS(3,'manish','bariya',70000,'2014-04-17','accountatn','manishbariya1@gamil.com','8980542234',03);
insert into employee valueS(4,'mehulsinh','rathod',950000,'2016-05-11','hr','mehulsinhrathod109@gamil.com','998982134',04);
insert into employee valueS(5,'rajveersinh','rajput',750000,'2017-08-12','admina','rajveersingrajput100@gamil.com','8973433423',05);


select * from employee;

-- Q4 In the Employee table, the statement that changes Lesley Bland’s phone number
-- // to 215-555-8800 

update employee 
set phone = '9909721124' where employeeid =1;

-- Q3 Statement to create the ContactEmployee table
-- // HINT: Use DATE as the datatype for ContactDate. It allows you to store the
-- // date in this format: YYYY-MM-DD (i.e., ‘2014-03-12’ for March 12, 2014). 
drop table contactemployees;
create table ContactEmployees
(
Contactemployeesid int primary key,
contactid int not null,
employeesid int not null,
ContactDate date,
description varchar(25)
);

alter table ContactEmployees modify ContactDate varchar(25) ;

describe ContactEmployees;

insert into ContactEmployees value(01,1,001,'2014-09-12','hr');
insert into ContactEmployees value(02,2,002,'2013-05-14','accountant');
insert into ContactEmployees value(03,3,003,'2017-04-15','admina');
insert into ContactEmployees value(04,4,004,'2015-07-16','admina');
insert into ContactEmployees value(05,5,005,'2005-02-13','accountant');

select * from contactemployees;


-- Q6 In ContactEmployee table, the statement that removes Dianne Connor’s contact
-- // event with Jack Lee (one statement).
delete from ContactEmployee where 
employee_id = (select employee_id from employees where first_name = 'Dianne' and last_name = "Connor's" ) and 
employee_id = (select employee_id from employees where first_name = 'Jack' and last_name ='Lee');


-- // 7) Write the SQL SELECT query that displays the names of the employees that
-- // have contacted Toll Brothers (one statement). Run the SQL SELECT query in
-- // MySQL Workbench. Copy the results below as well. 
select e.firstname,e.lastname from contact e join company c on e.companyid = c.companyid where compamyname = 'WEPRO';


-- Q8 What is the significance of “%” and “_” operators in the LIKE statement? 
-- // In SQL, the LIKE operator is used to search for a specified pattern in a column. The "%” and "_" operators are wildcards that play a key role in pattern matching.

-- // % (Percent Sign):

-- // Represents zero or more characters in the pattern.
-- // For example, WHERE column_name LIKE 'A%' will match any value that starts with the letter "A" (e.g., "Apple", "Ant", "Aardvark").
-- // It can also be used at the beginning, end, or middle of a string. For example:
-- // 'A%' — Starts with "A".
-- // '%A' — Ends with "A".
-- // '%A%' — Contains "A" anywhere in the string.
-- // _ (Underscore):

-- // Represents exactly one character in the pattern.
-- // For example, WHERE column_name LIKE 'A_' will match values that start with "A" and are followed by exactly one character (e.g., "Ax", "A1").
-- // You can use it for more specific matching, where you want to ensure the number of characters fits a pattern.
-- // Examples:
-- // WHERE name LIKE 'J_n': This will match any name that starts with "J", has any single character in the middle, and ends with "n" (e.g., "Jon", "Jan").
-- // WHERE name LIKE '%_n': This will match names that end with "n" and have at least one character before it (e.g., "John", "Anne").
-- // These operators give you flexibility when performing partial string searches.

-- Q9 Explain normalization in the context of databases
-- // Normalization in databases refers to the process of organizing the data within a database to reduce redundancy and dependency. The goal of normalization is to ensure that the data is stored efficiently, minimizing the chances of anomalies (such as update, insert, and delete anomalies) while maintaining data integrity.

-- // Key Goals of Normalization:
-- // Eliminate Redundant Data: Redundant or duplicated data can lead to inconsistencies and waste of storage space.
-- // Ensure Data Integrity: By organizing the data properly, you can maintain consistency across the database.
-- // Simplify Queries: Normalized data can simplify complex queries by breaking them down into smaller, more manageable pieces.
-- // Normal Forms:
-- // Normalization typically follows a set of rules called normal forms. There are several normal forms (NF), each building upon the previous one. The most common are:

-- // First Normal Form (1NF):

-- // Eliminate duplicate columns: Each table must have unique rows, and each column must contain atomic (indivisible) values.
-- // Atomicity: A field should not contain multiple values (e.g., a list of phone numbers in one field should be separated into individual rows).
-- // Example: A table with columns ID, Name, and Phone Numbers (where multiple phone numbers are stored in the same field) violates 1NF. It should be split into separate rows for each phone number.

-- // Second Normal Form (2NF):

-- // The table must first meet 1NF.
-- // Eliminate partial dependencies: All non-key attributes must depend on the entire primary key. If there are composite keys (a primary key made up of multiple columns), attributes should depend on the full key, not just part of it.
-- // Example: If a table has a composite primary key (StudentID, CourseID), but the StudentName is dependent only on StudentID, this would violate 2NF. You would move StudentName to a separate table where StudentID is the primary key.

-- // Third Normal Form (3NF):

-- // The table must first meet 2NF.
-- // Eliminate transitive dependencies: Non-key attributes must not depend on other non-key attributes.
-- // Example: If a table has columns StudentID, CourseID, InstructorName, and InstructorPhone, where InstructorPhone is dependent on InstructorName, this creates a transitive dependency. You should separate InstructorName and InstructorPhone into a different table.

-- // Boyce-Codd Normal Form (BCNF):

-- // A stricter version of 3NF. It states that every determinant (a column or set of columns that determines the value of another column) should be a candidate key.
-- //Example: If a table has a non-candidate key determining other attributes (e.g., DepartmentID determines DepartmentName), it might violate BCNF.

-- // Fourth Normal Form (4NF):

-- // Deals with multi-valued dependencies.
-- // It requires that no table should have two or more independent multi-valued facts about an entity.
-- // Example: A table with StudentID, Subject, 
-- // and Teacher could violate 4NF if a student can take multiple subjects with different teachers,
-- // requiring splitting into separate tables.

-- // Benefits of Normalization:
-- // Consistency: Reduces data duplication, ensuring updates are made in only one place.
-- // Efficiency: Reduces the storage required by eliminating redundant data.
-- //Prevention of Anomalies: Helps in avoiding insert, update, and delete anomalies, 
-- // which can occur when modifying data in non-normalized tables.
-- // Trade-offs:
-- // While normalization improves data integrity, it can sometimes lead to performance issues, 
-- // especially when there are many joins required for queries due to the data being spread across multiple tables. 
-- // In certain cases, denormalization (the process of combining tables) might be done to optimize performance for read-heavy workloads.

-- // In summary, normalization is about structuring the database to ensure logical and efficient storage, maintaining data integrity,
-- // and making future data operations cleaner and easier to manage.




-- // By messaging ChatGPT, you agree to our Terms and have rea


-- Q10 What does a join in MySQL mean? 

-- // In MySQL, a JOIN is a way to combine rows from two or more tables based on a related column between them. It's often used when you need to retrieve data from multiple tables that are logically connected.

-- // There are different types of joins, each serving a different purpose:

-- // 1.INNER JOIN: Returns only the rows where there is a match in both tables.
-- // 2 LEFT JOIN (or LEFT OUTER JOIN): Returns all rows from the left table and matched rows from the right table. If there’s no match, 
-- // the result will contain NULL values for columns from the right table.
-- // 3 RIGHT JOIN (or RIGHT OUTER JOIN): Returns all rows from the right table and matched rows from the left table. 
-- // If there's no match, the result will contain NULL values for columns from the left table.
-- // 4 FULL JOIN (or FULL OUTER JOIN): Returns all rows when there is a match in either the left or right table.
-- //  MySQL doesn't directly support FULL OUTER JOIN, but you can simulate it using a combination of LEFT JOIN and RIGHT JOIN with UNION.
-- // 5 CROSS JOIN: Returns the Cartesian product of two tables, meaning it combines every row from the first table with every row from the second table. 
-- // This is usually used for generating combinations of data.

-- Q 11 What do you understand about DDL, DCL, and DML in MySQL?

-- // In MySQL, DDL, DCL, and DML represent different categories of SQL commands used to manage and manipulate databases. 
-- // Here's what each of them refers to:
-- // 1  DDL (Data Definition Language)
-- // DDL deals with the structure (schema) of the database itself. 
-- // It is used to define, modify, and delete database objects like tables, indexes, and schemas. 
-- // The key commands in DDL are:
-- // CREATE: Used to create new database objects (tables, views, indexes).
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100)
);
-- // ALTER: Used to modify an existing database object, such as changing a table's structure.
ALTER TABLE employees ADD COLUMN salary DECIMAL(10, 2);
-- // DROP: Used to delete database objects.
DROP TABLE employees;
-- // TRUNCATE: Used to delete all rows from a table without removing the table itself.
TRUNCATE TABLE employees;
-- // 2 DML (Data Manipulation Language)
-- // DML deals with the manipulation of data stored in the database. 
-- // It includes commands that allow you to retrieve, insert, update, and delete data in the tables. 
-- // The main DML commands are:
-- // SELECT: Used to retrieve data from one or more tables.
SELECT * FROM employees WHERE position = 'Manager';
-- // INSERT: Used to add new rows of data to a table.
INSERT INTO employees (id, name, position, salary) 
VALUES (1, 'John Doe', 'Manager', 75000);
-- // UPDATE: Used to modify existing data in a table.
UPDATE employees SET salary = 80000 WHERE id = 1;
-- // DELETE: Used to remove data from a table.
DELETE FROM employees WHERE id = 1;
-- // 3 DCL (Data Control Language)
-- // DCL is used to control access to data in the database. 
-- // It defines permissions and rights for users, ensuring proper security and access management. 
-- // The main DCL commands are:
-- // GRANT: Used to give specific privileges (like SELECT, INSERT, UPDATE) to a user on database objects.
GRANT SELECT, INSERT ON employees TO 'user1'@'localhost';
-- // REVOKE: Used to remove specific privileges from a user.
REVOKE INSERT ON employees FROM 'user1'@'localhost';
-- // In summary:

-- // DDL: Defines the database structure (e.g., CREATE, ALTER, DROP).
-- // DML: Manipulates the data in the database (e.g., SELECT, INSERT, UPDATE, DELETE).
-- // DCL: Controls access to data in the database (e.g., GRANT, REVOKE).

-- Q12 What is the role of the MySQL JOIN clause in a query, and what are some
-- // common types of joins?
-- // The JOIN clause in MySQL is used to combine rows from two or more tables based on a related column between them. 
-- // It's a powerful tool for working with multiple tables, allowing you to retrieve more complex datasets in a single query. 
-- // Without joins, you’d have to run multiple queries and then manually combine the data.
-- // Here are the common types of joins in MySQL:
-- // 1. INNER JOIN:
-- // This is the most commonly used join. It returns rows when there is at least one match in both tables.
-- // If there’s no match, those rows are excluded from the result set.
SELECT * FROM employees
INNER JOIN departments ON employees.department_id = departments.id;
-- // 2. LEFT JOIN (or LEFT OUTER JOIN):
-- // This returns all the rows from the left table (the first table), along with matched rows from the right table (the second table).
 -- // If there’s no match, NULL values are returned for columns from the right table.
SELECT * FROM employees
LEFT JOIN departments ON employees.department_id = departments.id;
-- // 3.RIGHT JOIN (or RIGHT OUTER JOIN):
-- // This is similar to the LEFT JOIN, but it returns all the rows from the right table and the matching rows from the left table. 
-- // If there’s no match, NULL values are returned for columns from the left table.
SELECT * FROM employees
RIGHT JOIN departments ON employees.department_id = departments.id;
-- // 4.FULL JOIN (or FULL OUTER JOIN):
-- // This is not natively supported in MySQL, but it's available in other SQL databases like PostgreSQL. 
-- // It returns rows when there is a match in one of the tables. 
-- // It combines the result of both LEFT JOIN and RIGHT JOIN.
-- // If a row in one table has no match in the other table,
 -- // the result will still include that row, with NULL values for the columns of the table without a match.
 -- // 5  CROSS JOIN:	
 -- // This returns the Cartesian product of two tables,
 -- // meaning it combines each row from the first table with every row from the second table. 
-- // It's usually not very useful unless you specifically need this kind of result, as it can create very large result sets.
SELECT * FROM products
CROSS JOIN suppliers;
-- // 6.SELF JOIN:
-- // This is a special type of join where a table is joined with itself. 
-- // You often use this when you have hierarchical data in the same table, like employees and managers.
SELECT A.name AS Employee, B.name AS Manager
FROM employees A
LEFT JOIN employees B ON A.manager_id = B.id;

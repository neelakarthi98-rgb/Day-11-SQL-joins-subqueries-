create database mini40_db;
use mini40_db;
create table employee(emp_id int primary key,emp_name varchar(50),department_name varchar(50),performance_score decimal(10,2));
insert into employee values(101,'priya','HR',3.5),(102,'Ram','HR',4),(103,'Ashok','IT',3),(104,'vino','finance',4),(105,'Uma','IT',4.5),(106,'krish','Finance',5);
select * from employee;
select * from employee where performance_score>(select avg(performance_score)from employee);
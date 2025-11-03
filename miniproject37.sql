create database mini37_db;
use mini37_db;
create table employee(emp_id int primary key,name varchar(50),dept_id int,salary decimal(10,2),foreign key(dept_id)references department(dept_id));
create table department(dept_id int primary key,dept_name varchar(50));
insert into department(dept_id,dept_name)values
						(1,'HR'),
                        (2,'IT'),
                        (3,'finance'),
                        (4,'marketing'),(5,'logistics');
insert into employee(emp_id,name,dept_id,salary)values(101,'Arjun',2,45000),
(102,'Priya',1,52000),
(103,'Karthick',2,40000),
(104,'Divya',3,60000),
(105,'sneha',4,70000);
select* from department;
select * from employee;
select e.emp_id,e.name,d.dept_name from employee e inner join department d on e.dept_id=d.dept_id;
select d.dept_name,e.name from department d left join employee e on d.dept_id=e.dept_id;
select d.dept_name,avg(e.salary) as avg_salary from department d join employee e on d.dept_id=e.dept_id group by d.dept_name;




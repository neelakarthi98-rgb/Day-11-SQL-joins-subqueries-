create database mini39_db;
use mini39_db;
create table product(product_id int primary key,product_name varchar(50));
create table sales(customer_id int primary key,customer_name varchar(50),product_id int,sales decimal(10,2),foreign key(product_id) references product(product_id));
insert into product values(001,'product A'),(002,'Product B'),(003,'product C'),(004,'product D');
select * from product;
insert into sales values(101,'priya',001,200),(102,'Anu',001,300),(103,'Uma',002,400),(104,'Ramya',002,100),(105,'chris',003,300),(106,'Ashok',001,200),(107,'Vino',004,600),(108,'Ram',003,500);
select * from sales;
select p.product_name,sum(s.sales) as total_sales_revenue from product p join sales s on p.product_id=s.product_id group by p.product_name;

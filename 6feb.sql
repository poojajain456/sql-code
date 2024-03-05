create database  test;
use test;
-- deafult 
drop table employee;
create table employee(id int, name varchar(20) default "pooja");

desc employee;
insert into employee (id) value(11);
select*from employee;

-- not null 
drop table employee;
create table employee(id int not null default 0,
name varchar(20));
insert into employee (name) values("abc");
select*from employee;

drop table employee;
create table employee (id int unique,
name varchar(20));

drop table employee;
create table employee(id int primary key, name varchar(20));
insert into employee(id,name) values(null, "abc");
select*from employee;

#primary key
drop table employee;
create table employee(id int, name varchar(20),
constraint pk_key primary key (id,name));

desc employee;
insert into  employee(id, name) values(10, "abc");
select*from employee;

-- check 

drop table employee;
create table employee(id int, name varchar(20),
constraint  emp_chk_const_id check (id>50));

insert into employee(id , name)values(51, "abc122");
select * from employee;

-- table regex
create table regex (emp_id int, 
select*from regex;


# foregin key
drop table customer;
create table customer(cid int primary key,
name varchar(20), orderid int,
foreign key (orderid) references orders (oid) );

drop table orders;
create table orders (oid int unique, address varchar(20));

#dml==> insert, update, delete
#ddl==> create, deop, truncate,alter;

show tables;
drop table customer;
select*from orders;
insert into orders values (10,"abc");

truncate table orders;

-- alter (ddl)  7 feb

show databases;
use employees;
drop table emp;
create table emp (id int ,phone varchar(20) unique, address varchar(20));
desc emp;
alter table emp 
rename column  phone to companies;
select*from emp; 

alter table emp
add constraint compay_uk unique (address);

desc emp;

alter table emp
drop constraint compay_uk;
desc emp;

alter table emp 
change address newcity char(10);

desc emp;

drop table company;
create table company (id int, fullname varchar(20) >5 , 
email_address varchar(20), company_name varchar(20)  check (company=reverse);
desc company;

-- 8 feb 

show databases;
use sakila;
show tables;
drop table employees;
create table employees(id int primary key auto_increment,
dept varchar(20), salary int);

insert into employees (dept, salary) values ("hr",200),
("hr",300), ("hr",100),
("marketing",70), ("marketing",50),
("marketing",200),("marketing",400),
("dsa",150),("dsa",120),
("dsa",40),("dsa",90),("dsa",500);

select*from employees;
select sum(salary) from employees;

select dept, sum(salary) from employees
group by dept;

-- 
select id,dept,salary, sum(salary) over(),
min(salary) over()
from employees;

select id,dept,salary, sum(salary) over(),
avg(salary) over()
from employees;

select id,dept,salary, sum(salary) over(),
avg(salary) over(),
avg(salary) over(partition by dept)
from employees;

select*from employees;

select id, dept, salary,
avg(salary) over(partition by dept),
sum(salary) over (partition by dept order by salary)
from employees;

select id, dept, salary,
sum(salary) over(partition by dept) deptTotal,
sum(salary) over (partition by dept order by salary) as rollingtotal
from employees;

select
	id,
    dept,
    salary,
    avg(salary)over(partition by dept) as dept_avg,
    avg(salary) over() as comapany_avg
from employees;

select
	id,
    dept,
    salary,
    min(salary)over(partition by dept order by salary desc) as dept_min,
    max(salary) over(partition by dept) as comapany_min
from employees;

# rank , dense rank and rownumber

use sakila;
show tables;
drop table employees;
create table employees(id int primary key auto_increment,
dept varchar(20), salary int);

insert into employees (dept, salary) values ("hr",200),
("hr",300), ("hr",100),
("marketing",70), ("marketing",50),
("marketing",200),("marketing",400),
("dsa",150),("dsa",120),
("dsa",40),("dsa",90),("dsa",500),
("hr",200),("hr",200),("hr",50),("marketing",200);

select*from employees;
select id, dept, salary,
rank() over(),
rank() over(partition by dept order by salary desc)
from employees;


select*from employees;
select id, dept, salary,
rank() over(),
rank() over(partition by dept order by salary desc),
dense_rank() over(partition by dept order by salary desc)
from employees;

select*from employees;
select id, dept, salary,
rank() over(partition by dept order by salary desc),
dense_rank() over(partition by dept order by salary desc),
row_number() over(partition by dept order by salary desc)
from employees;

select id, dept, salary,
ntile(4) over(partition by dept)
from employees;

select id, dept, salary,
first_value(salary) over(partition by dept order by salary desc)
from employees;


-- lag and lead
select id, dept, salary,
lag(salary) over(partition by dept order by salary desc)
from employees;

select id, dept, salary,
lead(salary) over(partition by dept order by salary desc)
from employees;

-- 176, 180,196,570 leetcode















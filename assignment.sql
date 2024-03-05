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


show databases;
use employees;
show tables;
drop table sales;
CREATE TABLE sales( 
	sales_employee VARCHAR(50) NOT NULL, 
	fiscal_year INT NOT NULL, 
    sale DECIMAL(14,2) NOT NULL, 
    PRIMARY KEY(sales_employee, fiscal_year)
);

INSERT INTO sales(sales_employee, fiscal_year, sale)

VALUES('Bob',2016,100),
	('Bob',2017,150),
	('Bob',2018,200),
	('Alice',2016,150),
	('Alice',2017,100),
	('Alice',2018,200),
	('John',2016,200),
	('John',2017,150),
	('John',2018,250);
    
select *from sales;

select sales_employee, fiscal_year,sale,
avg(sale) over() from sales;

select sales_employee, fiscal_year,sale,
avg(sale) over(),
avg(sale) over(partition by fiscal_year)
 from sales;
 
select sales_employee, fiscal_year,sale,
avg(sale) over(),
avg(sale) over(partition by sales_employee)
 from sales;
 
 
 
 




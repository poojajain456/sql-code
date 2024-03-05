-- transactions
-- logical execution of task
-- data satate consistenct/ tcl commands

-- rollback,commit,savepoint
-- comit ==> permanantely store the chnages/ server in the database
-- savepoint


use sakila;
drop table test;
create table test(id int, name varchar(20));
insert into test values(10,"hey"),(20,"abc"),(30,"def");
select*from test;

update test set name="tushar"where id=10;
select @@autocommit;

select *from test;

set autocommit=0;

select @@autocommit;
select*from test;

update test set name="aman" where id=10;
commit;

select*from test;

insert into test values(31,"yash");
update test set name ="raj" where id=30;
select*from test;
rollback;     -- to discard commit changes


start transaction;
select  @@autocommit;

update test set name="pushpa" where id=20;
select*from test;

create table xyz1(id int);

-- commit ==> sare taansactions parmananet commit karte hai 
-- rollback --> sare transactions discard kar deta hai
-- savepoint--> kisi specific point ke liye 

-- now calucalte second highest salar
drop table emp;
create table emp (id int, name varchar(20), salary int);
insert into emp values (1,"raj",30000), (2,"aman", 25000),(3,"sumit",40000),(4,"amit",55000),
(5,"atul",42000),(6,"deepak",43000),(7,"shubh",20000);

select*from emp;
select max(salary) from emp
where salary <(select max(salary) from emp);

select * from
(select id,name,salary, 
dense_rank() over (order by salary desc) as 'salary_rank' from emp)
as xyz where salary_rank=2;

select id, name, salary ,(select avg(salary) from emp)
from emp;







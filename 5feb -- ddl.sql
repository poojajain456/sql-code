use sakila;
create table test(id float(5));
insert into test values(10.4533323123);
select*from test;

create table employee(id int, name varchar(20));
insert into employee values(10,"pooja");

insert into employee(name) values(13,"pooja");
select*from employee;

insert into employee (id,name) values(15,"ajay"),
(20,"aman"), (21,"avi");
select*from employee;

#DML==> dalta manipulation language
# update

select * from employee;
update employee set name="Raj" where id =10;

select*from employee;
delete from employee where id=10;


-- delete all the items from id 12 to 15 and null id's
-- subquery==> a query inside another query

use sakila;
select*from film_actor;

select *from city;

use  employees;
select*from dept_emp;

select dept_no from dept_emp
where emp_no=10002;

select * from dept_emp where dept_no='d005';

select * from dept_emp where 
dept_no=(select dept_no from dept_emp where emp_no=10005);

-- get all the info of the user where the joining year of the user is same as the joining year of the emp no 100039

select year (from_date) from dept_emp
where emp_no=10039;

select*from dept_emp
where year(from_date)=1998;

select*from dept_emp
where year(from_date)=(
	select year (from_date) from dept_emp
		where emp_no=10039);
        
-- get the emp_no dept_no and the month from dept_emp table where the month matches with the month of emp_no 10039
select month(from_date) from dept_no;
-- thr total no of the mps who has the matching month as same the emp_no 10039
-- now get the dept_no for the emps where the no of emps working is grater than the of person woring in dept_no10039

select dept_no, count(*)
from dept_emp group by dept_no;

select dept_no, count(*)
from dept_emp group by dept_no
having count(*)>
(select count(*)
from dept_emp where dept_no="d001" group by dept_no);

select dept_no
from dept_emp where emp_no= 10001 or emp_no= 10002;

select * from dept_emp where dept_no=
(select dept_no
from dept_emp where emp_no=10001 or emp_no=10002);


create table new123(id int,name varchar(20), salary int);
insert into new123 values(10,"abc",990),(11,"japan",100),
(12,"xyz",90),(13,"yash",1000),(14,"lisa",340),
(15,"joker",10);
select salary

select salary from new123 where id=10 or id=11;

select*from new123
where salary>any
(select salary from new123 where id=10 or id=




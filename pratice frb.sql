-- i need to get payment is , cutomer id and amount from the payment table where payment should be grater than the payment id 1.
use sakila;
select *from payment;

select amount from payment
where payment_id=1;

select payment_id, customer_id, amount from payment
where amount>2.99;

select payment_id, customer_id, amount from payment
where amount>(select amount from payment
where payment_id=7);


-- i need to get payment _id and amt. from all those user where the amt. should  be  graterer
-- than amount of payment id 1 and payment id 2

select amount from payment
where payment_id=1 or payment_id=2;

select payment_id, amount from payment
where amount> all (select amount from payment
where payment_id=1 or payment_id=2);

select payment_id, amount from payment
where amount> any (select amount from payment
where payment_id=1 or payment_id=2);


select payment_id,amount
from payment where
amount in(select amount from payment
where payment_id in(1,2));

select payment_id,amount
from payment where
amount >any(select amount from payment
where payment_id in(1,2));

select payment_id,amount
from payment where
amount <= any(select amount from payment
where payment_id in(1,2));

select payment_id,amount
from payment where
amount =any(select amount from payment
where payment_id in(1,2));

select payment_id,amount
from payment where
amount >all(select amount from payment
where payment_id in(1,2));

select payment_id,amount
from payment where
amount <all(select amount from payment
where payment_id in(1,2));

drop table emp;
create table emp(id int, name varchar(20), salary int);
insert into emp values (1,"abc",200),(2,"def",300),(3,"ghi",400);
select*from emp;

select avg (salary) from emp;

select  id, name, salary,(select avg(salary) from emp)
from emp;

select id, name , salary,
avg(salary)over(partition by name order by salary desc);

select max(salary) from emp where salary<
from emp;


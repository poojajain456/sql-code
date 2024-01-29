show  databases;
use sakila;
show tables;
describe actor;
select*from actor;
/* like operator*/
select *from actor where first_name like "n%";
select *from actor where first_name like "%n";
select *from actor where first_name like "%KE%";

select *from actor where first_name like "__A%";

/*not like op*/
select *from actor where first_name not like "__A%";

/*logical operator*/
/*and op. & or op.*/

select *from actor
where first_name="NICK" and actor_id=44;

select*from actor
where first_name="NICK" or actor_id=44;

/*sorting*/

use sakila;
select*from customer
order by first_name;

/*sorting in decending order*/
select*from customer
order by store_id desc , first_name;

select*from customer
order by store_id desc;

select*from customer
order by 3;

select customer_id,first_name
from customer order by 2;

/* string function*/
/*lower*/
select first_name ,lower(first_name) from customer;
/*concat*/
/*select first_name,last_name concat (first_name, '' ,last_name)from customer;*/

/*lemgth*/
select "hey" from customer;
select length("hey") from dual;





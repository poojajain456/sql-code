show databases;
use sakila;

show tables;
describe actor;
select*from actor;

select*from actor where actor_id<3;
select*from city
where city_id > country_id+5;

select*from actor
where first_name="NICK";

select*from actor where actor_id between 2 and 5;
select first_name from actor where actor_id between 2 and 5;

select*
from actor
 where actor_id not between 2 and 5;
 
 select*
 from actor 
 where actor_id in (2,4,8,11);
 
 select*
 from actor 
 where actor_id not in (2,4,8,11);
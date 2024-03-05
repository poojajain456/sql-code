use sakila;

-- cte 

with xyz as 
	(select *from actor)
    
select *from xyz;


with xyz as
(select first_name,count(*) from actor
group by first_name)

select *from xyz;

with xyz as
(select first_name,count(*) as newcount from actor
group by first_name)

select  avg (newcount) from xyz;

-- cte table ka data physical table m store nhi hota hai
--  temporary table ka data physical table m store hota hai
use sakila;
with xyz as
(select actor_id, first_name from actor)

select *from xyz join film_actor
where(xyz.actor_id= film_actor. actor_id);

with xyz as
(select actor_id, first_name from actor),
abc as (select*from film_actor where actor_id>5)

select*from xyz join abc
where (xyz.actor_id=abc.actor_id);


with xyz(aid,fname) as
(select actor_id, first_name from actor),
abc as (select actor_id, count(*) from
film_actor group by actor_id)

select*from xyz;

-- indexes

drop database test;
create database test;
use test;

create table regex(id int primary key auto_increment,
name varchar(20), salary int);

insert into regex values(1,"tushar",10),(2,"aman",20);
desc regex;

select*from regex;

create index regex_name on regex(name);
show indexes from regex;

explain select *from regex where id=2;

explain select *from regex where salary=20;

drop index regex_name on regex;
show indexes from regex;

-- composite index

create index regex_c on regex(name , salary);
explain select*from regex where salary=100;

explain select*from regex where name="tushar" and salary=100;

-- invisible index
-- parameter for index- where, foreign key,



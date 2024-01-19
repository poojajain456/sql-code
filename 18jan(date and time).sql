use sakila;
select*from actor;
desc actor;
select curdate() from dual;
select curtime()from dual;
select now() from dual;

select last_update, adddate(last_update,1)
from actor;

select last_update,date(last_update)
from actor;

select datediff(curdate(),"2024-01-20") from dual;

select date_format(curdate(),"%Y-%M-%D") from dual;

select str_to_date(curdate(),"%Y-%M-%D") from dual;

select extract(year from curdate()) from dual;

select last_update,extract(month from last_update) from actor;

select*from address;

select count(address_id) from address;

select count(*) from address;

select count(address2) from address;

select sum(city_id) from address;

select max(city_id) from address;

select count(*) from address where district="Haryana";
select count(*) from address where district="QLD";

select district from address;
select count(distinct (district)) from address;

select district, count(*)
from address group by district;

select district, count(*), sum(city_id)
from address group by district;


select district, count(*), sum(city_id)
from address group by district
order by count(*) desc;





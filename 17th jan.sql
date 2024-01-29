/*general function  (null handling function)*/

use sakila;
select*from address;

select postal_code,length(postal_code) from address;

select * from address
where postal_code=0;

select*from address
where address2 is null;

select *from staff;
select password, ifnull(password,1000) 
email from staff;

select nullif ("abc", "abc1") from dual;

select first_name,length(first_name),
last_name,length(last_name) from actor;

select first_name,
if(length(first_name)=3,"abc", "no data")
from actor;

select first_name,
	case first_name
		when"NICK" then actor_id*10
	end
from actor;

select actor_id,first_name,
	case
		when first_name="NICK"  THEN ACTOR_ID*10
        when first_name="PENELOPE" then actor_id*15
        else actor_id
	end "new_actor_id" 
from actor

    



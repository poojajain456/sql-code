/*string function*/
use sakila;
show tables;
select concat (first_name," ", last_name) from actor;

/*substring*/
select first_name , substr(first_name,3) from actor;

select first_name , substr(first_name,-3) from actor;

select first_name , substr(first_name,2,4) from actor;

/*instr*/

select first_name,instr (first_name,"e") from actor;
/*locate*/
select first_name, locate ("e",first_name,2) from actor;

/*trim*/
select trim("      hello       ") from dual;

/*lpad*/
select first_name, lpad (first_name,5," ") from actor;

/*replace*/
select first_name, replace(first_name,"E","$") from actor;

/*mod*/
select mod(11,2) from dual;
/*ceil  ==> return uppper value*/
select ceil(11.00) from dual;
-- floor==> return bottom values
select floor(11.00) from dual;
-- round 
select round (12.501,1) from dual;

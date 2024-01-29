use employees;

select * from employees;
select*from dept_emp;

select*from dept_emp where dept_no="d005";

/*now get thode dept no who has more than  50 users in that dept */

select dept_no,count(*)
from dept_emp group by dept_no
having count(*)>50;

/* now get what is avg number of emps of each year*/
select year(from_date) from dept_emp;

select year(from_date),floor(avg(emp_no))
from dept_emp group by year(from_date);

select dept_no,year(from_date),count(*)
from dept_emp group by dept_no,year(from_date)
order by dept_no;

select*from dept_manager;

select quarter(from_date), avg(emp_no),
concat ("Quarter",avg(emp_no),"employees") as data
from dept_manager group by quarter(from_date);













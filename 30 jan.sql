use employees;
select*from employees;
select*from titles;
-- nested queries

select emp_no,first_name,last_name,hire_date,title
from employees join titles using(emp_no);

select e. emp_no,first_name,hire_date,t.title
from employees as e inner join titles t
where(e.emp_no=t.emp_no) and title="Assitant Engineer"
and hire_date> "1985-01-01";
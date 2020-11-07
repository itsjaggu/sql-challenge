select 
	e.emp_no
	,e.last_name
	,e.first_name
	,e.sex
	,s.salary
from employees e
	join salaries s on e.emp_no = s.emp_no;

select
	e.first_name
	,e.last_name
	,e.hire_date
from employees e
where extract(year from e.hire_date) = 1986;

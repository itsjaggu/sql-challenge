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

select
	dm.dept_no
	,d.dept_name
	,dm.emp_no
	,e.last_name
	,e.first_name
from dept_manager dm
join departments d on d.dept_no = dm.dept_no
join employees e on e.emp_no = dm.emp_no;

select
	de.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name
from dept_emp de
join departments d on d.dept_no = de.dept_no
join employees e on e.emp_no = de.emp_no;

select
	e.first_name
	,e.last_name
	,e.sex
from employees e
where e.first_name = 'Hercules'
	and left(e.last_name,1) = 'B';
	
select
	de.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name
from dept_emp de
join departments d on d.dept_no = de.dept_no
join employees e on e.emp_no = de.emp_no
where d.dept_name = 'Sales';

select
	de.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name
from dept_emp de
join departments d on d.dept_no = de.dept_no
join employees e on e.emp_no = de.emp_no
where d.dept_name in ('Sales', 'Development');

select
	e.last_name
	,count(*) as frequency
from employees e
group by e.last_name
order by frequency desc;







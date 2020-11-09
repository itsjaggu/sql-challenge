--Getting list of employee number, last name, first name, sex, and salary
select 
	e.emp_no
	,e.last_name
	,e.first_name
	,e.sex
	,s.salary
from employees e
	join salaries s on e.emp_no = s.emp_no;

--Getting list first name, last name, and hire date for employees who were hired in 1986
select
	e.first_name
	,e.last_name
	,e.hire_date
from employees e
where extract(year from e.hire_date) = 1986;

--Getting list of department number, department name, department manager's employee number, last name, first name
select
	dm.dept_no
	,d.dept_name
	,dm.emp_no
	,e.last_name
	,e.first_name
from dept_manager dm
join departments d on d.dept_no = dm.dept_no
join employees e on e.emp_no = dm.emp_no;

--Getting list of employee number, last name, first name, and department name
select
	de.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name
from dept_emp de
join departments d on d.dept_no = de.dept_no
join employees e on e.emp_no = de.emp_no;

--Getting list of first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"
select
	e.first_name
	,e.last_name
	,e.sex
from employees e
where e.first_name = 'Hercules'
	and left(e.last_name,1) = 'B';

--Getting list of all employees in the Sales department, including their employee number, last name, first name, and department name
select
	de.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name
from dept_emp de
join departments d on d.dept_no = de.dept_no
join employees e on e.emp_no = de.emp_no
where d.dept_name = 'Sales';

--Getting list of all employees in the Sales department and Development department, including their employee number, last name, first name, and department name
select
	de.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name
from dept_emp de
join departments d on d.dept_no = de.dept_no
join employees e on e.emp_no = de.emp_no
where d.dept_name in ('Sales', 'Development');

--Getting list of the frequency count of employee last names, i.e., how many employees share each last name, in descending order of the frequency
select
	e.last_name
	,count(*) as frequency
from employees e
group by e.last_name
order by frequency desc;
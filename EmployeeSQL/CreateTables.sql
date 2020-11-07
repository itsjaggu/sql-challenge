drop table departments;

create table departments (
	dept_no varchar(10) primary key not null
	,dept_name text
);

drop table titles;
create table titles (
	title_id varchar(10) primary key not null
	,title text
);

drop table employees;
create table employees (
	emp_no int primary key not null
	,emp_title_id varchar(10) 
	,birth_date date
	,first_name varchar(50)
	,last_name varchar(50)
	,sex varchar(1)
	,hire_date date
);

drop table dept_emp;
create table dept_emp(
	emp_no int
	,dept_no varchar(10)
);

drop table dept_manager;
create table dept_manager(
	dept_no varchar(10)
	,emp_no int
);

drop table salaries;
create table salaries(
	emp_no int
	,salary float
);

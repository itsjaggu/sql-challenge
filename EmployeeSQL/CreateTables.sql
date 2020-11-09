--Dropping table from database if exist
drop table departments;

--Creating Departments table as per data from csv file
create table departments (
	dept_no varchar(10) primary key not null
	,dept_name text
);

--Dropping table from database if exist
drop table titles;

--Creating Employee Titles table as per data from csv file
create table titles (
	title_id varchar(10) primary key not null
	,title text
);

--Dropping table from database if exist
drop table employees;

--Creating Employees table as per data from csv file
create table employees (
	emp_no int primary key not null
	,emp_title_id varchar(10) 
	,birth_date date
	,first_name varchar(50)
	,last_name varchar(50)
	,sex varchar(1)
	,hire_date date
);

--Dropping table from database if exist
drop table dept_emp;

--Creating Department Employees table as per data from csv file
create table dept_emp(
	emp_no int
	,dept_no varchar(10)
);

--Dropping table from database if exist
drop table dept_manager;

--Creating Department Managers table as per data from csv file
create table dept_manager(
	dept_no varchar(10)
	,emp_no int
);

--Dropping table from database if exist
drop table salaries;

--Creating Employee Salary table as per data from csv file
create table salaries(
	emp_no int
	,salary float
);

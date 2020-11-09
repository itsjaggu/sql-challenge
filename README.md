# Playing with SQL
This repository has following sql scripts and a Jupyter Notebook, which primarly deals with data in PostgreSQL.

### [CreateTable SQL](EmployeeSQL/CreateTables.sql)
This script creates following 6 tables in the sql database:
* departments
* titles
* employees
* dept_emp
* dept_manager
* salaries

[Entity Relationship Diagram (ERD)](EmployeeSQL/ERD.png) of these tables provide an overview of how these tables have been structured.
Raw data imported in these tables is available in [data](EmployeeSQL/data) folder in csv format.

### [DataAnalysis SQL](EmployeeSQL/DataAnalysis.sql)
This scrpit gets following data from the tables created using above scripts:
1. List of following details of each employee: employee number, last name, first name, sex, and salary.

2. first name, last name, and hire date for employees who were hired in 1986.

3. List of manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List of department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"

6. List of all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List of all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

### [Sql Alchemy Jupyter Notebook](EmployeeSQL/sqlalchemy.ipynb)
This notebook performs following 2 analysis on the Employees data:
1. Creates a histogram to visualize the most common salary ranges for employees.
2. Creates a bar chart of average salary by employee title.
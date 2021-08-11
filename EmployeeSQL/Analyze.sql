-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no,e.last_name,e.first_name,e.sex,s.salary
from 
	"Employees" as e
join
	"Salaries" as s
on  
	e.emp_no=s.emp_no;
	
	
-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name,last_name,hire_date
from
	"Employees"
where
	extract(year from hire_date)='1986';


-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select D.dept_no,D.dept_name,M.emp_no,E.last_name,E.first_name
from
	"Departments" as D
join
	"Department_Manager" as M
on
	D.dept_no=M.dept_no
join
	"Employees" as E
on
	M.emp_no=E.emp_no;
	
	
-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select M.emp_no,E.last_name,E.first_name,D.dept_name
from
	"Departments" as D
join
	"Department_Emp" as M
on
	D.dept_no=M.dept_no
join
	"Employees" as E
on
	M.emp_no=E.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name,last_name,sex
from
	"Employees"
where
	first_name='Hercules'
and 
	last_name
like
	'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select M.emp_no,E.last_name,E.first_name,D.dept_name
from
	"Departments" as D
join
	"Department_Emp" as M
on
	D.dept_no=M.dept_no
join
	"Employees" as E
on
	M.emp_no=E.emp_no
where
	D.dept_name='Sales';


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select M.emp_no,E.last_name,E.first_name,D.dept_name
from
	"Departments" as D
join
	"Department_Emp" as M
on
	D.dept_no=M.dept_no
join
	"Employees" as E
on
	M.emp_no=E.emp_no
where
	D.dept_name='Sales'
or 
	D.dept_name='Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name,count(*)
from
	"Employees"
group by
	last_name;


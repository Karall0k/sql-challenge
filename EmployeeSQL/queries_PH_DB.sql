--Check Table imports--
Select * FROM "Employees";

Select * FROM "Salaries";

Select * FROM "Departments"

Select * FROM "Dept_Manager"

Select * FROM "Dept_emp"

Select * FROM "Titles"

--1.List the employee number, last name, first name, sex, and salary of each employee
--Join Employees and Salaries Tables--
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" as e
INNER JOIN "Salaries" as s ON
s.emp_no=e.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.--
Select first_name, last_name, hire_date
FROM "Employees"
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--3. List the manager of each department along with their department number, department name, employee number,
--last name, and first name.--
--Join Dept_Manager and Employee Tables--
Select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM "Dept_Manager" as dm
INNER JOIN "Departments" as d ON
d.dept_no=dm.dept_no
INNER JOIN "Employees" as e ON
e.emp_no=dm.emp_no;

--4. List the department number for each employee along with that employee’s employee number, last name, first name,
--and department name.--
Select e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
FROM "Employees" as e
	INNER JOIN "Dept_emp" as de ON
	e.emp_no=de.emp_no
		LEFT JOIN "Departments" as d ON
		de.dept_no=d.dept_no;

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins
--with the letter B.--
Select first_name, last_name, sex
FROM "Employees"
WHERE first_name LIKE 'Hercules'
	AND last_name LIKE 'B%';
	
--6. List each employee in the Sales department, including their employee number, last name, and first name.--
Select e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" as e
	INNER JOIN "Dept_emp" as de ON
	e.emp_no=de.emp_no
		LEFT JOIN "Departments" as d ON
		de.dept_no=d.dept_no
		WHERE dept_name = 'Sales';

--7.List each employee in the Sales and Development departments, including their employee number, last name, first
--name, and department name.--
Select e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" as e
	INNER JOIN "Dept_emp" as de ON
	e.emp_no=de.emp_no
		LEFT JOIN "Departments" as d ON
		de.dept_no=d.dept_no
		WHERE dept_name = 'Sales'
		OR dept_name = 'Development';
	
--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share
--each last name)--
Select last_name, COUNT(emp_no)
FROM "Employees"
GROUP BY last_name
ORDER BY "count" DESC;
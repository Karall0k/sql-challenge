# sql-challenge
This challenge involves designing a database and analyzing employee data for the fictional company Pewlett Hackard. The data for personel employed by the company in the 1980s and 1990s is contained in six .csv files. To conduct research on these employees, the files will be imported into a SQL database as tables. Relationships will then be established between the tables so they can be queryed.

A EDR showing the table relationships was created using the website app.quickdatabasediagrams.com.
[image] ERD_PHackard_2_DB.png

Next, the database schema was set up in SQL and the six .csv files containing employee data were imported into the tables. The code for the schema is found in file schema_PHackard_2_DB.sql.

The code containing the following queries can be found in file queries_PH_DB.sql:

    List the employee number, last name, first name, sex, and salary of each employee.

    List the first name, last name, and hire date for the employees who were hired in 1986.

    List the manager of each department along with their department number, department name, employee number, last name, and first name.

    List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

    List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

    List each employee in the Sales department, including their employee number, last name, and first name.

    List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

    List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


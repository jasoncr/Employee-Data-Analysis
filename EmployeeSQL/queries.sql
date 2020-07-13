--List the following details of each employee: 
--employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees e
JOIN Salaries s
ON (e.emp_no = s.sal_emp_no)
ORDER BY e.emp_no;


--List first name, last name, and hire date for employees 
--who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date::date between '1986-01-01' and date '1986-12-31'
ORDER BY hire_date;


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name.
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM Dept_Manager m
JOIN Departments d
ON (m.dept_no = d.dept_no)
JOIN Employees e
ON (m.emp_no = e.emp_no)
ORDER BY m.dept_no;


--Create table of departments
CREATE TABLE Departments (
    dept_no VARCHAR(255)   NOT NULL,
    dept_name VARCHAR(255)   NOT NULL,
	PRIMARY KEY (dept_no)
);

--Create Employee titles table
CREATE TABLE Titles (
    title_id VARCHAR(255)   NOT NULL,
    title VARCHAR(255)   NOT NULL,
	PRIMARY KEY (title_id)
);

--Create Employees Table
CREATE TABLE Employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR(255)   NOT NULL,
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(255),
    hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);


--Create Department and Employee Junction Table
CREATE TABLE Dept_Emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(255)   NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);


--Create Department Manager Table
CREATE TABLE Dept_Manager (
    dept_no VARCHAR(255)   NOT NULL,
    emp_no INT   NOT NULL,
	PRIMARY KEY (dept_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);


--Create Salaries table
CREATE TABLE Salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);



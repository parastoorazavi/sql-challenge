ALTER DATABASE "EmployeeSQL" SET datestyle TO 'ISO, MDY';

-- create table departments
create table departments (
	dept_no varchar(10) NOT NULL,
	dept_name varchar(30) NOT NULL,
	primary key(dept_no)
);

-- Query all fields from the table
select * from departments;

-- create table dept_emp
create table dept_emp (
	emp_no int NOT NULL,
	dept_no varchar(10) NOT NULL,
	foreign key(emp_no) references employees(emp_no),
	foreign key(dept_no) references departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
	
-- Query all fields from the table
select * from dept_emp;

-- create table dept_manager
create table dept_manager (
	dept_no varchar(10) NOT NULL,
	emp_no int NOT NULL,
	foreign key(dept_no) references departments(dept_no),
	foreign key(emp_no) references employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

-- Query all fields from the table
select * from dept_manager;

-- create table employees
create table employees (
	emp_no int NOT NULL,
	emp_title_id varchar(10) NOT NULL,
    birth_date date NOT NULL,
    first_name varchar(40) NOT NULL,
    last_name varchar(40) NOT NULL,
    sex varchar(5) NOT NULL,
    hire_date date NOT NULL,
	primary key(emp_no),
	foreign key(emp_title_id) references titles(title_id)
);


-- Query all fields from the table
select * from employees;

-- create table salaries
create table salaries (
	emp_no int NOT NULL,
    salary int NOT NULL,
	primary key(emp_no),
	foreign key(emp_no) references employees(emp_no)
);
	
-- Query all fields from the table
select * from salaries;

-- create table titles
create table titles (
	title_id varchar(10) NOT NULL,
    title varchar(30) NOT NULL,
	primary key(title_id)
);
	
-- Query all fields from the table
select * from titles;

ALTER DATABASE "EmployeeSQL" SET datestyle TO 'ISO, MDY';

-- DROP TABLE IF EXISTS dept_emp;
-- DROP TABLE IF EXISTS dept_manager;
-- DROP TABLE IF EXISTS departments;
-- DROP TABLE IF EXISTS salaries;
-- DROP TABLE IF EXISTS employees;
-- DROP TABLE IF EXISTS titles;

--1) create table titles
create table titles (
	title_id varchar(10) NOT NULL,
    title varchar(30) NOT NULL,
	primary key(title_id)
);
	
-- Query all fields from the table
select * from titles;

-- 2) create table departments
create table departments (
	dept_no varchar(10) NOT NULL,
	dept_name varchar(30) NOT NULL,
	primary key(dept_no)
);

-- COPY departments(dept_no, dept_name)
-- FROM '/Users/Parastoo/Desktop/homework SQL/data/departments.csv'
-- DELIMITER ','
-- CSV HEADER;

-- Query all fields from the table
select * from departments;

--3) create table employees
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

-- 4) create table dept_emp
create table dept_emp (
	emp_no int NOT NULL,
	dept_no varchar(10) NOT NULL,
	foreign key(emp_no) references employees(emp_no),
	foreign key(dept_no) references departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
	
-- Query all fields from the table
select * from dept_emp;

--5) create table dept_manager
create table dept_manager (
	dept_no varchar(10) NOT NULL,
	emp_no int NOT NULL,
	foreign key(dept_no) references departments(dept_no),
	foreign key(emp_no) references employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

-- Query all fields from the table
select * from dept_manager;

--6) create table salaries
create table salaries (
	emp_no int NOT NULL,
    salary int NOT NULL,
	foreign key(emp_no) references employees(emp_no)
);
	
-- Query all fields from the table
select * from salaries;

-- 1) List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.
select e.emp_no,e.last_name,e.first_name,e.sex,s.salary from employees as e
INNER join salaries as s on e.emp_no=s.emp_no;

--2) List first name, last name, and hire date for employees who were hired in 1986.
select first_name,last_name,hire_date from employees
where hire_date BETWEEN '1986/1/1' AND '1986/12/31';

--3) List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
select departments.dept_no,departments.dept_name,dept_manager.emp_no,employees.last_name,employees.first_name from departments
LEFT JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no;


--4) List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select dept_emp.emp_no,employees.last_name,employees.first_name, departments.dept_name from dept_emp
LEFT JOIN employees
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no;

--5) List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."
select first_name,last_name,sex from employees
where first_name = 'Hercules' and last_name like 'B%'; 

--6) List all employees in the Sales department, including their
-- employee number, last name, first name, and department name.
select dept_emp.emp_no,employees.last_name,employees.first_name, departments.dept_name from dept_emp
LEFT JOIN employees
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
where dept_name='Sales';


--7) List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
select dept_emp.emp_no,employees.last_name,employees.first_name, departments.dept_name from dept_emp
LEFT JOIN employees
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
where dept_name='Sales' or dept_name='Development';


--8) In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

select last_name, count(last_name) as "freq_count_last_names" from employees
group by last_name
order by "freq_count_last_names" desc;






use employees;

# Using the example in the Associative Table Joins section as a guide,
# write a query that shows each department along with
# the name of the current manager for that department.

# +--------------------+--------------------+
# | Department Name    | Department Manager |
# +--------------------+--------------------+
# | Customer Service   | Yuchang Weedman    |
# | Development        | Leon DasSarma      |
# | Finance            | Isamu Legleitner   |
# | Human Resources    | Karsten Sigstam    |
# | Marketing          | Vishwani Minakawa  |
# | Production         | Oscar Ghazalie     |
# | Quality Management | Dung Pesch         |
# | Research           | Hilary Kambil      |
# | Sales              | Hauke Zhang        |
# +--------------------+--------------------+

# SELECT CONCAT(dept_name) AS dept_manager, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT dep.dept_name as `Department Name`, concat(e.first_name, ' ', e.last_name) as `Department Manager`
FROM employees.departments dep
JOIN dept_manager dm on dep.dept_no = dm.dept_no
join employees e on dm.emp_no = e.emp_no;

# Find the name of all departments currently managed by women.
# +------------------+--------------------+
# | Department Name  | Department Manager |
# +------------------+--------------------+
# | Development      | Leon DasSarma      |
# | Finance          | Isamu Legleitner   |
# | Human Resources  | Karsten Sigstam    |
# | Research         | Hilary Kambil      |
# +------------------+--------------------+

SELECT dep.dept_name as `Department Name`, concat(e.first_name, ' ', e.last_name) as `Department Manager`
FROM employees as e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         join departments dep on dm.dept_no = dep.dept_no
         where e.gender = 'F' and dm.to_date = '9999-01-01'
order by dep.dept_name;

# Find the current titles of employees
# currently working in the Customer Service department.
# +--------------------+-------+
# | title              | Total |
# +--------------------+-------+
# | Senior Staff       | 11268 |
# | Staff              |  3574 |
# | Senior Engineer    |  1790 |
# | Engineer           |   627 |
# | Technique Leader   |   241 |
# | Assistant Engineer |    68 |
# | Manager            |     1 |
# +--------------------+-------+
select t.title, count(t.emp_no) as total
from departments d
inner join dept_emp de on d.dept_no = de.dept_no
inner join titles t on de.emp_no = t.emp_no
where d.dept_name = 'Customer Service'
and de.to_date = '9999-01-01'
and t.to_date = '9999-01-01'
group by t.title;


# Find the current salary of all current managers.
# +--------------------+--------------------+--------+
# | Department Name    | Department Manager | Salary |
# +--------------------+--------------------+--------+
# | Customer Service   | Yuchang Weedman    |  58745 |
# | Development        | Leon DasSarma      |  74510 |
# | Finance            | Isamu Legleitner   |  83457 |
# | Human Resources    | Karsten Sigstam    |  65400 |
# | Marketing          | Vishwani Minakawa  | 106491 |
# | Production         | Oscar Ghazalie     |  56654 |
# | Quality Management | Dung Pesch         |  72876 |
# | Research           | Hilary Kambil      |  79393 |
# | Sales              | Hauke Zhang        | 101987 |
# +--------------------+--------------------+--------+

# SELECT dep.dept_name as `Department Name`, concat(e.first_name, ' ', e.last_name) as `Department Manager`, salary as `Salary`
# FROM employees.departments dep
#          JOIN dept_manager dm on dep.dept_no = dm.dept_no
#          join employees e on dm.emp_no = e.emp_no
#          join salaries s on e.emp_no = s.emp_no;
# where d.dept_name = 'Customer Service'
# and de.to_date = '9999-01-01'
# and t.to_date = '9999-01-01'
# group by salary;

select  dep.dept_name as `Department Name`,concat(e.first_name, ' ',e.last_name) as `Department Manager`, salary as `salary`
from employees as e
         join dept_manager dm on e.emp_no = dm.emp_no
         join departments dep on dm.dept_no = dep.dept_no
         join salaries s on e.emp_no = s.emp_no
where s.to_date= '9999-01-01' and dm.to_date='9999-01-01'
order by dept_name;

# Bonus

select concat(e.first_name, ' ',e.last_name) as Employee, d.dept_name as Department,
       concat(e2.first_name, ' ',e2.last_name) as Manager
from departments as d
inner join dept_emp de on d.dept_no = de.dept_no
inner join employees e on de.emp_no = e.emp_no
inner join dept_manager dm on d.dept_no = dm.dept_no
inner join employees as e2 on dm.emp_no = e2.emp_no
where de.to_date = '9999-01-01' and dm.to_date = '9999-01-01';
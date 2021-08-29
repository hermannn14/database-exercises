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

# Find the current titles of employees
# currently working in the Customer Service department.



use employees;

# Find all the employees with the same hire date as employee 101010 using a subquery. 69 Rows

select *
from employees e
where e.hire_date in
(select e.hire_date from employees e
where emp_no = '101010');

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

select distinct t.title
from titles t
where emp_no in
      (select emp_no
          from employees e
          where e.first_name = 'Aamod');
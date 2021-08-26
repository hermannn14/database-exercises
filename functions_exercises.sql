use employees;


Update your queries for employees whose names start and end with 'E'.
Use concat() to combine their first and last name together as a single column in your results.


select concat(first_name, ' ', last_name)
from employees
where first_name like 'e%'
  and last_name like '%a';

Find all employees born on Christmas — 842 rows.

select *
from employees
where month(birth_date) = 12
  and day(birth_date) = 25;


Find all employees hired in the 90s and born on Christmas — 362 rows.


select *
from employees
where year(hire_date) between 1990 and 1999
  and month(hire_date) = 12
  and day(hire_date) = 25
order by hire_date;


Change the query for employees hired in the 90s and born on Christmas such that
the first result is the oldest employee who was hired last. It should be Khun Bernini.

select *
from employees
where year(hire_date) between 1990 and 1999
  and month(birth_date) = 12
  and day(birth_date) = 25
order by employees.employees.hire_date desc;


For your query of employees born on Christmas and hired in the 90s,
use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).

select *, datediff(curdate(), employees.employees.hire_date) total
from employees
where year(hire_date) between 1990 and 1999
and month(birth_date) = 12
and day(birth_date) = 25
order by employees.employees.hire_date desc;


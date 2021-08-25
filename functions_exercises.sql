use employees;

select concat(first_name, ' ', last_name)
from employees
where first_name like 'e%'
  and last_name like '%a';

select *
from employees
where month(birth_date) = 12
  and day(birth_date) = 25;

select *
from employees
where year(hire_date) between 1990 and 1999
  and month(hire_date) = 12
  and day(hire_date) = 25
order by hire_date;

select *
from employees
where year(hire_date) between 1990 and 1999
  and month(birth_date) = 12
  and day(birth_date) = 25
order by employees.employees.hire_date desc;

select *, datediff(curdate(), employees.employees.hire_date) total
from employees
where year(hire_date) between 1990 and 1999
and month(birth_date) = 12
and day(birth_date) = 25
order by employees.employees.hire_date desc;


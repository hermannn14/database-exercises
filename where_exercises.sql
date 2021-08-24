use employees;


select count(*)
from employees e
where e.first_name like ('Irena', 'Vidya', 'Maya');

select count(*)
from employees.employees e
where e.last_name like ('e%');

select count(*)
from employees.employees e
where e.last_name like ('%q%');

select count(*)
from employees.employees e
where e.last_name like ('%q%');

select *
from employees.employees e
where e.last_name like 'e%' or e.last_name like '%e';

select *
from employees.employees e
where e.last_name like 'q%' or e.last_name like '%q';


use employees;

# Return 10 employees in a result set named 'full_name' in the format of 'last name,
# first name' for each employee.
#
# Add the date of birth for each employee as 'DOB' to the query.
#
# Update the query to format full name to include the employee number so
# it is formatted as 'employee number - last name, first name'.



select concat(e.emp_no, ' - ' ,e.last_name, ', ', e.first_name, e.birth_date) full_name from employees.employees e limit 10;
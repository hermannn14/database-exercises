use employees;

# List the first 10 distinct last name sorted in descending order. Your result should look like this:

SELECT DISTINCT title FROM titles;

# Create a query to get the top 5 salaries and display just the employees number from the salaries table. The employee number results should be:

select distinct last_name from employees order by last_name desc limit 10;

# Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page,
# etc. Update the previous query to find the tenth page of results. The employee number results should be:

select salaries.emp_no
from salaries
order by salaries.salary desc
limit 4 offset 46;

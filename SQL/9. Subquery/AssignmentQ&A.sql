-- Write a Sub_query to fetch the first_name , last_name of the employees working in IT department.

select first_name, last_name from employee where dept_id = (select id from department where dept_name = 'IT');

-- Write a Sub-query to find the names of the employee who has salary greater than that of employee whose last_name is Shetty. Query must return first_name, last_name and salary of the employee.

select first_name, last_name, salary from employee where salary > (select salary from employee where last_name = 'Shetty');

-- Write a sql Sub-query to find first_name, last_name of those employees who are working as Manager.

select first_name, last_name from employee
where id in (select distinct(manager_id) from employee where manager_id > 0);

-- Write a query to find first_name, last_name, salary of the employee whose salary is greater than average salary of all the departments. Arrange the records in the descending order of salary.

select first_name, last_name, salary from employee where salary > (select avg(salary) from employee) order by salary desc;


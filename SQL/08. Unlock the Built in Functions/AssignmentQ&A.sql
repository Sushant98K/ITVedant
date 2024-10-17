-- write a query to display first_name, last_name, full_name as shown in Expected Output from the employee table. full_name is a combination of first_name and last_name.

select first_name, last_name, concat(first_name, last_name) as full_name from employee;

-- Write a mysql query to display details of the employee where length of the first_name is greater than or equal to 7. Query must return only first_name and last_name in the result set.

elect first_name, last_name 
from employee 
where 
    LENGTH(first_name) >= 7;

-- Write a MySQL query that displays the first name and the length of the first name for all employees whose name starts with the letters M or P. Sort the results by the employees first names in ascending order. Query must return first_name and length of first_name.

select 
    first_name, length(first_name) as length 
from 
    employee
where 
    first_name like 'M%' OR first_name like 'P%'
order by 
    first_name;

-- Write a query to find minimum and maximum salary from employee table.

select 
    min(salary) minimum_salary, max(salary) maximum_salary
from 
    employee;

-- Write a query that will fetch the total salary amount payable to the employee.

select sum(salary) Total_Salary from employee;

-- Write a query to count the number of roles available in the above table. Query must return total number of roles in employee table.

select count(distinct(role)) Total_roles from employee;

-- write a query to fetch department wise employee count. Query must return department name and count of employee in department as shown in the Expected Output below.

select distinct(dept_name) Department_Name, count(id) Total_Employee from employee group by dept_name;

-- Write a query to fetch department wise salary payable to all the employees in that department. Query must return department name and total salary payable to that department.

select dept_name Department_Name, sum(salary) Total_Salary_Payable from employee group by dept_name;

-- Write a query to fetch role wise employee count for TESTING department. Query must return role and count of employee.

select role Role, count(id) Total_Employee from employee where dept_name = 'TESTING' group by role;

-- Write a SQL Query to return names of the department where count of employees is less than 3. Query must return department name and count of employee as result set.

select dept_name Department_Name, count(id) Employee_Count from employee
group by dept_name
having count(id) < 3;
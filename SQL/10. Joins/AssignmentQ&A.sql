-- write a sql query to find first_name, last_name and department_name for all the employee. Query must fetch first_name, last_name and department_name in the result set.

select e.first_name, e.last_name, d.dept_name from employee e left join department d on e.dept_id=d.id;

-- Write a sql query to find first_name, last_name who work in IT department. Query must return first_name, last_name and department name in the result set.

select e.first_name, e.last_name, d.dept_name from employee e join department d on e.dept_id=d.id
where d.dept_name= 'IT';

-- Write mysql query to get the department name and count of employee working in that in that department.

select distinct(d.dept_name), count(e.id) total_employee from employee e join department d on e.dept_id = d.id
group by d.dept_name;

-- Write a mysql query to find employee first_name,last_name,dept_name, city and state for all employees.

select e.first_name, e.last_name, d.dept_name, l.city, l.state
from employee e join department d join location l
on e.dept_id = d.id AND d.location_id = l.id;

-- Write a mysql query to find employee first_name, last_name along with the manager name for all the employees. Query must fetch first_name of employee and first_name of his manager in the result set as shown in the expected output.

select e1.first_name Employee_Name, e2.first_name Manager_Name 
from employee e1 join employee e2
on e1.manager_id = e2.id;
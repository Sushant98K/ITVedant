-- Assignment 11 Question 2

CREATE VIEW EmployeeView AS
SELECT id, first_name, last_name, role
FROM employee
WHERE role = 'IT_PROG';

INSERT INTO employee (id, first_name, last_name, salary, dept_id, role)
VALUES (11, 'Piyush', 'Bansal', 52000, 2, 'Data Analyst');

UPDATE employee
SET role = 'IT_PROGRAMMER'
WHERE role = 'IT_PROG';

DELETE FROM employee
WHERE id = 5;

-- Assignment 11 Question 3
  
CREATE VIEW EmployeeDetails AS
SELECT id, first_name, last_name, salary
FROM employee
WHERE salary > (SELECT avg(salary) FROM employee);

-- Assignment 11 Question 4

CREATE VIEW EmployeeDet AS
SELECT 
    e.id, e.first_name, e.last_name, e.salary, d.dept_name
FROM 
    employee e
JOIN 
    Department d 
ON 
    e.dept_id = d.id;
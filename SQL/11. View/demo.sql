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
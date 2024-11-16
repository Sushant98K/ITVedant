-- Create trigger to insert

Delimiter \\

Create trigger Insert_AuditLog
after insert into employee
for each row

begin

insert into auditLog (employee_id, Action) values (new.employee_id, 'Employee Created');

end \\


Delimiter ;

-- inserting in employees

INSERT INTO employee (emp_id, name, dept, salary) VALUES (1, 'John Doe', 'Engineering', 60000);
INSERT INTO employee (emp_id, name, dept, salary) VALUES (2, 'Jane Smith', 'Marketing', 55000);
INSERT INTO employee (emp_id, name, dept, salary) VALUES (3, 'Alice Johnson', 'HR', 50000);
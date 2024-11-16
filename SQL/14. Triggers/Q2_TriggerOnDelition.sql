-- Creating Trigger For deletion

Delimiter \\

Create trigger for Deletion_of_Record
After delete on Employee
for each row

begin

    insert into auditLog (employee_id, Action) values (old.employee_id, 'Employee Deleted');

end \\


Delimiter ;

-- Deletion of record 

DELETE FROM employee WHERE emp_id = 1;
DELETE FROM employee WHERE emp_id = 2;
DELETE FROM employee WHERE emp_id = 3;
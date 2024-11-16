-- Create Trigger for insertion of employee

Delimiter \\

Create trigger Insertion_of_Employee

after insert on employee
for each row

begin 

    update EmployeeCount set emp_count = emp_count + 1;

end \\

Delimiter ;

-- Create Trigger for deletion of employee

Delimiter \\

Create trigger Deletion_of_Employee

after delete on employee
for each row

begin

    update EmployeeCount set emp_count = emp_count - 1;

end \\

Delimiter ;
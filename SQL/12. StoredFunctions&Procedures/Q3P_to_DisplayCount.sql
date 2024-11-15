-- Create Procedure to count Employees

Delimiter #

create procedure CountEmployee()
begin

declare count_of_emp int;

select count(*) into count_of_emp from employee;

select count_of_emp;

end #

Delimiter ;

-- Call Procedure

call CountEmployee();
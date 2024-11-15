-- Create Procedure 

delimiter \\

create procedure GetLimitedEmployee(l int)
begin

select first_name, last_name, salary, hire_date 
from employee
limit l;

end \\

delimiter ;

-- callinto GetLimitedEmployee

call GetLimitedEmployee(5);
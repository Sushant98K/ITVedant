-- creating Procedure

delimiter //
create procedure get_employee()
begin

select e.first_name, e.last_name, e.email, d.dept_name
from employee e
join department d
on e.dept_id = d.dept_id;
end //
delimiter;

-- calling Procedure

call get_employee();
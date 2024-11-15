-- Dropping the old function of same name before creating new function

drop function if exists Grade_of_Salary;

-- Create function to display grade according to salary

Delimiter $$

create function Grade_of_Salary(salary float)
returns varchar(10)
deterministic
begin
    declare grade varchar(10);

    if salary > 60000 then 
        set grade = 'A';
    elseif salary > 30000 and salary <= 60000 then
        set grade = 'B';
    elseif salary > 10000 and salary <= 30000 then
        set grade = 'C';
    else
        set grade = 'D';
    end if;

    return grade;

end $$
Delimiter ;

-- calling function

SELECT Name, Salary, Grade_of_Salary(Salary) as Salary_Grade
FROM Employees;
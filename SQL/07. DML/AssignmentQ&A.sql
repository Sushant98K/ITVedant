-- Write a query to add following record in the employee table.
    insert into employee values (1, 'Jay', 'HR', 35000, 'Mumbai');

-- Write a query to insert following multiple records in a single insert query.
    insert into employee values (1,'Yash', 'Management', 40000, 'Pune'),(2,'Anand', 'Training', 60000, 'Chennai'),(3, 'Ruhi', 'Admission', 45000, 'Delhi');

-- Write a query to update a Department name from Sales to Admission for the entire table.
    update employee set department = 'Admission' where department = 'Sales';

-- Write a query to update Name from Priya to Priyanshi and Department from Sales to Operation for ID 4.
    update employee
    set 
        name = 'Priyanshi', Department = 'Operation'
    where
        id = 4;
    
-- Delete all the records from table employee whose employee location is Mumbai.
    delete from employee
    where 
        location = 'Mumbai';
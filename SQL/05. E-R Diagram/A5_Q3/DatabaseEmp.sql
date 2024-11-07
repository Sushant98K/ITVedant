-- create databse
create database emp;
use database;

-- create tables

create table emp_location (
    LocationID int primary key auto_increment,
    Address varchar(255) not null,
    City varchar(100) not null,
    State varchar(100) not null,
    ZipCode varchar(10) not null
)

select * from emp_location;


create emp_department (
    DepartmentID int primary key auto_increment,
    DepartmentName varchar(100) not null,
    LocationID int not null,
    constraint fk_location foreign key (LocationID) references emp_location(LocationID)
)

select * from emp_department;


create table emp_employee (
    EmployeeID int primary key auto_increment,
    FirstName varchar(100) not null,
    LastName varchar(100) not null,
    Position varchar(100) not null,
    Salary decimal(10,2) not null,
    DepartmentID int not null,
    LocationID int not null,
    constraint fk_department foreign key (DepartmentID) references emp_department(DepartmentID),
    constraint fk_location foreign key (LocationID) references emp_location(LocationID)
)

select * from emp_employee;


-- data insert

INSERT INTO emp_location (LocationID, Address, City, State, ZipCode) VALUES
(1, '123 Main St', 'New York', 'NY', '10001'),
(2, '456 Elm St', 'Los Angeles', 'CA', '90001'),
(3, '789 Maple Ave', 'Chicago', 'IL', '60601'),
(4, '101 Pine St', 'Houston', 'TX', '77001'),
(5, '202 Oak St', 'Phoenix', 'AZ', '85001');

INSERT INTO emp_department (DepartmentID, DepartmentName, LocationID) VALUES
(1, 'Human Resources', 1),
(2, 'Finance', 2),
(3, 'Engineering', 3),
(4, 'Marketing', 4),
(5, 'Sales', 5);

INSERT INTO emp_employee (EmployeeID, FirstName, LastName, Position, Salary, DepartmentID, LocationID) VALUES
(1, 'John', 'Doe', 'HR Manager', 75000.00, 1, 1),
(2, 'Jane', 'Smith', 'Financial Analyst', 80000.00, 2, 2),
(3, 'Alice', 'Johnson', 'Software Engineer', 95000.00, 3, 3),
(4, 'Bob', 'Brown', 'Marketing Specialist', 65000.00, 4, 4),
(5, 'Charlie', 'Davis', 'Sales Representative', 60000.00, 5, 5);
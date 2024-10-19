-- Create databse
 
create database emp_db;
use emp_db;

-- create table for Worker

create table Worker (WORKER_ID int primary key, FIRST_NAME varchar(25), LAST_NAME varchar (25), SALARY int, JOINING_DATE datetime, DEPARTMENT varchar(25));
select * from Worker;

-- create table for Bones 

create table Bonus (WORKER_REF_ID int, BONUS_DATE datetime, BONUS_AMOUNT int);
select * from Bonus;

-- create table for Title

create table Title (WORKER_REF_ID int , WORKER_TITLE varchar(25), AFFECTED_FROM datetime); 
select * from Title;

-- insert data into Worker table

insert into  Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) values 
(001, "Monika", "Arora", 100000, '2014-02-20 09:00:00', "HR"),
(002, "Niharika", "Verma", 80000, '2014-06-11 09:00:00', "Admin"),
(003, "Vishal", "Singhal", 300000, '2014-02-20 09:00:00', "HR"),
(004, "Amitabh", "Singh", 500000, '2014-02-20 09:00:00', "Admin"),
(005, "Vivek", "Bhati", 500000, '2014-06-11 09:00:00', "Admin"),
(006, "Vipul", "Diwan", 200000, '2014-06-11 09:00:00', "Account"),
(007, "Satish", "Kumar", 75000, '2014-01-20 09:00:00', "Account"),
(008, "Geetika", "Chauhan", 90000, '2014-04-11 09:00:00', "Admin");

-- insert data into Bonus table

insert into Bonus (WORKER_REF_ID, BONUS_DATE, BONUS_AMOUNT) values 
(1, '2016-02-20 00:00:00', 5000),
(2, '2016-06-11 00:00:00', 3000),
(3, '2016-02-20 00:00:00',4000),
(1, '2016-02-20 00:00:00', 4500),
(2, '2016-06-11 00:00:00', 3500);

-- insert data into Title table

insert into Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) values 
(1, "Manager", '2016-02-20 00:00:00'),
(2, "Executive", '2016-06-11 00:00:00'),
(8, "Executive", '2016-06-11 00:00:00'),
(5, "Manager", '2016-06-11 00:00:00'),
(4, "Asst. Manager", '2016-06-11 00:00:00'),
(7, "Executive", '2016-06-11 00:00:00'),
(6, "Lead", '2016-06-11 00:00:00'),
(3, "Lead", '2016-06-11 00:00:00');
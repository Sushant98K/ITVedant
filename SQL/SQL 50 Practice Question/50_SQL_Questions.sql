use emp_db;
select * from Worker;
select * from Bonus;
select * from Title;

-- Q-1. Write An SQL Query To Fetch “FIRST_NAME” From Worker Table Using The Alias Name As <WORKER_NAME>.
select FIRST_NAME as WORKER_NAME 
from worker;

-- Q-2. Write An SQL Query To Fetch “FIRST_NAME” From Worker Table In Upper Case.
select upper(FIRST_NAME) 
from worker;

-- Q-3. Write An SQL Query To Fetch Unique Values Of DEPARTMENT From Worker Table.
select distinct(department) 
from worker;

-- Q-4. Write An SQL Query To Print First Three Characters Of FIRST NAME From Worker Table.
select substr(first_name,1,3) 
from worker;

-- Q-5. Write An SQL Query To Find The Position Of The Alphabet (‘A’) In The First Name Column ‘Amitabh’ From Worker Table.
select instr('Amitabh','A');

-- Q-6. Write An SQL Query To Print The FIRST_NAME From Worker Table After Removing White Spaces From The Right Side.
select RTRIM(FIRST_NAME) 
from worker;

-- Q-7. Write An SQL Query To Print The DEPARTMENT From Worker Table After Removing White Spaces From The Left Side.
select LTRIM(DEPARTMENT) 
from worker;

-- Q-8. Write An SQL Query That Fetches The Unique Values Of DEPARTMENT From Worker Table And Prints Its Length.
select distinct(DEPARTMENT) , length(department) length
from worker;

-- or

select distinct length(department) 
from worker; 

-- Q-9. Write An SQL Query To Print The FIRST_NAME From Worker Table After Replacing ‘A’ With ‘A’.
select replace(FIRST_NAME,'A','A') 
from worker;
 
-- Q-10. Write An SQL Query To Print The FIRST NAME And LAST_NAME From Worker Table Into A SingleColumn COMPLETE_NAME. A Space Char Should Separate Them.
select concat(first_name, " ", last_name) COMPLETE_NAME 
from worker;

-- Q-11. Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending.
select * from Worker
order by FIRST_NAME;

-- Q-12. Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending And DEPARTMENT Descending.
select * from Worker
order by FIRST_NAME asc, DEPARTMENT desc;

-- Q-13. Write An SQL Query To Print Details For Workers With The First Name As "Vipul" And "Satish" From Worker Table.
select * from Worker
where FIRST_NAME in ('Vipul','Satish');

-- Q-14. Write An SQL Query To Print Details Of Workers Excluding First Names, "Vipul" And "Satish" From Worker Table.
select * from Worker
where FIRST_NAME not in ('Vipul','Satish');

-- Q-15. Write An SQL Query To Print Details Of Workers With DEPARTMENT Name As "Admin".
select * from Worker
where department like 'Admin';

-- Q-16. Write An SQL Query To Print Details Of The Workers Whose FIRST NAME Contains ‘A’.
select * from Worker
where FIRST_NAME like 'A%';
-- or
select * from Worker
where left(FIRST_NAME,1) = 'A'; 

-- Q-17. Write An SQL Query To Print Details Of The Workers Whose FIRST NAME Ends With ‘A’.
select * from Worker
where FIRST_NAME like '%A';
-- or
select * from Worker
where right(FIRST_NAME,1) = 'A';

-- Q-18. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘H’ And Contains Six Alphabets.
select * from Worker
where right(FIRST_NAME,1) = 'H' AND length(FIRST_NAME) = 6;
-- or
select * from Worker
where right(FIRST_NAME,1) = 'H' AND length(replace(FIRST_NAME, ' ', '')) = 6;

-- Q-19. Write An SQL Query To Print Details Of The Workers Whose SALARY Lies Between 100000 And 500000.
select * from Worker
where salary between 100000 AND 500000;

-- Q-20. Write An SQL Query To Print Details Of The Workers Who Have Joined In Feb’2014.
select * from Worker
where year(joining_date) = 2014 AND month(joining_date) = 2;

-- Q-21. Write An SQL Query To Fetch The Count Of Employees Working In The Department ‘Admin’.
select count(worker_id) workers, department  from worker
group by department
having department like 'Admin';

-- Q-22. Write An SQL Query To Fetch Worker Names With Salaries >= 50000 And <= 100000.
select first_name, last_name from worker
where salary between 50000 and 100000;
 
-- Q-23. Write An SQL Query To Fetch The No. Of Workers For Each Department In The Descending Order.
select count(worker_id) workers, department  from worker
group by department
order by count(worker_id) desc;

-- Q-24. Write An SQL Query To Print Details Of The Workers Who Are Also Managers.
select w.* from worker w join title t on w.worker_id = t.worker_ref_id
where t.worker_title like 'Manager';

-- Q-25. Write An SQL Query To Fetch Duplicate Records Having Matching Data In Some Fields Of A Table.
select * from worker
group by worker_id, first_name, last_name, salary, joining_date, department
having count(*) > 1;
-- or 
WITH DuplicateRecords AS (
    SELECT FIRST_NAME, LAST_NAME, DEPARTMENT
    FROM Worker
    GROUP BY FIRST_NAME, LAST_NAME, DEPARTMENT
    HAVING COUNT(*) > 1
)
SELECT *
FROM Worker
WHERE (FIRST_NAME, LAST_NAME, DEPARTMENT) IN (SELECT FIRST_NAME, LAST_NAME, DEPARTMENT FROM DuplicateRecords);

-- Q-26. Write An SQL Query To Show Only Odd Rows From A Table.
select * from worker
where worker_id % 2 != 0;
-- or
WITH NumberedWorkers AS (
    SELECT *,ROW_NUMBER() OVER (ORDER BY WORKER_ID) AS RowNum
    FROM Worker
)
SELECT *
FROM NumberedWorkers
WHERE RowNum % 2 = 1;

-- Q-27. Write An SQL Query To Show Only Even Rows From A Table.
select * from worker
where worker_id % 2 = 0;
-- or
WITH NumberedWorkers AS (
    SELECT *,ROW_NUMBER() OVER (ORDER BY WORKER_ID) AS RowNum
    FROM Worker
)
SELECT *
FROM NumberedWorkers
WHERE RowNum % 2 = 0;

-- Q-28. Write An SQL Query To Clone A New Table From Another Table.
CREATE TABLE WorkerClone AS
SELECT *
FROM Worker;

-- Q-29. Write An SQL Query To Fetch Intersecting Records Of Two Tables.
select w.*, t.* from worker w join title t on w.WORKER_ID = t.WORKER_REF_ID
order by w.WORKER_ID;

-- Q-30. Write An SQL Query To Show Records From One Table That Another Table Does Not Have.
select w.* from worker w left join bonus b on w.WORKER_ID = b.WORKER_REF_ID
where b.WORKER_REF_ID is null;

-- Q-31. Write An SQL Query To Show The Current Date And Time.
select now();

-- Q-32. Write An SQL Query To Show The Top N (Say 10) Records Of A Table.
SELECT * 
FROM Worker
LIMIT 10;

-- Q-33. Write An SQL Query To Determine The Nth (Say N=5) Highest Salary From A Table.
SELECT distinct salary
FROM Worker
order by salary desc
LIMIT 1 offset 4;

-- Q-34. Write An SQL Query To Determine The 5th Highest Salary Without Using TOP Or Limit Method.
SELECT DISTINCT SALARY
FROM Worker W1
WHERE 4 = (
    SELECT COUNT(DISTINCT SALARY)
    FROM Worker W2
    WHERE W2.SALARY > W1.SALARY
)
ORDER BY SALARY DESC;
-- or
select max(salary) from worker 
where SALARY < (select max(salary) from worker
				where SALARY < (select max(salary) from worker 
								where SALARY < (select max(salary) from worker 
												where SALARY < (select max(salary) from worker))));

-- Q-35. Write An SQL Query To Fetch The List Of Employees With The Same Salary.
select * from worker 
where salary in (select salary from worker 
				group by salary 
                having count(*) > 1) 
order by salary;
-- or
select w1.* from worker w1 join worker w2 on w1.salary=w2.salary
where w1.WORKER_ID != w2.WORKER_ID
order by w1.salary;

-- Q-36. Write An SQL Query To Show The Second Highest Salary From A Table.
select distinct salary from worker
order by salary desc
limit 1 offset 1;
 
-- Q-37. Write An SQL Query To Show One Row Twice In Results From A Table.
select * from worker where worker_id = 1 
union all
select * from worker where worker_id = 1;

-- Q-38. Write An SQL Query To Fetch Intersecting Records Of Two Tables.
select w.*, t.* from worker w join title t 
on w.WORKER_ID = t.WORKER_REF_ID
order by worker_id;

-- Q-39. Write An SQL Query To Fetch The First 50% Records From A Table.
select * from worker
where worker_id <= (select count(*)/2 from worker);
-- or
WITH RankedWorkers AS (
    SELECT *, ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS RowNum
    FROM Worker
)
SELECT *
FROM RankedWorkers
WHERE RowNum <= (SELECT COUNT(*) / 2 FROM Worker);

-- Q-40. Write An SQL Query To Fetch The Departments That Have Less Than Five People In It.
select department, count(*) from worker
group by department
having count(*) > 5;

-- Q-41. Write An SQL Query To Show All Departments Along With The Number Of People In There.

-- Q-42. Write An SQL Query To Show The Last Record From A Table.

-- Q-43. Write An SQL Query To Fetch The First Row Of A Table.

-- Q-44. Write An SQL Query To Fetch The Last Five Records From A Table.

-- Q-45. Write An SQL Query To Print The Name Of Employees Having The Highest Salary In Each Department.

-- Q-46. Write An SQL Query To Fetch Three Max Salaries From A Table.

-- Q-47. Write An SQL Query To Fetch Three Min Salaries From A Table.

-- Q-48. Write An SQL Query To Fetch Nth Max Salaries From A Table. Q-49. Write An SQL Query To Fetch Departments Along With The Total Salaries Paid For Each Of Them.

-- Q-50. Write An SQL Query To Fetch The Names Of Workers Who Earn The Highest Salary.

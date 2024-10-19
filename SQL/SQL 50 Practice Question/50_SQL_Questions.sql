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

-- Q-12. Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending And DEPARTMENT Descending.

-- Q-13. Write An SQL Query To Print Details For Workers With The First Name As "Vipul" And "Satish" From Worker Table.

-- Q-14. Write An SQL Query To Print Details Of Workers Excluding First Names, "Vipul" And "Satish" From Worker Table.

-- Q-15. Write An SQL Query To Print Details Of Workers With DEPARTMENT Name As "Admin".

-- Q-16. Write An SQL Query To Print Details Of The Workers Whose FIRST NAME Contains ‘A’.

-- Q-17. Write An SQL Query To Print Details Of The Workers Whose FIRST NAME Ends With ‘A’.

-- Q-18. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘H’ And Contains Six Alphabets.

-- Q-19. Write An SQL Query To Print Details Of The Workers Whose SALARY Lies Between 100000 And 500000.

-- Q-20. Write An SQL Query To Print Details Of The Workers Who Have Joined In Feb’2014.

-- Q-21. Write An SQL Query To Fetch The Count Of Employees Working In The Department ‘Admin’.

-- Q-22. Write An SQL Query To Fetch Worker Names With Salaries >= 50000 And <= 100000.
 
-- Q-23. Write An SQL Query To Fetch The No. Of Workers For Each Department In The Descending Order.

-- Q-24. Write An SQL Query To Print Details Of The Workers Who Are Also Managers.

-- Q-25. Write An SQL Query To Fetch Duplicate Records Having Matching Data In Some Fields Of A Table.

-- Q-26. Write An SQL Query To Show Only Odd Rows From A Table. Q-27. Write An SQL Query To Show Only Even Rows From A Table.

-- Q-28. Write An SQL Query To Clone A New Table From Another Table.

-- Q-29. Write An SQL Query To Fetch Intersecting Records Of Two Tables.

-- Q-30. Write An SQL Query To Show Records From One Table That Another Table Does Not Have.

-- Q-31. Write An SQL Query To Show The Current Date And Time.

-- Q-32. Write An SQL Query To Show The Top N (Say 10) Records Of A Table.

-- Q-33. Write An SQL Query To Determine The Nth (Say N=5) Highest Salary From A Table.

-- Q-34. Write An SQL Query To Determine The Sth Highest Salary Without Using TOP Or Limit Method.

-- Q-35. Write An SQL Query To Fetch The List Of Employees With The Same Salary.

-- Q-36. Write An SQL Query To Show The Second Highest Salary From A Table.
 
-- Q-37. Write An SQL Query To Show One Row Twice In Results From A Table.

-- Q-38. Write An SQL Query To Fetch Intersecting Records Of Two Tables.

-- Q-39. Write An SQL Query To Fetch The First 50% Records From A Table.

-- Q-40. Write An SQL Query To Fetch The Departments That Have Less Than Five People In It.

-- Q-41. Write An SQL Query To Show All Departments Along With The Number Of People In There.

-- Q-42. Write An SQL Query To Show The Last Record From A Table.

-- Q-43. Write An SQL Query To Fetch The First Row Of A Table.

-- Q-44. Write An SQL Query To Fetch The Last Five Records From A Table.

-- Q-45. Write An SQL Query To Print The Name Of Employees Having The Highest Salary In Each Department.

-- Q-46. Write An SQL Query To Fetch Three Max Salaries From A Table.

-- Q-47. Write An SQL Query To Fetch Three Min Salaries From A Table.

-- Q-48. Write An SQL Query To Fetch Nth Max Salaries From A Table. Q-49. Write An SQL Query To Fetch Departments Along With The Total Salaries Paid For Each Of Them.

-- Q-50. Write An SQL Query To Fetch The Names Of Workers Who Earn The Highest Salary.

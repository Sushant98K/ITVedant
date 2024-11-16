-- PL/SQL 

DECLARE
    -- Define a cursor to select the required fields from the employee table
    CURSOR emp_cursor IS
        SELECT first_name, last_name, email, salary
        FROM employee;

    -- Define a record type to hold the cursor data
    emp_record emp_cursor%ROWTYPE;
BEGIN
    -- Open the cursor and loop through the records
    OPEN emp_cursor;
    LOOP
        -- Fetch each record into the emp_record variable
        FETCH emp_cursor INTO emp_record;
        
        -- Exit the loop when no more records are found
        EXIT WHEN emp_cursor%NOTFOUND;

        -- Display the employee details
        DBMS_OUTPUT.PUT_LINE('First Name: ' || emp_record.first_name || 
                             ', Last Name: ' || emp_record.last_name || 
                             ', Email: ' || emp_record.email || 
                             ', Salary: ' || emp_record.salary);
    END LOOP;

    -- Close the cursor
    CLOSE emp_cursor;
EXCEPTION
    WHEN OTHERS THEN
        -- Handle any exceptions that may occur
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        IF emp_cursor%ISOPEN THEN
            CLOSE emp_cursor;
        END IF;
END;
/


-- MYSQL Server

DELIMITER $$

CREATE PROCEDURE DisplayEmployeeDetails()
BEGIN
    -- Declare variables to hold the fetched data
    DECLARE v_first_name VARCHAR(50);
    DECLARE v_last_name VARCHAR(50);
    DECLARE v_email VARCHAR(50);
    DECLARE v_salary FLOAT;

    -- Declare a cursor for selecting employee details
    DECLARE emp_cursor CURSOR FOR
        SELECT first_name, last_name, email, salary
        FROM employee;

    -- Declare a handler for NOT FOUND
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    -- Initialize the done flag
    SET done = FALSE;

    -- Open the cursor
    OPEN emp_cursor;

    -- Loop through the cursor
    read_loop: LOOP
        -- Fetch the next row into the variables
        FETCH emp_cursor INTO v_first_name, v_last_name, v_email, v_salary;

        -- Exit the loop if there are no more rows
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Display the employee details
        SELECT CONCAT('First Name: ', v_first_name, 
                      ', Last Name: ', v_last_name, 
                      ', Email: ', v_email, 
                      ', Salary: ', v_salary) AS EmployeeDetails;
    END LOOP;

    -- Close the cursor
    CLOSE emp_cursor;
END$$

DELIMITER ;

-- calling procedure

CALL DisplayEmployeeDetails();
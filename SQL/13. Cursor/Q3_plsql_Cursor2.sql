-- PL/SQL Server

DECLARE
    -- Define a cursor to select the required fields from the employee table
    CURSOR emp_cursor IS
        SELECT first_name, last_name, salary
        FROM employee;

    -- Define a record type to hold the cursor data
    emp_record emp_cursor%ROWTYPE;

    -- Variable to hold the position based on salary
    v_position VARCHAR(50);
BEGIN
    -- Open the cursor and loop through the records
    OPEN emp_cursor;
    LOOP
        -- Fetch each record into the emp_record variable
        FETCH emp_cursor INTO emp_record;
        
        -- Exit the loop when no more records are found
        EXIT WHEN emp_cursor%NOTFOUND;

        -- Determine the position based on salary
        IF emp_record.salary > 80000 THEN
            v_position := 'Manager';
        ELSIF emp_record.salary BETWEEN 50000 AND 80000 THEN
            v_position := 'Associated';
        ELSE
            v_position := 'Executive';
        END IF;

        -- Display the employee details along with the position
        DBMS_OUTPUT.PUT_LINE(emp_record.first_name || ' ' || emp_record.last_name || ' ' || emp_record.salary || ' ' || v_position);
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

CREATE PROCEDURE DisplayEmployeePositions()
BEGIN
    -- Declare variables to hold the fetched data
    DECLARE v_first_name VARCHAR(50);
    DECLARE v_last_name VARCHAR(50);
    DECLARE v_salary FLOAT;
    DECLARE v_position VARCHAR(50);
    
    -- Declare a cursor for selecting employee details
    DECLARE emp_cursor CURSOR FOR
        SELECT first_name, last_name, salary
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
        FETCH emp_cursor INTO v_first_name, v_last_name, v_salary;

        -- Exit the loop if there are no more rows
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Determine the position based on salary
        IF v_salary > 80000 THEN
            SET v_position = 'Manager';
        ELSEIF v_salary BETWEEN 50000 AND 80000 THEN
            SET v_position = 'Associated';
        ELSE
            SET v_position = 'Executive';
        END IF;

        -- Display the employee details
        SELECT v_first_name AS first_name, 
               v_last_name AS last_name, 
               v_salary AS salary, 
               v_position AS position;
    END LOOP;

    -- Close the cursor
    CLOSE emp_cursor;
END$$

DELIMITER ;

-- Calling procedure

CALL DisplayEmployeePositions();
-- Write a query to fetch all records from the movie table. Query must return all the columns in the result set.
    select * from movie;

-- Display the details of column movie_name and cat from movie table. Provide aliasing to Column movie_name as name and cat as category as per the Expected Output.
    select movie_name name, cat category from movie;

-- write a query to display profit done by the movies showing only movieid, movie_name and net_profit. net_profit to be calculated as the difference in productioncost and businesscost.
    select movieid, movie_name, productioncost - businesscost net_profit from movie;

-- Write a query List the different categories of movies. Query must return only the list of unique categories as per the Expected Output shown below.
    select 
    distinct(cat)
    from movie;

-- Write a query to fetch movie_name,releasedate of the movie those belongs to Action Category.
    select
    movie_name, releasedate
    from movie
    where
        cat = 'Action';
    
-- Write a sql query to fetch movie_name,productioncost from movies whose productioncost is greater than 100000.
    select
    movie_name, productioncost
    from movie
    where
        productioncost > 100000;

-- write a sql query to fetch movie_name of those movies whoes category is Action and business cost is greater than 130000.
    select
    movie_name
    from movie
    where
        cat = 'Action' and businesscost > 130000;
    
-- Write a query to fetch records from movie table whose category is Action and release date is between 2016-01-01 and 2017-01-01. Query must return movie_name, cat and releasedate.
    select
    movie_name, cat, releasedate
    from movie
    where
        cat = 'Action' AND releasedate between '2016-01-01' AND '2017-01-01'
    
-- Write a query to sort the records of movie table in ascending order of movie_name. Query must return movie_name in the result set.
    select 
    movie_name
    from movie
    order by movie_name asc

-- write a query to sort the record in the descending order of production cost. Query must return movie_name and productioncost in the result set.
    select
    movie_name, productioncost
    from movie
    order by productioncost desc;

-- Write a query to fetch movie_name, releasedate of all Movies in category Horror or Adventure in ascending order of releasedate.
    select
    movie_name, releasedate
    from movie
    where 
        cat = 'Horror' or cat = 'Adventure'
    order by
        releasedate
    
-- write a query to fetch only first 3 records from movie table. Query must return movie_name, cat, releasedate in result set.
    select 
    movie_name, cat, releasedate
    from movie
    limit 3

-- write a sql query to find the records whose movie_name starts with T. Query must return movie_name.
    select
    movie_name
    from movie
    where movie_name like 'T%'

-- write a sql query to find the records whose movie_name ends with e. Query must return movie_name.
    select 
    movie_name
    from movie
    where
        movie_name like '%e'
            -- or
        -- right(movie_name,1) = 'e'
    
-- write a sql query to find the records whose movie_name contains ng at any position. Query must return movie_name.
    -- // by using like operator 
    select
    movie_name
    from movie
    where
        movie_name like '%ng%'


        -- or // whithout using like operator
        
        instr (movie_name, 'ng') // LOCATE ('ng', movie_name) > 0
    
-- write a query to fetch a records that contain character n at third position in the movie_name. Query must return movie_name in the result set.
    select 
    movie_name
    from movie
    where
-- // using like operator
    
    -- movie_name like '__n%'

-- // without using like operator 

    substr(movie_name,3,1) = 'n'

-- Write a query to find 2nd highest productioncost from the movie table. Query must return productioncost.
    select
    productioncost
    from movie
    order by 
        productioncost desc
    limit 1 offset 2
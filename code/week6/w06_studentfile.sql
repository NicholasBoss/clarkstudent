-- *********************************
-- W06 STUDENT SQL WORKBOOK
-- *********************************

-- *********************************
-- CRUD - DDL / DML
-- C = Create the Database (FORWARD ENGINEER / INSERT)
-- R = Read the Data (SELECT)
-- U = Update the Database (ALTER / UPDATE)
-- D = Delete Data or Database (DROP / DELETE)
-- *********************************

-- ***
-- C
-- ***
/*
    List the column names in the INSERT statement so you know
    which columns you are inserting into. We do not need to 
    list the primary key column as it is auto-incrementing
    
    Here is an example template:
    
    INSERT INTO tablename
    ( column_1
    , column_2
    , etc)
    VALUES
    ( 'String value'
    , 12
    , '2024-01-31' );

    For more than one record, replace the ; with a comma then
    repeat the same structure as the previous tuple.
*/

-- 1. Open and run the church_insert.sql file

-- 2. Write an INSERT statement for all parent tables
-- 3. Write an INSERT statement for all child tables
-- 4. Write an INSERT statement for all linking tables



-- ***
-- R
-- ***

-- 5. Switch system to use the 'church' database

/* 6.
 Click on the table icon next to each table in the Schema list
 to auto generate a SELECT all statement
*/



-- ***
-- U
-- ***

 -- 7. Update the calling of Doris to Relief Society President

-- ***
-- D
-- ***

-- 8. Delete the records of Jared MacWilliamns and Doris Garcia



-- _________________________________________________________________
-- TODO: add update structure example similar to Insert
-- TODO: add delete strucuture example similar to Insert
-- TODO: remove this TODO text and all text below
-- _________________________________________________________________

-- This is VERY DANGEROUS and will change all actors to 'Tommy'
-- If safe mode is enabled it could prevent it but don't plan on that

-- This only updates Tommy Hanks from 'Tom Hanks' to 'Tommy Hanks'

-- Better to use primary key when updating or deleting

-- Delete the record/entry of the actor with the ID of 1

-- DELETE the entire table and all entries/records in the 'actors' table

-- DELETE the entire database, all tables, and all entries/records

-- The faster way to do inserts, create all records in one insert statement
-- Run after you forward engineer an empty database
-- Creates new records/rows for each actor

-- Better to use the VALUE column names 
-- INSERT INTO actors VALUES (actor_id, last_name, first_name)

-- Output the result set of all columns (*) from the table 'actors'

-- Create records of the movies


-- Output the result set of all columns (*) from the table 'movies'


-- Inserting data into a linking table
-- Look at SELECT statements for both actor and movie to get the ID numbers here
-- Look at the PDF or dataset provided to know which actor is in which movie


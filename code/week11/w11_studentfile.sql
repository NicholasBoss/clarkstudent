-- *********************************
-- W11 STUDENT SQL WORKBOOK
-- *********************************


-- ************
-- Subqueries
-- ************

/*
  ORDER OF OPERATION (The way we write our queries):
     SELECT     column_name AS 'Alias1'
     ,          Function(column_name_2) AS 'Alias2'
     FROM       table1 t1   -- t1 and t2 are table aliases
       JOIN       table2 t2   -- join types: INNER, LEFT, RIGHT
       ON         t1.table1_id = t2.table1_id -- PK and FK might not always be the same name
     WHERE      column_name = (SELECT column_name FROM table1 ...) -- Can only return one record
     GROUP BY   column_name (Must be a column in the SELECT clause that is NOT in an aggregate function)
     HAVING     aggregate_function(column_name) = group condition
     ORDER BY   column_name (DESC)
     LIMIT      # of rows;
     To remember this: Stay Firm (JOINED) With God, Honoring Our Lord
*/
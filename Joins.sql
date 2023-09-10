-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

-- Here are the different types of the JOINs in SQL:

-- (INNER) JOIN :  Returns records that have matching values in both tables

SELECT column_name(s) FROM table1 INNER JOIN table2 ON table1.column_name = table2.column_name;
-- Example
SELECT Orders.OrderID, Customers.CustomerName FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;


-- LEFT (OUTER) JOIN :  
-- The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2).
-- The result is 0 records from the right side, if there is no match.

SELECT column_name(s) FROM table1 LEFT JOIN table2 ON table1.column_name = table2.column_name;
-- Example
SELECT Customers.CustomerName, Orders.OrderID FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID ORDER BY Customers.CustomerName;


-- RIGHT (OUTER) JOIN :  
-- The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1).
-- The result is 0 records from the left side, if there is no match.

SELECT column_name(s) FROM table1 RIGHT JOIN table2 ON table1.column_name = table2.column_name;

-- FULL (OUTER) JOIN :  Returns all records when there is a match in either left or right table

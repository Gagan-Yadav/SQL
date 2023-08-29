-- A clause in SQL is a built-in function that helps to fetch the required records from a database table. A clause receives a 
-- conditional expression, i.e. a column name or some terms involving the columns. The clause calculates the result based on the 
-- given statements in the expression. When a large amount of data is stored in the database, clauses are helpful to filter and 
-- analyze the queries. There are different types of clauses in SQL that are available for fetching the desired data.


-- Students Reference Table

-- stu_id	stu_name	    stu_fees	stu_subject	    stu_age	    stu_class
--    1	    Divyesha Patil	3000	    Maths	            16	    10
--    2	    Mayra Pandit	2000	    Social Science	    15	    10
--    3	    Kunal Purohit	4500	    Chemistry	        17	    11
--    4	    Manvi Tyagi	    2000	    Social Science	    16	    9
--    5	    Joy Yadav	    3000	    Maths	            16	    9
--    6	    Tisha Shah	    2500	    Science	            15	    9
--    7	    Surbhi Soni	    4000	    Chemistry	        17	    10


-- WHERE =>	The WHERE clause in SQL is used to retrieve the specific data from the database that specifies the conditions exactly that are given in the UPDATE, DELETE, etc. statements.
SELECT * FROM Students WHERE stu_fees < 3500;

-- HAVING => HAVING clause can be used in a GROUP BY clause. It is used to specify a search condition for a group in the database tables.
SELECT * FROM Students GROUP BY stu_id HAVING stu_age < 17;

-- GROUP BY => To group the result set of the rows that have the same values in the result set from the database tables, the GROUP BY clause is used.
SELECT *  FROM Students GROUP BY stu_id HAVING stu_age < 17;

-- ORDER BY =>	The ORDER BY clause in SQL is used for sorting the records of the database tables.
SELECT * FROM Students ORDER BY stu_fees;

-- TOP =>	This clause is used when the database has many records. It is used to specify the total number of records to be fetched or returned.

-- WITH =>	WITH clause acts as a temporary view as it is available only during the execution of SELECT, UPDATE, INSERT, DELETE, etc. statements. It is used to simplify complex and long queries.

-- LIKE =>	The SQL LIKE clause compares a value to similar values using wildcard operators, i.e. per cent sign ( % ) and the underscore operator ( _ ).

-- FROM =>	The FROM clause in SQL is used to select the database tables, which are manipulated using the SELECT, DELETE, and UPDATE statements.

-- LIMIT =>	The LIMIT clause is used when you are dealing with large databases. It is used to specify the maximum number of rows to be retrieved from the table.

-- AND =>	The AND clause is used when multiple conditions are specified in a query and returns a dataset when all the conditions given in the AND clause meet the requirements.

-- OR =>	The OR clause is used when multiple conditions are specified in a query and returns a dataset when one of those conditions gets satisfied.
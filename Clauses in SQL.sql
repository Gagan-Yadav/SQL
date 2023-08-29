-- A clause in SQL is a built-in function that helps to fetch the required records from a database table. A clause receives a 
-- conditional expression, i.e. a column name or some terms involving the columns. The clause calculates the result based on the 
-- given statements in the expression. When a large amount of data is stored in the database, clauses are helpful to filter and 
-- analyze the queries. There are different types of clauses in SQL that are available for fetching the desired data.

-- HAVING =>HAVING clause can be used in a GROUP BY clause. It is used to specify a search condition for a group in the database tables.

-- WHERE =>	The WHERE clause in SQL is used to retrieve the specific data from the database that specifies the conditions exactly that are given in the UPDATE, DELETE, etc. statements.

-- Students Reference Table

-- stu_id	stu_name	    stu_fees	stu_subject	    stu_age	    stu_class
-- 1	    Divyesha Patil	3000	    Maths	            16	    10
-- 2	    Mayra Pandit	2000	    Social Science	    15	    10
-- 3	    Kunal Purohit	4500	    Chemistry	        17	    11
-- 4	    Manvi Tyagi	    2000	    Social Science	    16	    9
-- 5	    Joy Yadav	    3000	    Maths	            16	    9
-- 6	    Tisha Shah	    2500	    Science	            15	    9
-- 7	    Surbhi Soni	    4000	    Chemistry	        17	    10

SELECT * FROM Students WHERE stu_fees < 3500;
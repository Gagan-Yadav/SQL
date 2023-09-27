-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

-- Equilateral   : It's a triangle with  sides of equal length.
-- Isosceles     : It's a triangle with  sides of equal length.
-- Scalene       : It's a triangle with  sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.
SELECT CASE WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle' WHEN A = B AND B = C THEN 'Equilateral' WHEN A = B OR B = C OR A = C THEN 'Isosceles' ELSE 'Scalene' END FROM TRIANGLES;


-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
-- * * * * * 
-- * * * * 
-- * * * 
-- * * 
-- *
-- Write a query to print the pattern P(20).
SET @no_of_lines = 20 + 1;
SELECT REPEAT('* ', @no_of_lines := @no_of_lines -1) FROM INFORMATION_SCHEMA.TABLES;


-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
-- * 
-- * * 
-- * * * 
-- * * * * 
-- * * * * *
-- Write a query to print the pattern P(20).
set @number = 0;
select repeat('* ', @number := @number + 1) from information_schema.tables where @number < 20;
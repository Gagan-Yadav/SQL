-- The following syntax can create a database.
CREATE DATABASE MyDatabase;

-- Use the following syntax to replace the current database with another database you’re working on:
USE MyDatabase;

-- Using the following syntax, we can permanently destroy a database and its associated files. All the tables that are a part of that database will be deleted if we use the following command.
DROP DATABASE IF EXISTS MyDatabase;  

-- Use the following syntax to display all databases on the current server:
SHOW DATABASES; 

-- This command displays all tables in a current database.
SHOW TABLES;

-- This command creates a new table:
CREATE TABLE Marks(
    ID integer,
     Name varchar (100),
      Marks integer
      );

-- To insert values into a table type the following command:
INSERT INTO Marks VALUES (001,'GAGAN',94);

-- In a table, add a new column:
-- For example to add Subject Name column, you have to type the following command:
ALTER TABLE Marks ADD Grade varchar(100);

-- To remove a column from a table, do the following:
ALTER TABLE Marks DROP Grade;

-- To add a primary key to a table, do the following
ALTER TABLE Marks ADD PRIMARY KEY (ID);

-- To remove the primary key of a table, do the following:
ALTER TABLE Marks DROP PRIMARY KEY;

-- You can drop a table using the following command:
DROP TABLE IF EXISTS Marks;

-- To show the columns of a table, type the following code:
DESCRIBE Marks; 

-- To show the information of a column of a table, type the following command:
DESCRIBE table_name column_name;

-- Remove duplicate rows from a query’s result:
SELECT DISTINCT (column) FROM Table_name;


            -- MySQL command-line client commands
            -- mysql -u [username] -p;
            -- To connect MySQL server using MySQL command-line client with a username and password (MySQL will prompt for a password).

            -- mysql -u [username] -p [database];
            -- To connect MySQL Server with a specified database using a username and password.

            -- exit;
            -- To exit MySQL command line.

            -- mysql> system clear;
            -- On Linux, type the above command to clear the MySQL screen console window.
            -- On Windows OS, there is currently no command to clear the MySQL screen console.
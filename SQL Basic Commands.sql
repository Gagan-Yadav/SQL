CREATE DATABASE MyDatabase;

-- Use the following syntax to replace the current database with another database you’re working on:
USE db_name;

-- Using the following syntax, we can permanently destroy a database and its associated files. All the tables that are a part of that database will be deleted if we use the following command.
DROP DATABASE IF EXISTS db_name;  

-- Use the following syntax to display all databases on the current server:
mysql> SHOW DATABASES; 

-- This command displays all tables in a current database.
SHOW TABLES;

-- This command creates a new table:
CREATE TABLE Marks(
    ID integer,
     Name varchar (100),
      Marks integer
      );

-- To insert values into a table type the following command:
INSERT INTO Marks
VALUES (001,'GAGAN',94);

-- In a table, add a new column:
-- For example to add Subject Name column, you have to type the following command:
ALTER TABLE Marks ADD Grade varchar(100);

-- To remove a column from a table, do the following:
ALTER TABLE Marks DROP Grade;

-- To add a primary key to a table, do the following
ALTER TABLE Marks ADD PRIMARY KEY (ID);
1. Intro to SQL

• Definition

• Purpose • Relational DBs

• DBMS

2.Basic SQL Syntax

• SELECT

• FROM

• WHERE

• ORDER BY

• GROUP BY

3. Data Types

• Integer

• Floating-Point

• Character

• Date

• VARCHAR

• TEXT

• BLOB

• BOOLEAN

4.Sub languages

1. DML (Data Manipulation Language):

Purpose: DML is used for manipulating data stored in the database. It involves operations like querying data, inserting new records, updating existing records, and deleting records.
Common Commands: SELECT, INSERT, UPDATE, DELETE
  
2. DDL (Data Definition Language):
Purpose: DDL is used for defining and managing the structure of the database, including tables, indexes, and constraints. DDL statements are responsible for creating, altering, and deleting database objects.
Common Commands: CREATE, ALTER, DROP
  
3. DQL (Data Query Language):
Purpose: DQL is a subset of SQL that specifically deals with the retrieval of information from the database. It is used for querying the database to extract specific information based on certain criteria.
Common Commands: SELECT
  
4. DCL (Data Control Language):
Purpose: DCL is concerned with the permissions and access control of the database. It includes commands that control who can access the database, what operations they can perform, and what data they can see.
Common Commands: GRANT, REVOKE
  
5. TCL (Transaction Control Language):
Purpose: TCL is used to manage transactions within a database. Transactions are sequences of one or more SQL statements that are treated as a single unit of work. TCL statements control the beginning and end of transactions.
Common Commands: COMMIT, ROLLBACK, SAVEPOINT
  
In summary:

DML is focused on manipulating data (SELECT for querying, INSERT, UPDATE, DELETE for modifying data).
DDL is focused on defining and managing the structure of the database (CREATE for creating tables, ALTER for modifying structures, DROP for deleting objects).
DQL is specifically for querying data and retrieving information from the database (SELECT).
DCL is concerned with controlling access to the database, specifying who can do what (GRANT for providing permissions, REVOKE for revoking permissions).
TCL is used to manage transactions, ensuring the consistency and integrity of the database (COMMIT for making changes permanent, ROLLBACK for undoing changes, SAVEPOINT for marking points within a transaction).

5. Data Manipulation

• INSERT
  INSERT INTO employees (employee_id, first_name, last_name, salary) VALUES (101, 'John', 'Doe', 50000);

• UPDATE
  UPDATE employees SET salary = 55000 WHERE employee_id = 101;

• DELETE
  DELETE FROM employees WHERE employee_id = 101;

6. Data Definition • CREATE

• ALTER
  ALTER TABLE employees ADD COLUMN email VARCHAR(255);

• DROP

• Indexes

7.Query Filtering and Sorting

• WHERE

• AND

• OR Conditions

• Ascending

• Descending

8. Data Aggregation

• SUM

• AVG

• COUNT

• MIN

• MAX

9.Joins and Relationships

• INNER JOIN

• LEFT JOIN

• RIGHT JOIN

• Self-Joins

• Cross Joins

• FULL OUTER JOIN

10.Subqueries

• Subqueries used in
  
• Filtering data

• Aggregating data

• Joining tables

• Correlated Subqueries

11. Views

• Creating

• Modifying

• Dropping Views

12. Transactions

• ACID Properties

• COMMIT

• ROLLBACK

• SAVEPOINT

• ROLLBACK TO SAVEPOINT

13.Stored Procedures

• CREATE PROCEDURE

• ALTER PROCEDURE

• DROP PROCEDURE

• EXECUTE PROCEDURE

• User-Defined Functions (UDFs)

14.Triggers

• Trigger Events

• Trigger Execution and Syntax

15. Security and Permissions

• CREATE USER • GRANT

• REVOKE

• ALTER USER

• DROP USER

16.Optimizations

• Indexing Strategies • Query Optimization

17.Normalization

• 1NF(Normal Form)

• 2NF

• 3NF

• BCNF

18.Backup and Recovery

• Database Backups

• Point-in-Time Recovery

19.NoSQL Databases

• MongoDB

• Cassandra etc...

• Key differences

20. Data Integrity

• Primary Key

• Foreign Key

21.Advanced SQL Queries

• Window Functions

• Common Table Expressions (CTES)

22.Full-Text Search

• Full-Text Indexes

• Search Optimization

23. Data Import and Export

• Importing and Exporting Data (CSV, JSON) • Using SQL Dump Files

24. Database Design

• Entity-Relationship Diagrams (ERDs)

• Normalization Techniques

25.Advanced Indexing

• Composite Indexes

• Covering Indexes

26.Database Transactions

• Savepoints and Nested Transactions

• Two-Phase Commit Protocol

27.Performance Tuning

• Query Profiling and Analysis

• Query Cache Optimization

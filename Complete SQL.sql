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
  DROP TABLE employees;

• Indexes
  CREATE INDEX idx_last_name ON employees (last_name);

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
  CREATE VIEW employee_view AS SELECT employee_id, first_name, last_name, salary FROM employees WHERE department_id = 1;

• Modifying
  CREATE OR REPLACE VIEW employee_view AS SELECT employee_id, first_name, last_name, salary FROM employees WHERE department_id = 2;

• Dropping Views
  DROP VIEW employee_view;

12. Transactions
    In the context of database management systems (DBMS), a transaction is a logical unit of work that consists of one or more SQL statements. Transactions are used to ensure the integrity and consistency of a database by following the ACID properties (Atomicity, Consistency, Isolation, and Durability). 

• ACID Properties
    The ACID properties are a set of characteristics that ensure the reliability and consistency of transactions in a database system. ACID stands for Atomicity, Consistency, Isolation, and Durability. These properties are essential for maintaining the integrity of the database and ensuring that transactions are processed reliably.

1. Atomicity:
Definition: Atomicity ensures that a transaction is treated as a single, indivisible unit of work. Either all the changes made by the transaction are committed to the database, or none of them are. If any part of the transaction fails, the entire transaction is rolled back to its original state.
Example: Consider a funds transfer between two bank accounts. Either the entire transfer occurs successfully, updating the balance in both accounts, or none of it happens.

2. Consistency:
Definition: Consistency ensures that a transaction brings the database from one valid state to another. The database must meet a set of predefined integrity constraints before and after the transaction. If a transaction violates any of these constraints, it is rolled back.
Example: If a database enforces a constraint that every employee must belong to a department, a transaction attempting to add an employee without a department affiliation would be rolled back.

3. Isolation:
Definition: Isolation ensures that the execution of one transaction is independent and isolated from the execution of other transactions. Each transaction appears to be the only transaction in the system, even though multiple transactions may be executing concurrently. Isolation prevents interference between transactions.
Example: If two transactions are updating the same data concurrently, isolation ensures that each transaction sees the data as it existed before the other transaction started.

4. Durability:
Definition: Durability guarantees that once a transaction is committed, its changes are permanent and will survive any subsequent failures, such as power outages or system crashes. The changes made by the transaction are stored in non-volatile storage and can be recovered even if the system restarts.
Example: After a user confirms a purchase on an e-commerce website, the transaction is committed, and the user can be confident that the purchase details will not be lost even if there is a system failure.

Ensuring that transactions adhere to the ACID properties is crucial for maintaining data integrity and reliability in database systems, especially in scenarios where multiple transactions may be occurring simultaneously.

        BEGIN; -- Begin the transaction

        UPDATE accounts SET balance = balance - 100 WHERE account_id = 123; -- Deduct $100 from account 123
        UPDATE accounts SET balance = balance + 100 WHERE account_id = 456; -- Add $100 to account 456

        COMMIT; -- Commit the transaction, making the changes permanent

If any part of the transaction encounters an error, the transaction can be rolled back, and the database will be left in its original state:
        
        BEGIN;
        UPDATE accounts SET balance = balance - 100 WHERE account_id = 123;
        -- Simulate an error (e.g., a constraint violation)
        ROLLBACK; -- Roll back the transaction, undoing any changes
        -- The database remains unchanged

Transactions are fundamental to maintaining data integrity, especially in scenarios with concurrent access and multiple users interacting with the database simultaneously. They ensure that the database remains in a reliable and consistent state, even in the presence of errors or system failures.

• COMMIT
    Purpose: Marks the successful end of a transaction.
    Action: When a transaction is committed, all the changes made by the transaction, such as insertions, updates, or deletions, are permanently saved in the database.
    Result: The changes are made visible to other transactions, ensuring that the database reflects the completed work.

• ROLLBACK
    Purpose: Undoes the changes made by a transaction.
    Action: If an error or issue occurs during a transaction, the entire transaction can be rolled back, reverting the database to its state before the transaction started.
    Result: The database remains unchanged, and no partial or incomplete changes from the transaction are applied.

• SAVEPOINT
    a SAVEPOINT is a feature that allows you to set a point within a transaction to which you can later roll back. It provides a way to create a temporary checkpoint within a larger transaction, giving you the flexibility to roll back to that specific point rather than rolling back the entire transaction.
    Purpose: Establishes a named point within a transaction to which you can later roll back.
    
    Syntax:
    SAVEPOINT savepoint_name;

        BEGIN;
        UPDATE accounts SET balance = balance - 100 WHERE account_id = 123; -- Deduct $100 from account 123
        SAVEPOINT my_savepoint; -- Set a savepoint within the transaction
        UPDATE accounts SET balance = balance + 100 WHERE account_id = 456; -- Add $100 to account 456
        -- Simulate an error (e.g., a constraint violation)
        ROLLBACK TO my_savepoint; -- Roll back to the savepoint, undoing changes after the savepoint
        COMMIT; -- Commit the transaction with changes up to the savepoint


• ROLLBACK TO SAVEPOINT
    the ROLLBACK TO SAVEPOINT statement is used to undo part of a transaction by rolling back to a specific savepoint within that transaction. This allows you to revert the transaction to a particular state without rolling back the entire transaction.
    The use of SAVEPOINT is particularly helpful in scenarios where you want to handle errors within a transaction without rolling back the entire transaction. It allows for more granular control over transaction management and helps in maintaining a consistent state even when certain parts of the transaction encounter issues.

13.Stored Procedures
    Stored Procedures are a set of SQL statements that are stored and executed on the database server. They allow for the encapsulation of a series of SQL statements into a single named routine, which can be called and executed by applications or other procedures.

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

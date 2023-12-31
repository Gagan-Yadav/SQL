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
    Purpose: To group and execute a set of SQL statements as a single unit.
    Features:
        Input and output parameters can be defined.
        Can contain conditional statements, loops, and error handling.
        Promotes code reusability and maintainability.
        Can be called from applications or other stored procedures.

• CREATE PROCEDURE
    Purpose: To define and create a new stored procedure in the database.
    Syntax:
        CREATE PROCEDURE procedure_name(parameters)
        BEGIN
        -- SQL statements
        END;

    procedure_name: The name of the stored procedure.
    parameters: Input and output parameters for the procedure.

• ALTER PROCEDURE
    Purpose: To modify the definition of an existing stored procedure.
    Syntax:
        ALTER PROCEDURE procedure_name(parameters)
        BEGIN
         -- Modified SQL statements
        END;

    procedure_name: The name of the stored procedure.
    parameters: Input and output parameters for the procedure.

• DROP PROCEDURE
      Purpose: To remove an existing stored procedure from the database.
      Syntax:
          DROP PROCEDURE IF EXISTS procedure_name;

• EXECUTE PROCEDURE
      Purpose: To invoke and execute a stored procedure.
      Syntax:
          CALL procedure_name(parameters);

      procedure_name: The name of the stored procedure.
      parameters: Input values passed to the procedure.

      {
        Example: 
            -- CREATE PROCEDURE
            CREATE PROCEDURE GetEmployeeDetails(IN employee_id INT)
            BEGIN
                SELECT * FROM employees WHERE employee_id = employee_id;
            END;

            -- ALTER PROCEDURE
            ALTER PROCEDURE GetEmployeeDetails(IN employee_id INT, IN department_id INT)
            BEGIN
                SELECT * FROM employees WHERE employee_id = employee_id AND department_id = department_id;
            END;

            -- DROP PROCEDURE
            DROP PROCEDURE IF EXISTS GetEmployeeDetails;

            -- EXECUTE PROCEDURE
            CALL GetEmployeeDetails(101);

            {
              In this example, a stored procedure GetEmployeeDetails is initially created, altered to accept an additional parameter,
              and then dropped. The CALL statement is used to execute the stored procedure with a specific parameter. These SQL
              statements are generally executed in a database management tool or within the application code to interact with the 
              database.
            }

      }

• User-Defined Functions (UDFs)
      User-Defined Functions (UDFs) in a database system are custom functions created by users to perform specific operations. These functions can encapsulate a set of SQL statements and be used in SQL queries, providing modularity and reusability of code. There are two main types of UDFs: Scalar Functions and Table-Valued Functions.

14.Triggers
      Triggers in a database system are special types of stored procedures that are automatically executed (or "triggered") in response to specific events occurring in the database. These events can include data modifications (inserts, updates, deletes), or other changes to the database schema. Triggers are useful for enforcing data integrity, automating tasks, or logging changes.

• Trigger Events
      Purpose: Define the events that will activate a trigger.
      Common Events:
      BEFORE INSERT: Triggered before a new row is inserted into a table.
      AFTER INSERT: Triggered after a new row is inserted into a table.
      BEFORE UPDATE: Triggered before a row is updated.
      AFTER UPDATE: Triggered after a row is updated.
      BEFORE DELETE: Triggered before a row is deleted.
      AFTER DELETE: Triggered after a row is deleted.

      Syntax:
        CREATE TRIGGER trigger_name
        BEFORE/AFTER INSERT/UPDATE/DELETE ON table_name
        FOR EACH ROW
        BEGIN
            -- Trigger logic here
        END;

      trigger_name: The name of the trigger.
      BEFORE/AFTER: Specifies whether the trigger should execute before or after the event.
      INSERT/UPDATE/DELETE: Specifies the type of event that activates the trigger.
      table_name: The name of the table on which the trigger is defined.
      FOR EACH ROW: Indicates that the trigger should be executed once for each affected row.     

• Trigger Execution and Syntax
        Purpose: Define the logic that should be executed when the trigger is activated.
        Syntax:
            CREATE TRIGGER trigger_name
            BEFORE/AFTER INSERT/UPDATE/DELETE ON table_name
            FOR EACH ROW
            BEGIN
                -- Trigger logic here
            END;

        The trigger logic is written between the BEGIN and END keywords.
        The NEW and OLD keywords can be used to reference the new and old values of the affected rows in the trigger logic.
        The trigger logic can include SQL statements, conditional statements, and other procedural code.


15. Security and Permissions

• CREATE USER 
      Purpose: To create a new user account in the database.
      Syntax:
          CREATE USER username [IDENTIFIED BY 'password'];

      username: The name of the new user.
      IDENTIFIED BY 'password': Optional. Specifies the password for the user.

• GRANT
      Purpose: To give specific privileges or access rights to a user.
      Syntax:
          GRANT privilege(s) ON object TO user;

      privilege(s): The specific privileges (e.g., SELECT, INSERT, UPDATE) granted to the user.
      object: The database object (e.g., table, view) on which the privileges are granted.
      user: The user to whom the privileges are granted.

• REVOKE
      Purpose: To revoke previously granted privileges from a user.
      Syntax:
          REVOKE privilege(s) ON object FROM user;

      privilege(s): The specific privileges to be revoked.
      object: The database object from which the privileges are revoked.
      user: The user from whom the privileges are revoked.

• ALTER USER
      Purpose: To modify properties or settings of an existing user.
      Syntax:
          ALTER USER username [options];

      username: The name of the user to be modified.
      options: Various options that can be modified, such as changing the password or account status.

• DROP USER
      Purpose: To remove an existing user account from the database.
      Syntax:
          DROP USER username;

      username: The name of the user to be dropped.

16.Optimizations
        Optimizations, especially in the context of databases, are crucial for improving the performance of queries and overall system efficiency.

• Indexing Strategies 
      What is an Index:
            An index is a data structure that provides a quick lookup of rows in a table based on the values in one or more columns.
      
      Types of Indexes:

      Primary Index:
            Created on the primary key column(s) of a table.
            Ensures uniqueness and fast retrieval of rows.

      Secondary Index:
          Created on columns other than the primary key.
          Allows for fast retrieval based on specific columns.

      Composite Index:
          Created on multiple columns.
          Useful when queries involve conditions on multiple columns.

      Clustered vs. Non-Clustered Index:

      Clustered Index:
          Determines the physical order of data rows in a table.
          Changes to the indexed columns may impact the order of the entire table.

      Non-Clustered Index:
          Does not affect the physical order of data rows.
          Maintains a separate structure to map indexed values to row locations.

      When to Use Indexing:

        Use indexes on columns frequently used in WHERE clauses, JOIN conditions, and ORDER BY clauses.
        Consider the trade-offs between the performance gain of indexing and the overhead of maintaining indexes during data modifications (INSERT, UPDATE, DELETE).

• Query Optimization
Query Execution Plan:

A query execution plan is a strategy chosen by the database engine to retrieve and process data based on the SQL query.
The plan outlines how the database will access tables and apply conditions to return the result set.
Common Optimization Techniques:

Use of Indexes:
Utilize appropriate indexes to speed up data retrieval.
Properly Structured Queries:
Write efficient and well-structured queries.
Avoid unnecessary SELECT * and use specific columns.
Avoiding SELECT DISTINCT:
Use DISTINCT sparingly, as it can be resource-intensive.
Use of Joins:
Be mindful of the type of joins used (INNER JOIN, LEFT JOIN) and their impact on performance.
Limiting Result Sets:
Use LIMIT/OFFSET or FETCH FIRST clauses to limit the number of returned rows.
Avoiding Subqueries When Possible:
Subqueries can be resource-intensive; try to use JOINs or other methods.
Table Partitioning:

Partitioning involves dividing large tables into smaller, more manageable pieces.
Can improve query performance by reducing the amount of data that needs to be scanned.
Materialized Views:

A materialized view is a precomputed, stored result of a query.
Can be used to improve the performance of complex queries by storing intermediate results.
Regular Database Maintenance:

Regularly analyze and update statistics on tables and indexes.
Perform index maintenance and optimize database configuration parameters.
Use of Caching:

Utilize database query caching to store and reuse results of frequently executed queries.
Cache frequently accessed data to reduce the need for repeated queries.
Optimizations should be approached with consideration for the specific database system in use, the nature of the data, and the types of queries executed. Regular monitoring and performance tuning are essential for maintaining optimal database performance.

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

# PostgreSQL Command Line Reference

| Command | Explanation | Detailed example usage |
| ------- | ----------- | ---------------------- |
| `psql -U username -d database -h host -p port` | Log in to PostgreSQL with specified username, database, host, and port. | `psql -U postgres -d mydb -h localhost -p 5432` |
| `psql -U username -W` | Log in to PostgreSQL and prompt for a password. | `psql -U postgres -W` |
| `\l` or `\list` | List all databases. | `\l` |
| `\c database` or `\connect database` | Connect to a different database. | `\c mydb2` |
| `\dt` | List all tables in the current database. | `\dt` |
| `\d tablename` | Describe the structure of a specific table. | `\d mytable` |
| `SELECT * FROM tablename;` | Query all rows from a specific table. | `SELECT * FROM employees;` |
| `\q` | Quit the psql command-line interface. | `\q` |
| `\du` | List all roles. | `\du` |
| `\dn` | List all schemas. | `\dn` |
| `\df` | List all functions. | `\df` |
| `\dv` | List all views. | `\dv` |
| `\dx` | List all installed extensions. | `\dx` |
| `CREATE DATABASE dbname;` | Create a new database. | `CREATE DATABASE testdb;` |
| `DROP DATABASE dbname;` | Delete a database. | `DROP DATABASE testdb;` |
| `CREATE TABLE tablename (columnname datatype);` | Create a new table. | `CREATE TABLE employees (id SERIAL PRIMARY KEY, name VARCHAR(100));` |
| `DROP TABLE tablename;` | Delete a table. | `DROP TABLE employees;` |
| `ALTER TABLE tablename ADD COLUMN columnname datatype;` | Add a column to a table. | `ALTER TABLE employees ADD COLUMN email VARCHAR(100);` |
| `INSERT INTO tablename (columns) VALUES (values);` | Insert data into a table. | `INSERT INTO employees (name, email) VALUES ('John Doe', 'john@example.com');` |
| `UPDATE tablename SET columnname = value WHERE condition;` | Update data in a table. | `UPDATE employees SET email = 'john.doe@example.com' WHERE name = 'John Doe';` |
| `DELETE FROM tablename WHERE condition;` | Delete data from a table. | `DELETE FROM employees WHERE name = 'John Doe';` |
| `CREATE USER username WITH PASSWORD 'password';` | Create a new user with a password. | `CREATE USER newuser WITH PASSWORD 'password123';` |
| `DROP USER username;` | Delete a user. | `DROP USER newuser;` |
| `GRANT ALL PRIVILEGES ON DATABASE dbname TO username;` | Grant all privileges on a database to a user. | `GRANT ALL PRIVILEGES ON DATABASE testdb TO newuser;` |
| `REVOKE ALL PRIVILEGES ON DATABASE dbname FROM username;` | Revoke all privileges on a database from a user. | `REVOKE ALL PRIVILEGES ON DATABASE testdb FROM newuser;` |
| `\timing` | Toggle timing of commands. | `\timing` |
| `\echo message` | Print a message to the screen. | `\echo 'Hello, PostgreSQL!'` |
| `\set variable value` | Set a psql variable. | `\set myvar 'some_value'` |
| `\unset variable` | Unset (remove) a psql variable. | `\unset myvar` |
| `\i filename` | Execute commands from a file. | `\i /path/to/file.sql` |
| `\o filename` | Send query results to a file or | `\o /path/to/output.txt` |

This table provides an overview of common PostgreSQL commands used in the psql command-line interface for various database operations.

## Start postgres container

```bash
docker container run --rm --name postgres_db -e POSTGRES_DB=postgres -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=password -p 5432:5432 postgres
```

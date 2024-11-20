# MySQL Commands

| Command                           | Explanation                                                                 | Usage Example                                         |
|-----------------------------------|-----------------------------------------------------------------------------|-------------------------------------------------------|
| `mysql -u username -p`            | Logs into the MySQL server with a specified username. Prompts for a password. | `mysql -u root -p`                                   |
| `DESCRIBE table_name;`            | Displays the structure of a specified table, including columns, types, etc. | `DESCRIBE employees;`                                  |
| `SHOW COLUMNS FROM table_name;`   | Provides details about the columns of a table, similar to `DESCRIBE`.       | `SHOW COLUMNS FROM employees;`                         |
| `SHOW TABLES;`                    | Lists all the tables in the currently selected database.                    | `SHOW TABLES;`                                         |
| `SHOW INDEX FROM table_name;`     | Shows the indexes (keys) defined on a table.                                | `SHOW INDEX FROM employees;`                           |
| `SHOW CREATE TABLE table_name;`   | Displays the `CREATE TABLE` statement used to create the table.             | `SHOW CREATE TABLE employees;`                         |
| `SHOW DATABASES;`                 | Lists all databases managed by the MySQL server.                            | `SHOW DATABASES;`                                      |
| `SHOW TABLE STATUS LIKE 'table';` | Displays extensive information about a specific table, like its engine, row format, etc. | `SHOW TABLE STATUS LIKE 'employees';`  |
| `SHOW GRANTS FOR 'user'@'host';`  | Shows the privileges granted to a specified MySQL user.                     | `SHOW GRANTS FOR 'root'@'localhost';`                  |
| `SHOW PROCESSLIST;`               | Displays a list of active connections and running queries on the MySQL server. | `SHOW PROCESSLIST;`                                  |
| `SHOW VARIABLES LIKE 'var_name';` | Displays the current value of a specific MySQL system variable.             | `SHOW VARIABLES LIKE 'max_connections';`               |

## Start mysql container

```bash
docker container run --rm --name postgres_db -e MYSQL_DATABASE=mysql -e MYSQL_USER=mysql -e MYSQL_PASSWORD=password -e MYSQL_ROOT_PASSWORD=password -p 3306:3306 mysql
```

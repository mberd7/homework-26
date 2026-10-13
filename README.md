# homework-26

SQL homework #26: creating tables with primary and foreign keys, and running the full CRUD cycle on them.

> Task descriptions in the SQL file are in Georgian.

## Schema

The script creates a database named `hw_26` with two related tables:

```
Authors                         Books
---------------------           ----------------------------
AuthorID  INT  PK, AI   <---+   BookID    INT  PK, AI
FirstName VARCHAR(100)      |   Title     VARCHAR(200)
LastName  VARCHAR(100)      |   Price     DECIMAL(10,2)
                            +-- AuthorID  INT  FK
```

The sample data is five Georgian authors (Galaktion Tabidze, Aka Morchiladze, Nodar Dumbadze, Otar Chiladze, Jemal Karchkhadze) and one book by each.

## Steps

File: [`hw_26.sql`](hw_26.sql)

1. `CREATE DATABASE IF NOT EXISTS hw_26`
2. `CREATE TABLE Authors` with a primary key
3. `CREATE TABLE Books` with a foreign key to `Authors`
4. `INSERT` 5 rows into each table
5. `UPDATE` the price of one book
6. `SELECT … JOIN` books with their authors
7. `DELETE` all rows, deleting `Books` first because of the foreign key
8. `DROP` both tables

## Running

```bash
mysql -u <user> -p < hw_26.sql
```

> **Note:** the script ends by deleting all the data and dropping the tables. To look at the data, run the statements before the `DELETE` / `DROP` section on their own.

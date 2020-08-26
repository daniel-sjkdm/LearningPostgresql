# Postgresql

## Install

To install it in Debian based systems:

```sh
$ sudo apt install 
```




## Basic commands

/\? [commands] | options | variables : Display the backlash "/" commands 
/\h : Display the SQL commands

The commands are divided into the following catergories:
+ General
+ Help
+ Query Buffer
+ Input/Output
+ Conditional
+ Informational
+ Formatting
+ Connection
+ Operating System
+ Variables
+ Large Objects

## Create Database

First, list the available databases by using: \l command. Then create a new one and verify it was created.

```sql
postgres=# CREATE DATABASE hospital;
```

Connect to the database in two different ways:

+ Inside postgres:

```sql
postgres=# \c hospital
```

+ Outside postgres:

```sh
$ psql -h localhost -p 5432 -U postgres -d hospital
```

## Delete Database

```sql
postgres=# DROP DATABASE hospital;
```

## Create Tables

Some of the available data types used by the database are:
```sql
INTEGER
FLOAT

```

Build the database schema by specifying the fields and the data type with modifiers.

```sql
CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    created TIMESTAMP,
);
```


## Create User


## Manage user (permissions)


## 
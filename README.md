# LearningPostgresql
Learning how to setup a database and how to manage it by using postgresql RDBMS.

A relational database is made of _entities_ that represents real objects via _attributes_ or _features_ and also their relationships are represented as one of the following:

+ One to one: a man is currently married with one and only woman (ideally).
+ One to many: a scientist has many Nobel Prizes, but a given Prize Nobel can be owned by only one a scientist.
+ Many to many: a product can be purchased by many buyers and a buyer can purchase many products.

A RDBMS is made up of the following:
+ DDL (Data Definition Language)
+ DQL (Data Query Language)
+ DML (Data Manipulation Language)



To understand the basic and advanced features of databases I'll create one that will manage a set of hospitals owned by one company.


Basic Features:
+ Creating, deleting a database
+ Creating, deleting, updating tables
+ Adding constraints to tables:
  + Primary key
  + Foreign key
  + Check
+ Creating, deleting, managin users
  + Permissions
  + Roles


Advances Features:
+ Functions
+ Views 
+ Triggers 
+ Stored procedures
+ Backups



### Execute a sql file from command line

When you have a sql file, you can run it from terminal:

```sh
$ psql -h <localhost> -d <database> -U <username> -p 5432 -a -b -q -f <filepath>
```

Where:
+ -a : echo all input from script
+ -b : echo failed commands
+ -q : run quetly (only query output)
+ -f : execute commands from the file specified


### Connect to the database 

To connect to a given database, you must provide the username and you will be asked for
your password:

```sh
$ psql -h localhost -p 5432 -d hospital -u postgres
```


### Importing/Exporting csv files 

There are times where the data is in csv format and once we created the database and the needed tables we want to import 
it to populate the database.

#### Importing csv

Two ways to do this:

1. Using psql's command __copy__ (from terminal, server side)
2. Using psql's command __/copy__ (from postgres terminal, client side)

##### Client side

The header argument is optional, you use it only when the file has headers.

```pg
\copy <table_name> from '<path_to_csv_file>' csv header;
```

 


## Hospital Database

There is a set of hospitals, each one has an associated speciality but an speciality maybe shared by one or more hospitals. 
The hospitals also have a set of consulting rooms that are unique to each one. 
An speciality has a fixed cost but it can also include another studies such as XRAY imaging, blood analysis, etc.



### Entities

The possible entities based on the specification are:

+ Hospital
+ Speciality
+ Consulting room
+ Patient
+ Appointment
+ Medical Record

  
### Database schema



### Todo

- [x] Create the database schema
- [x] Download sample data from mockaroo (as .csv)
- [x] Insert data into the tables
- [ ] Create users
- [ ] Manage user permissions
- [ ] Add constraints
- [ ] Create triggers
- [ ] Create views


## Resources

[Install PGADMIN4](https://www.tecmint.com/install-postgresql-and-pgadmin-in-ubuntu/)

[Import csv files](https://popsql.com/learn-sql/postgresql/how-to-import-a-csv-in-postgresql)

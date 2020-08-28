# LearningPostgresql
Learning how to setup a database and how to manage it by using postgresql RDBMS.

A relational database is made of _entities_ that represents real objects via _attributes_ or _features_ and also their relationships are represented as one of the following:

+ One to one: a man is currently married with one and only woman (ideally).
+ One to many: a scientist has many Nobel Prizes, but a given Prize Nobel can be owned by only one a scientist.
+ Many to many: a product can be purchased by many buyers and a buyer can purchase many products.


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
- [ ] Download sample data from mockaroo (as .csv)
- [ ] Insert data into the tables
- [ ] Create users
- [ ] Manage user permissions
- [ ] Add constraints
- [ ] Create triggers
- [ ] Create views


## Resources

[Install PGADMIN4](https://www.tecmint.com/install-postgresql-and-pgadmin-in-ubuntu/)
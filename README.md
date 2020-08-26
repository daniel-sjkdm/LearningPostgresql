# LearningPostgresql
Learning how to setup a database and how to manage it by using postgresql RDBMS.

A relational database is made of _entities_ that represents real objects via _attributes_ or _features_ and also their relationships are represented as one of the following:

+ One to one
+ One to many
+ Many to many



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

### Todo

- [x] Create the database schema
- [ ] Download sample data from mockaroo (as .csv)
- [ ] Insert data into the tables
- [ ] Create users
- [ ] Manage user permissions
- [ ] Add constraints
- [ ] Create triggers
- [ ] Create views
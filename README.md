# Entity-Framework-Core

## Project overview

The School Api will work with both Entity Framework

```
Database-First approach to work with the schooldb
Code-First approach to create new tables to handle the analytics/reports of the schooldb
```

## Pending Steps

```
Add EF core to School Api

Do Database-First for creating the models in applications

Do Code-First for creating new tables to handle the analytics/reports in the schooldb 
 - use Fluent API
 - Create migrations 
 - Use transactions to update reports tables as well and roll back if necessary

Create Repository Layer
Use Sorting, Filtering and Paging in EF Core
Work with ChangeTracking in EF Core
Work with Shadow Property in EF Core
Add Logging in EF Core 
Create procedures and call them using EF Core
Use Linq
Create mock test for the repository
Create real data test in schooldb
```

## Run project

Using cmd in solution folder, run "docker compose up" command

School Api:
http://localhost:54482/swagger/index.html

PgAdmin for manage postgreSQL:
http://localhost:16543/

look at docker compose file for PgAdmin authentication

Click in Add new server

```
Server name: schooldb
Host Name: schooldb
Maintenance database: postgres
Port: 5432
Username: postgres
Password: Postgres2019!
```

Run scripts to create schema and to populate initial data in database


## References:

Databse sample from SQL Server:

https://docs.microsoft.com/en-us/ef/ef6/resources/school-database

EF:

https://www.entityframeworktutorial.net/efcore/entity-framework-core.aspx

PgAdmin, PostgreSQL and docker:

https://renatogroffe.medium.com/postgresql-pgadmin-4-docker-compose-montando-rapidamente-um-ambiente-para-uso-55a2ab230b89

https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-create-table/

https://wiki.ispirer.com/sqlways/postgresql/data-types/decimal_numeric

Books:

Entity Framework Core in Action, 2nd Edition

Brian L. Gorman - Practical Entity Framework Core 6_ Database Access for Enterprise Applications-Apress (2021)
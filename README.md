# Entity-Framework-Core

## Project

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
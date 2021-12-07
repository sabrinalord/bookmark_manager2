refer to https://www.postgresqltutorial.com/postgresql-cheat-sheet/
making a database
make sure u r in psql

CREATE DATABASE database_name;


do \c database_name 
to connect to the database  (and check if it has been made)

CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

 Use psql to create a table called bookmarks in the bookmark_manager database, with two columns: id, a SERIAL PRIMARY KEY, and url, a VARCHAR with a maximum length of 60.

 CREATE [TEMP] TABLE [IF NOT EXISTS] table_name(
   pk SERIAL PRIMARY KEY,
   c1 type(size) NOT NULL,
   c2 type(size) NULL,
   ...
);

\dt to see the table
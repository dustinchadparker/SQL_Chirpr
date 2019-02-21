REQUIRED
Using Workbench, create a database called chirpr.
Using queries, create the following tables:
Users
  id - int not null auto_increment primary key
  name - varchar(x) not null
  email - varchar(x) not null
  password - text null
  _created - datetime default current_timestamp

Chirps
  id
  userid
  text
  location
  _created
Add a foreign key to the userid field of Chirps.
Insert 10 Users into your database.
Insert 100 Chirps into your database.
Practice queries:
Select all chirps
Use * to get all fields
Try selecting only certain fields
Select all users
Select all chirps from a certain user using a join on the foreign key
ADVANCED
Create a Mentions table with the following fields:

Mentions
  userid
  chirpid
Create a primary key that uses both columns in the table (composite key)
Hint: this table is a cross-reference table or many-to-many table so there is no need for an id column. (Don't worry, we'll go over these in the next lecture!)
Create 2 foreign keys
Create one for userid that connects the userid in Mentions to the Users table
Create one for chirpid that connects the chirpid in Mentions to the Chirps table
Insert rows into the Mentions table that connect chirps to users
Practice queries:
Select all chirps that mention certain users
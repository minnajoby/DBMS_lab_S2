create table persons(PersonID integer PRIMARY KEY,name varchar(50) NOT NULL,aadhar integer NOT NULL UNIQUE,age int,CHECK(age>18));

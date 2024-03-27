create database python_db;
use python_db;

create table users(
ID integer auto_increment primary key,
NAME varchar(50),
AGE integer,
CITY varchar(20)
);

insert into users(name, age, city) 
values("Ram", 28, "Chennai"), 
("krish", 25, "Chennai"), 
("akash", 20, "mysore"),
("hemant", 26, "BangalorE");

select * from users



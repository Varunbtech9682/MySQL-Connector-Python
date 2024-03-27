create database sql_workbench;

use sql_workbench;

# Numeric Functions
#abs
#mod
#power
#sqrt
#truncate
#greatest
#least




select abs(55.5);

select abs(-210);

select mod(50, 4);
select mod(10,4) as remainder;

select power(10,2);

select power(4,3) as powerrr;

select sqrt(4);
select sqrt(25) SQUARE_ROOT;

select greatest(10, 2 , 45, 8);

select least(10, 2 , 45, 8);

select truncate(45.67, 0);
select truncate(45.67, 1);
select truncate(45.67, 2);
select truncate(45.67, 4);

select round(10.5);
select round(11.5);
select round(10.4);


create table student
(stu_id int primary key,
stu_name varchar(25),
age int, gender char(1), doa date, city varchar(20));



select * from student;


select stu_name, age, city from student;

select * from student where city="Chicago";

select * from student where city="New York" and gender="M";

select * from student where city="New York" or city="Chicago";

select * from student where not city="New York";

insert into student values
(6, "varun", 25, "M", "2000-08-13", "Chicago");

#groupby
select city, count(*) as total_student
from student 
group by city;


#having
select count(*), city
from student
group by city
having count(*)>1;

#order by
select * from student order by city;

select * from student order by city desc;


#string functions
select upper("varun") as uppercase;
select lower("VARUN") as lowercase;

select character_length("varun") as length;

select stu_name, character_length(stu_name) as length
from student;


select concat(stu_name, " " ,city)
from student;

#REVERSE
SELECT reverse("VARUN");

#REPLACE
select replace("orange is a vegetable", "vegetable", "fruit") as correct_the_sentence;


select length("     India     ");


#left side trim(leading spaces)
select length(ltrim("     India     "));

#Right side trim(trailing spaces)
select length(rtrim("     India     "));

select position("fruit" in "orange in fruit") as name;

select ascii("v");
select ascii("5");
select ascii("varun");
00																																																	


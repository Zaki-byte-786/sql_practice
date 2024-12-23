create database college;
use college;
create table student(
id int primary key,
name varchar(50),
age int not null
);
insert into student values(1,"Salman",27);
insert into student values(2,"Sahil",28);
insert into student values(3,"Sadab",30);
select * from student;
create database if not exists college;
drop database if exists temp;
show databases;
show tables;
drop table student;
show tables;
create table student(
id int primary key,
name varchar(50)
);
drop table student;
create table student(
roll_number int primary key,
name varchar(50)
);
insert into student(roll_number,name)
values (1,"Shah"),(2,"Faiz");
insert into student values (3,"Usman"),(4,"Faheem");
select * from student;

create table yaar(id int(50),name varchar(50),salary int(10));
insert into yaar(id,name,salary) values (1,"Good",10000),(2,"Bad",20000),(3,"mid",30000);
select * from yaar;

create table defaultSalaryTable(
id int primary key,
salary int default 30000);
insert into defaultSalaryTable(id) values (1);
insert into defaultSalaryTable(id) values (2);
insert into defaultSalaryTable(id) values (3);
insert into defaultSalaryTable(id) values (4);
select * from defaultSalaryTable;

-- check constraint demo 
-- create table city(
-- id int primary key,
-- city_name varchar(50),
-- age int,
--  check (age >= 18 and city_name = "Delhi")
-- );

-- create table city(
-- id int primary key,
-- city_name varchar(50),
-- age int,
--  check (age >= 18)
-- );

create database mycollege;
use mycollege;
drop table student;
create table student(
roll_number int primary key,
name varchar(50),
marks int,
grade varchar(5),
city varchar(50)
);
insert into student(roll_number,name,marks,grade,city) values 
(1,"Shah",67,"C","Delhi"),
(2,"Faiz",87,"A","Lucknow"),
(3,"Gulam",45,"E","Agra"),
(4,"Khaleel",79,"B","Agra"),
(5,"Aaftaab",72,"B","Ahemadabad");
select distinct city from student;


use moviesdb;
select * from movies;

select * from movies where imdb_rating >= 8;
select * from movies where release_year = 2022;
select * from movies where industry = "hollywood";
select * from movies where industry = "hollywood" and imdb_rating >= 8 ;
select * from movies where imdb_rating + 1 >= 10;
select * from movies where studio in ("Hombale Films","Marvel Studios");
select * from movies where studio not in ("Hombale Films","Marvel Studios");
select * from movies limit 5;
select * from movies where imdb_rating >= 8 limit 5;
select * from movies where imdb_rating >= 8  order by imdb_rating desc limit 6;

-- function 
select imdb_rating from movies;
select max(imdb_rating) from movies;
select min(imdb_rating) from movies;
select avg(imdb_rating) from movies;
select count(imdb_rating) from movies;
select industry from movies group by industry;
select studio from movies group by studio;
select studio,count(studio) from movies group by studio;
select industry,max(imdb_rating) as max_rating from movies group by industry order by max_rating desc;
select industry,max(imdb_rating) as max_rating from movies group by industry order by industry desc;
select industry,max(imdb_rating),min(imdb_rating),avg(imdb_rating) from movies group by industry order by avg(imdb_rating) desc;










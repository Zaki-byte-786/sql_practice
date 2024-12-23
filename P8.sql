SELECT * FROM moviesdb.financials;
select * from financials;
--  find the movie_id having highest budget
select movie_id,unit,currency,budget from financials where budget = (select max(budget) from financials);
--  find the 2nd highest budget
select max(budget) from financials where budget != ( select max(budget) from financials); 
-- find the movie_id having 2nd highest budget
select movie_id from financials where budget = 
(select max(budget) from financials where budget != ( select max(budget) from financials));


-- alter demo
create table alter_demo(
id int ,
name varchar(20)
);
alter table alter_demo add address varchar(20);
select * from alter_demo;
alter table  alter_demo drop column address;
select * from alter_demo;
alter table alter_demo modify id varchar(20);
desc alter_demo;
alter table alter_demo rename column id to roll_no; 
alter table alter_demo rename to demo;
desc demo;

-- update demo
select * from financials;
-- decrease the highest budget to half
 update financials set budget = budget * 2 where movie_id in (select movie_id from (
 select movie_id from financials where budget = (
select max(budget) from financials)) as temp);
use moviesdb; 

-- commit and rollback demo 

SELECT * FROM moviesdb.actors;
use moviesdb;
select * from actors;
update actors set name = "Yash raj" where actor_id = 50;
update actors set name = "Kajol dev" where actor_id = 60;
rollback;
select * from actors;

# inner join demo
use student;
CREATE TABLE city(
    cid INT NOT NULL AUTO_INCREMENT,
    cityname VARCHAR(50) NOT NULL,
    PRIMARY KEY (cid)
);
INSERT INTO city(cityname)
VALUES("Agra"),
("Delhi"),
("Bhopal"),
("Jaipur"),
("Noida");


CREATE TABLE personal(
	id INT NOT NULL,
	name VARCHAR(50) NOT NULL,
        percentage INT NOT NULL,
	age INT NOT NULL,
	gender VARCHAR(1) NOT NULL,
	city INT NOT NULL,
        PRIMARY KEY (id),
	FOREIGN KEY (city) REFERENCES City (cid)  
);

INSERT INTO personal(id,name,percentage,age,gender,city)
VALUES
(1,"Ram Kumar","45","13","M",1),
(2,"Sarita Kumari","56","21","F",2),
(3,"Salman Khan","62","20","M",1),
(4,"Juhi Chawla","47","18","F",3),
(5,"Anil Kapoor","74","22","M",1),
(6,"John Abraham","64","21","M",2),
(7,"Shahid Kapoor","52","20","M",1);
# city + personal
select * from city inner join personal on city.cid = personal.city;
# smart way to write it
select * from city c inner join personal p on c.cid = p.city;
# personal+city
select * from personal p inner join city c on p.city = c.cid; 
# from above command we are getting city and city column which are unnecessary so to avoid those we can skip these two column 
select id,name,percentage,age,gender,cityname from personal p inner join city c on p.city = c.cid;
# to retreive entry of agra student from joint table
select id,name,percentage,age,gender,cityname from personal p inner join city c on p.city = c.cid where c.cityname = "agra";
# sorted according to name 
select id,name,percentage,age,gender,cityname from personal p inner join city c on p.city = c.cid 
where c.cityname = "agra" order by p.name;
select * from personal p cross join city c;
select * from personal p inner join city c on p.city = c.cid;
select * from personal p left join city c on p.city = c.cid;
select * from personal p right join city c on p.city = c.cid;

# set operation 
# both select operation must return same number of column
select city,name from personal 
union           
select cid,cityname from  city;

select city,name from personal 
union all           
select cid,cityname from city;

select city,name from personal 
intersect           
select cid,cityname from city;

select city,name from personal 
except           
select cid,cityname from city;

# we cant use "outer join" directly in MYsql but using set operation "union" we can achieve it
select * from personal p left join city c on p.city = c.cid
union 
select * from personal p right join city c on p.city = c.cid;
create database mobile;
use moviesdb;
select count(*) from movies where industry = "hollywood";
select distinct release_year from movies where release_year >= 2015 and release_year <= 2020;
select studio,title,count(*) from movies where studio = "Marvel Studios" or studio = "Zee Studios" group by studio,title;
select studio,title,count(*) from movies where studio in ("Marvel Studios","Zee Studios","Salman Khan Films") group by studio,title;


--   SELECT * FROM moviesdb.movies 
--   for selecting all columbs from movies table
--  
--   SELECT title,release_year,studio FROM moviesdb.movies
--   for selecting title,release_year,studio columbs from movies table
 
--  USE moviesdb;
--  SELECT * FROM movies
-- to avoid writing moviesdb.movies again and again we set the moviesdb as a default constructor
USE moviesdb;
-- SELECT * FROM movies WHERE industry = "bollywood";
-- SELECT * FROM movies WHERE industry = "hollywood";
-- SELECT COUNT(*) FROM movies WHERE industry = "hollywood";
-- select distinct title from movies;
-- select distinct industry from movies;
-- select * from movies where title like "%america%";
-- select * from movies where title like "%thor%";
-- select * from movies where studio = "";
-- select * from movies where imdb_rating>=9;
-- select * from movies where imdb_rating >= 6 AND imdb_rating <= 8;
-- alternate 
-- select * from movies where imdb_rating between 6 and 8;
-- both 6 and 8 are inclusive
-- select * from movies where release_year = 2022 or release_year = 2021 or release_year = 2018;
-- alternate
-- select * from movies where release_year in (2022,2021,2018);
-- select * from movies where imdb_rating is null;
-- select * from movies where imdb_rating is not null ;
-- select * from movies where industry = "bollywood" order by imdb_rating;
-- for descending order 
-- select * from movies where industry = "bollywood" order by imdb_rating desc;
-- for top 5 movies based on imdb rating
-- select * from movies where industry = "bollywood" order by imdb_rating desc limit 5;
-- top 5 movies when skipping the top n movies 
-- select * from movies where industry = "bollywood" order by imdb_rating desc limit 5 offset 1
-- select max(imdb_rating) from movies where industry =  "bollywood";
-- select min(imdb_rating) from movies where industry = "bollywood";
-- select max(imdb_rating) from movies where industry = "hollywood";
-- select min(imdb_rating) from movies where industry = "hollywood";
-- select avg(imdb_rating) from movies where industry = "bollywood";
-- select round(avg(imdb_rating),2) as avg_rating from movies where industry = "bollywood";

-- select min(imdb_rating) as min_rating,
--        avg(imdb_rating) as avg_rating,
--        max(imdb_rating) as max_rating from movies where industry = "bollywood";

-- select industry ,count(*) from movies group by industry
-- select studio ,count(*) from movies group by studio

-- select studio ,count(*) as cnt from movies group by studio order by cnt 
-- select studio ,count(*) as cnt from movies group by studio order by cnt desc

-- select industry ,count(*) as cnt from movies group by industry order by cnt 
-- select industry ,count(industry) as cnt from movies group by industry order by cnt              








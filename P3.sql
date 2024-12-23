use moviesdb;
select * from movies;
select studio,avg(imdb_rating) from movies group by studio;
select studio from movies where release_year >= 2020 group by studio;
select studio,count(movie_id) from movies group by studio;
select title from movies where imdb_rating >= 8 ;
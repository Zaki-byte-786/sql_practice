SELECT * FROM moviesdb.movies;
use moviesdb;
select movie_id,title,industry,release_year,
case
when studio like "%studios%"
then "studios"
else "other"
end as studio_or_other
 from movies ;

select movie_id,title,industry,release_year,
case
when studio like "%studios%"
then 1
else 0
end as studio_or_other
 from movies ;
 
 select movie_id,title,industry,release_year,studio,
case
when studio like "%studios%"
then 1
when studio like "%Films%"
then 2
else 0
end as studio_or_other
 from movies ;
 
use paymentdb; 
 select * from payment;
 select * ,
 case 
 when payment_status like "Completed"
 then 1
 when payment_status like "pending"
 then -1
 else 0
 end as payment_st from payment;
 
 
 use moviesdb;
 select * ,
 case 
 when imdb_rating < 7
 then "worst movie"
 when imdb_rating < 8 and imdb_rating >= 7
 then "recommended"
 else "Best movies"
 end as movies_like_list 
 from movies;
 
 
 
 
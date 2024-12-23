SELECT * FROM mobile.smartphones;
use mobile;
select * from smartphones;
select brand_name,count(brand_name) as number_of_phones,round(avg(price),2) as avg_price,
round(max(rating),2) as max_rating,round(avg(screen_size),2) as avg_screen_size,
round(avg(battery_capacity),2) as avg_battery_capacity from smartphones group by brand_name;

select has_nfc,avg(price) as avg_price,avg(rating) as avg_rating from smartphones group by has_nfc; 

select has_5g,has_nfc from smartphones group by has_5g,has_nfc;

select brand_name,processor_brand,count(model) as count_of_model,
avg(primary_camera_rear) as average_primary_camera_rear from smartphones group by brand_name,processor_brand;

select brand_name,avg(price) as avg_price from smartphones group by brand_name order by avg_price desc limit 5;

select brand_name,count(model) as count_model from smartphones
 where has_nfc = 'True' and has_ir_blaster = 'true' group by brand_name order by count_model desc limit 1;

select model from smartphones where has_5g = 'true' and brand_name = 'samsung';
select brand_name from smartphones where price > 60000 group by brand_name;
select brand_name,avg(price) as avg_price,count(model) as count from smartphones group by brand_name having count > 20 order by avg_price desc;
select brand_name,avg(ram_capacity) as avg_ram from smartphones
 where refresh_rate >= 90 and fast_charging_available = 1 group by brand_name having count(*) > 10 order by avg_ram desc limit 3;
 select brand_name from smartphones group by brand_name having count(*) > 10;
select brand_name,avg(price) from smartphones where has_5g = 'true';

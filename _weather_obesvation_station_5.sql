/*
Enter your query here.
*/


-- SET NAMES 'UTF8';
-- SET COLUMN NAMES 0;

select city, length(city) from station
order by length(city),city
limit 1;

select city, length(city) from station
order by length(city) desc,city
limit 1;

/*
Enter your query here.
*/

select city, length(city)
from station
where id = (select id from station
           order by length(city),city
           limit 1)
union
select city, length(city)
from station
where id = (select id from station
           order by length(city)desc,city
           limit 1);



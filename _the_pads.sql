/*
Enter your query here.
*/

select concat(name, "(",substr(occupation,1,1),")")as n
from OCCUPATIONS 

union

select concat('There are a total of ',count(occupation),' ',lower(occupation),'s.' )
from OCCUPATIONS
group by occupation
order by n
;

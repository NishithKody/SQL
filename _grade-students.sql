select id,name,marks,
case
when marks>90 then 'A'
when marks>70 then 'B'
when marks >=40 then 'C'
when marks<40 then 'Fail'
end as Grade
from students;

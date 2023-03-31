# Write your MySQL query statement below

select Users.name, ifnull(sum(distance),0)

as travelled_distance 

from Users

left join Rides on Users.id = rides.user_id

group by user_id

order by sum(distance) desc, Users.name;

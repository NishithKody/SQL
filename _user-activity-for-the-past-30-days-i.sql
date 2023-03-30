# Write your MySQL query statement below



select activity_date as day, count( distinct user_id ) as active_users 

from Activity 

where to_days('2019-07-27') - to_days(activity_date) < 30 and

to_days('2019-07-27') - to_days(activity_date) >= 0

group by activity_date; 

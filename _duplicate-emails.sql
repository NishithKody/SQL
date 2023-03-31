# Write your MySQL query statement below



select distinct p1.email as email

from Person p1, person p2

where p1.email = p2.email and p1.id>p2.id;

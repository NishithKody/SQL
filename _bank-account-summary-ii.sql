# Write your MySQL query statement below



select u.name as NAME, sum(t.amount) as BALANCE 

from Users u 

left join Transactions t on t.account = u.account

group by t.account

having sum(t.amount)>10000;

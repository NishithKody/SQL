# Write your MySQL query statement below



select distinct customer_number from Orders

where customer_number 

= (select customer_number from orders

group by customer_number

order by count(order_number ) desc

limit 1 ) ;


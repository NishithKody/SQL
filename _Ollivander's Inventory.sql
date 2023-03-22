select w.id, Wands_Property.age, w.coins_needed, w.power 
from wands w
join Wands_Property on Wands_Property.code = w.code
where Wands_Property.is_evil = 0
and w.coins_needed= (
select min(coins_needed) from wands
where w.code = code and w.power = power)
order by w.power desc, Wands_Property.age desc,w.coins_needed;

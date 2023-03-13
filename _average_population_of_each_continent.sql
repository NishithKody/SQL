select country.Continent, floor(avg(city.population))
from city
join country on country.Code=city.CountryCode
group by continent;

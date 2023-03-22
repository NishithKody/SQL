select c.company_code, c.founder,
count(distinct lm.lead_manager_code ),
count(distinct sm.senior_manager_code),
count(distinct m.manager_code),
count(distinct e.employee_code)
from company c
join Lead_Manager lm on 
lm.company_code = c.company_code
join Senior_Manager sm on 
lm.lead_manager_code = sm.lead_manager_code
join Manager m on 
sm.senior_manager_code = m.senior_manager_code
join Employee e on 
m.manager_code = e.manager_code
group by c.company_code, c.founder
order by c.company_code;

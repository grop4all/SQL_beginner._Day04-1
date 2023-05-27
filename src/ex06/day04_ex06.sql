create materialized view mv_dmitriy_visits_and_eats as(
select distinct p2.name as pizzeria_name
from person_visits
         join person p on person_visits.person_id = p.id
         join pizzeria p2 on p2.id = person_visits.pizzeria_id
         join menu m on person_visits.pizzeria_id = m.pizzeria_id
where p.name = 'Dmitriy'
  and person_visits.visit_date = '2022-01-08'
  and m.price < 800)
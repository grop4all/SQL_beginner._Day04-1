create view v_price_with_discount as
(
select p.name, m.pizza_name, m.price, (m.price * 0.9)::int as discount_price
from person p
         join person_order po on p.id = po.person_id
         join menu m on m.id = po.menu_id
order by p.name, m.pizza_name
    )
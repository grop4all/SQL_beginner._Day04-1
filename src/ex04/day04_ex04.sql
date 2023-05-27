create view RS as (
    select person_id from person_visits
    where visit_date = '2022-01-02'
    except
    select person_id from person_visits
    where visit_date = '2022-01-06');

create view SR as (
    select person_id from person_visits
    where visit_date = '2022-01-06'
    except
    select person_id from person_visits
    where visit_date = '2022-01-02');

create view v_symmetric_union as
(
select person_id
from RS
union
select person_id
from SR
order by person_id
    )
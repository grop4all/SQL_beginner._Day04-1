select generated_dates from v_generated_dates
except
select visit_date
    from person_visits
order by generated_dates






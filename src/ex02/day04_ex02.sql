create view v_generated_dates as
select t_d::date as generated_dates
    from generate_series('2022-01-01'::date,
        '2022-01-31'::date, '1 day'::interval ) as t_d
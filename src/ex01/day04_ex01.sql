select vpm.name as name from v_persons_male vpm
union all
select vpf.name as name from v_persons_female vpf
order by name
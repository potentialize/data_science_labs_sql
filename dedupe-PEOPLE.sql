-- insert deduped rows
insert into PEOPLE (id, name, birthYear, deathYear)
select id, name, group_concat(birthYear), group_concat(deathYear) from _dirtyPEOPLE
group by name
having count(birthYear) <= 1 and count(deathYear) <= 1;

-- insert rows that cannot be deduped
insert into PEOPLE (id, name, birthYear, deathYear)
select p.id, p.name, p.birthYear, p.deathYear from _dirtyPEOPLE as p
right join (
	select name from _dirtyPEOPLE
	group by name
	having count(birthYear) > 1 or count(deathYear) > 1
	order by name
) as names
on names.name = p.name;

-- verify sum of previous queries equals result of query below CHECK
select count(distinct newId) from _migratePEOPLE;
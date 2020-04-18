insert into _firstOccurencePEOPLE (id, name, birthYear, deathYear)
select id, name, birthYear, deathYear from PEOPLE
group by name
having count(birthYear) <= 1 and count(deathYear) <= 1;

alter table _firstOccurencePEOPLE
add index idx_name (name);
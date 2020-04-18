insert into _migratePEOPLE (oldId, newId)
select p.id as oldId, IFNULL(firstOccurence.id, p.id) as newId
from PEOPLE as p
left join (
	select name, id from PEOPLE
    group by name
    having count(birthYear) <= 1 and count(deathYear) <= 1
) as firstOccurence
on p.name = firstOccurence.name





insert into _migratePEOPLE (oldId, newId)
select p.id as oldId, IFNULL(firstOccurence.id, p.id) as newId
from PEOPLE as p
left join _firstOccurencePEOPLE as firstOccurence
on p.name = firstOccurence.name

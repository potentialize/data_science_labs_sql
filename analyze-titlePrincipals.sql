SELECT * FROM a19dasc305.titlePrincipals;

select titleId, peopleId, count(*) from titlePrincipals
group by titleId, peopleId
having count(*) > 1;

select titleId, peopleId, count(category) from titlePrincipals
group by titleId, peopleId
having count(category) > 1;

select titleId, count(ordering) from titlePrincipals
group by titleId
having count(ordering) > 1;

select titleId, count(peopleId) from titlePrincipals
group by peopleId;

select count(*) from titlePrincipals
where category IS NULL;
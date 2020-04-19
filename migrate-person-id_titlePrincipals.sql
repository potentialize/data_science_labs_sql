insert into _newIdtitlePrincipals (titleID, personID, ordering, category, job, characters)
select t.titleID, p.newId, t.ordering, t.category, t.job, t.characters from OGtitlePrincipals as t
left join _migratePEOPLE as p
on t.personID = p.oldId
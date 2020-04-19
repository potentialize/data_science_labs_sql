INSERT INTO _newIdwithDupstitlePrincipals (titleId, peopleId, ordering, category, job, characters)
SELECT t.titleId, mp.newId, t.ordering, t.category, t.job, t.characters FROM titlePrincipals as t
LEFT JOIN _migratePEOPLE as mp
ON mp.oldId = t.peopleId;
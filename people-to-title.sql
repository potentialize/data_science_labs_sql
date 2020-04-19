-- split-str 9 has no results for knownForTitles
INSERT INTO _oldIdPEOPLE_TITLE (peopleId, titleId)
SELECT parse_id(nconst), parse_id(SPLIT_STR(knownForTitles, ',', 9)) FROM nameBasics
WHERE SPLIT_STR(knownForTitles, ',', 9) !='';

INSERT IGNORE INTO PEOPLE_TITLE (peopleId, titleId)
select mig.newId as peopleId, pt.titleId from _oldIdPEOPLE_TITLE as pt
left join _migratePEOPLE as mig
on pt.peopleId=mig.oldId;
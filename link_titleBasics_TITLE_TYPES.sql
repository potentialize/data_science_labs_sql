insert into TITLES
select t.titleId, y.id as titleTypeId, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.AverageRating, t.voteCount from titleBasics as t
left join TITLE_TYPES as y
on t.titleType = y.name;
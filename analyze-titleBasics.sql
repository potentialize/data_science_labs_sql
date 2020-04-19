select * from titleBasics;

SELECT *, count(primaryTitle) FROM a19dasc305.titleBasics
group by primaryTitle
having count(primaryTitle) > 1;

select * from titleBasics
where primaryTitle = null; -- all have primary title

select * from titleBasics
where titleType not in ('movie', 'tvMovie','tvShort','tvMiniSeries','tvSpecial','videoGame');

select distinct titleType from titleBasics;

SELECT * FROM a19dasc305.titleBasics where primaryTitle LIKE "Bohemios";
SELECT * FROM a19dasc305.titleBasics where primaryTitle LIKE "Robbery Under Arms";
SELECT * FROM a19dasc305.titleBasics where primaryTitle LIKE "Hamlet";

select * from titleBasics as t
left join PEOPLE_TITLE as pt
on t.titleId = pt.titleId
where pt.titleId is null;

-- people with a movie that is not in titleBasics
select * from PEOPLE_TITLE as pt
left join titleBasics as t
on pt.titleId = t.titleId
where t.titleId is null;

-- movies that do not have accociated people
select * from titleBasics as t
left join PEOPLE_TITLE as pt
on t.titleId = pt.titleId
where pt.peopleId is null;

-- verify no duplicates on titleId
select titleId, primaryTitle, count(titleId) from titleBasics
group by titleId
having count(titleId) > 1;


select titleType from titleBasics
where endYear is not null
group by titleType;
select * from titleRatings as r
left join titleBasics as t
on r.titleId = t.titleId
where t.titleId is null;

-- ratings that do not have a movie in titleBasics
select * from titleRatings as r
left join PEOPLE_TITLE as t
on r.titleId = t.titleId
where t.titleId is null;
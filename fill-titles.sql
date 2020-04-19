-- conflicts between titleBasics and titleRatings
select * from titleBasics as t
left join titleRatings as r
on t.titleId=r.titleId
where t.averageRating!=r.averageRating or t.numVotes!=r.voteCount;

-- select queries whose gaps can be filled
select * from titleBasics as t
left join titleRatings as r
on t.titleId=r.titleId
where not(t.averageRating <=> r.averageRating) or not(t.numVotes <=> r.voteCount);

-- merge titleRatings into titleBasics
insert into _merge_titleBasics_titleRatings (titleId, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, averageRating, voteCount)
select t.titleId, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, ifnull(t.averageRating, r.averageRating), ifnull(t.numVotes, r.voteCount) from titleBasics as t
left join titleRatings as r
on t.titleId=r.titleId
-- where not(t.averageRating <=> r.averageRating) or not(t.numVotes <=> r.voteCount);


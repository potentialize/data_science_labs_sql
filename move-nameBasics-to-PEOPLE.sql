insert into PEOPLE (id, name, birthYear, deathYear)
select parse_id(nconst), primaryName, birthYear, deathYear from nameBasics;
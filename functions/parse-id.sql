create function parse_id(id_str varchar(255))
returns int deterministic
return regexp_replace(id_str, '^..0*', '');

-- usage:
SELECT parse_id('nm000005'); -- 5

SELECT parse_id('nm900735'); -- 900735

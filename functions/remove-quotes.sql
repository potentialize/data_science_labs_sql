CREATE FUNCTION `remove_quotes`(str varchar(255)) RETURNS varchar(255)
    DETERMINISTIC
return regexp_replace(str, '^"|"$', '');
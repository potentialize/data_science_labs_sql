create function parse_id(id_str varchar(255))
returns int deterministic
return regexp_replace(id_str, '^[a-zA-Z]*0*', '');

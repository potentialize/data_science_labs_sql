CREATE TABLE `a19dasc305`.`TITLE_TYPES` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE);
  
insert into TITLE_TYPES (name)
select distinct titleType from titleBasics;
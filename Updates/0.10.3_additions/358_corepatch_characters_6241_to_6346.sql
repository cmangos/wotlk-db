-- 6291
ALTER TABLE `character_pet` DROP COLUMN `Commandstate`;

-- 6297
ALTER TABLE characters
  CHANGE `logout_time` `logout_time` bigint(20) unsigned NOT NULL default '0',
  DROP `last_honor_date`,
  DROP `last_kill_date`;

-- 6298
ALTER TABLE characters
  ADD COLUMN death_expire_time bigint(20) unsigned NOT NULL default '0' AFTER zone;
ALTER TABLE corpse
  CHANGE time time_old timestamp NOT NULL default '0000-00-00 00:00:00',
  ADD COLUMN time bigint(20) unsigned NOT NULL default '0' AFTER data;
UPDATE corpse
  SET time = UNIX_TIMESTAMP(time_old);
ALTER TABLE corpse
  DROP time_old;

-- 6326
ALTER TABLE corpse
  ADD COLUMN corpse_type tinyint(3) unsigned NOT NULL default '0' AFTER bones_flag;
UPDATE corpse
  SET corpse_type = 1 WHERE bones_flag = 0;
ALTER TABLE corpse
  DROP bones_flag;

-- 6335
ALTER TABLE corpse
  ADD KEY idx_type (corpse_type);
UPDATE corpse
  SET corpse_type = 1 WHERE corpse_type = 2;

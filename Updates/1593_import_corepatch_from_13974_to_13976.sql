-- 13974
ALTER TABLE db_version CHANGE COLUMN required_13973_01_mangos_taxi_system_update required_13974_01_mangos_game_event_primary_key bit;

ALTER TABLE game_event_gameobject DROP PRIMARY KEY, ADD PRIMARY KEY (guid, event);
ALTER TABLE game_event_creature DROP PRIMARY KEY, ADD PRIMARY KEY (guid, event);

-- 13975
ALTER TABLE db_version CHANGE COLUMN required_13974_01_mangos_game_event_primary_key required_13975_01_mangos_creature_waypoint_refurbishing bit;

ALTER TABLE creature_movement ADD COLUMN comment text;
ALTER TABLE creature_movement_template ADD COLUMN comment text;
ALTER TABLE creature_movement MODIFY COLUMN orientation float NOT NULL DEFAULT '0' AFTER position_z;
ALTER TABLE creature_movement_template MODIFY COLUMN orientation float NOT NULL DEFAULT '0' AFTER position_z;
ALTER TABLE script_waypoint CHANGE COLUMN point_comment comment text;
ALTER TABLE script_waypoint CHANGE COLUMN location_x position_x text;
ALTER TABLE script_waypoint CHANGE COLUMN location_y position_y text;
ALTER TABLE script_waypoint CHANGE COLUMN location_z position_z text;
ALTER TABLE script_waypoint ADD COLUMN orientation float NOT NULL DEFAULT '0' AFTER position_z;
ALTER TABLE script_waypoint ADD COLUMN pathId INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER entry;
ALTER TABLE script_waypoint ADD COLUMN script_id MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER waittime;
ALTER TABLE script_waypoint DROP PRIMARY KEY;
ALTER TABLE script_waypoint ADD PRIMARY KEY (entry, pathId, pointId);

/*
select concat('(',entry,',',pathId,',',pointId,',',position_x,',',position_y,',',position_z,',',orientation,',',waittime,',',script_id,',''',comment,'''),') from script_waypoint ORDER BY entry, pathId, pointId LIMIT 0, 5000;
*/

-- 13976
ALTER TABLE db_version CHANGE COLUMN required_13975_01_mangos_creature_waypoint_refurbishing required_13976_01_mangos_quest_template_rewmaxrep bit;

ALTER TABLE quest_template
ADD COLUMN RewMaxRepValue1 MEDIUMINT(8) NOT NULL DEFAULT 42999 AFTER RewRepValue5,
ADD COLUMN RewMaxRepValue2 MEDIUMINT(8) NOT NULL DEFAULT 42999 AFTER RewMaxRepValue1,
ADD COLUMN RewMaxRepValue3 MEDIUMINT(8) NOT NULL DEFAULT 42999 AFTER RewMaxRepValue2,
ADD COLUMN RewMaxRepValue4 MEDIUMINT(8) NOT NULL DEFAULT 42999 AFTER RewMaxRepValue3,
ADD COLUMN RewMaxRepValue5 MEDIUMINT(8) NOT NULL DEFAULT 42999 AFTER RewMaxRepValue4;

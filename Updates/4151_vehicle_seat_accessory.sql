ALTER TABLE db_version CHANGE COLUMN required_14058_01_mangos_quest_maxlevel required_14059_01_mangos_vehicle_seat_accessory bit;

DROP TABLE IF EXISTS vehicle_seat_addon;
CREATE TABLE vehicle_seat_addon(
`SeatEntry` INT(11) UNSIGNED NOT NULL,
`SeatOrientation` FLOAT NOT NULL DEFAULT 0,
`ExitParamX` FLOAT NOT NULL DEFAULT 0,
`ExitParamY` FLOAT NOT NULL DEFAULT 0,
`ExitParamZ` FLOAT NOT NULL DEFAULT 0,
`ExitParamO` FLOAT NOT NULL DEFAULT 0,
`ExitParamValue` TINYINT(1) NOT NULL DEFAULT 0,
PRIMARY KEY(`SeatEntry`)
);

-- data added from TC
INSERT INTO `vehicle_seat_addon` VALUES (861,0,-2,2,0,0,1),(862,0,-2,3,0,0,1),(2726,0,2803.32,7051.41,5.36291,4.73481,2),(2727,0,2801.48,7051.38,5.36291,4.73481,2),(2728,0,2801.17,7046.47,5.36201,4.73481,2),(2729,0,2803.73,7046.52,5.36201,4.73481,2),(2730,0,2807.86,7038.57,7.07581,4.73481,2),(2764,0,-2,2,0,0,1),(2765,0,-2,-2,0,0,1),(2767,0,-2,2,0,0,1),(2768,0,-2,-2,0,0,1),(6446,0,-1,4,3,0,1),(6447,0,1,4,3,0,1),(7326,0,-1,4,3,0,1),(7327,0,1,4,3,0,1),(7328,0,-1,4,3,0,1),(7329,0,1,4,3,0,1);


ALTER TABLE npc_spellclick_spells MODIFY `quest_start` MEDIUMINT(7) UNSIGNED NOT NULL DEFAULT '0';

DELETE FROM npc_spellclick_spells WHERE npc_entry IN(36812);
INSERT INTO npc_spellclick_spells(npc_entry, spell_id, cast_flags) VALUES
('36812', '69342', '1');


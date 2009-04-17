-- 7472
ALTER TABLE db_version CHANGE COLUMN required_7439_01_mangos_mangos_string required_7472_01_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry >= 667 and entry <= 687 or entry = 614 or entry = 615;
INSERT INTO mangos_string VALUES
(614,'The Alliance flag is now placed at its base.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(615,'The Horde flag is now placed at its base.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(667,'The Alliance has taken control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(668,'The Horde has taken control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(669,'The Alliance has taken control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(670,'The Horde has taken control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(671,'The Alliance has taken control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(672,'The Horde has taken control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(673,'The Alliance has taken control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(674,'The Horde has taken control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(675,'The Alliance has lost control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(676,'The Horde has lost control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(677,'The Alliance has lost control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(678,'The Horde has lost control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(679,'The Alliance has lost control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(680,'The Horde has lost control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(681,'The Alliance has lost control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(682,'The Horde has lost control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(683,'%s has taken the flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(684,'The Alliance have captured the flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(685,'The Horde have captured the flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(686,'The flag has been dropped.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(687,'The flag has been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 7493
ALTER TABLE db_version CHANGE COLUMN required_7472_01_mangos_mangos_string required_7493_01_mangos_command bit;
DELETE FROM `command` WHERE `name` IN ('gobject near','gobject phase','gobject setphase');
INSERT INTO `command` VALUES
('gobject near',2,'Syntax: .gobject near  [#distance]\r\n\r\nOutput gameobjects at distance #distance from player. Output gameobject guids and coordinates sorted by distance from character. If #distance not provided use 10 as default value.'),
('gobject setphase',2,'Syntax: .gobject setphase #guid #phasemask\r\n\r\nGameobject with DB guid #guid phasemask changed to #phasemask with related world vision update for players. Gameobject state saved to DB and persistent.');

-- 7495
ALTER TABLE db_version CHANGE COLUMN required_7493_01_mangos_command required_7495_01_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry IN (276,277,524);
INSERT INTO mangos_string VALUES
(276,'Game Object |cffffffff|Hgameobject:%d|h[%s]|h|r (GUID: %u) turned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(277,'Game Object |cffffffff|Hgameobject:%d|h[%s]|h|r (GUID: %u) moved',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(524,'Selected object:\n|cffffffff|Hgameobject:%d|h[%s]|h|r GUID: %u ID: %u\nX: %f Y: %f Z: %f MapId: %u\nOrientation: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 7503
ALTER TABLE db_version CHANGE COLUMN required_7495_01_mangos_mangos_string required_7503_01_mangos_command bit;
DELETE FROM `command` WHERE `name` IN (
  'addmove','allowmove','debug Mod32Value','debug standstate','go creature','go graveyard','go trigger',
  'gobject phase','gobject setphase','Mod32Value','modify arena',
  'modify standstate','npc addmove','npc allowmove','npc textemote','npc phase','npc setphase','showhonor');
INSERT INTO `command` VALUES
('debug Mod32Value',3,'Syntax: .debug Mod32Value #field #value\r\n\r\nAdd #value to field #field of your character.'),
('go creature',1,'Syntax: .go creature #creature_guid\r\nTeleport your character to creature with guid #creature_guid.\r\n.gocreature #creature_name\r\nTeleport your character to creature with this name.\r\n.gocreature id #creature_id\r\nTeleport your character to a creature that was spawned from the template with this entry.\r\n*If* more than one creature is found, then you are teleported to the first that is found inside the database.'),
('go graveyard',1,'Syntax: .go graveyard #graveyardId\r\n Teleport to graveyard with the graveyardId specified.'),
('go trigger',1,'Syntax: .go trigger #trigger_id\r\n\r\nTeleport your character to areatrigger with id #trigger_id. Character will be teleported to trigger target if selected areatrigger is telporting trigger.'),
('gobject setphase',2,'Syntax: .gobject setphase #guid #phasemask\r\n\r\nGameobject with DB guid #guid phasemask changed to #phasemask with related world vision update for players. Gameobject state saved to DB and persistent.'),
('modify arena',1,'Syntax: .modify arena #value\r\nAdd $amount arena points to the selected player.'),
('modify standstate',2,'Syntax: .modify standstate #emoteid\r\n\r\nChange the emote of your character while standing to #emoteid.'),
('npc addmove',2,'Syntax: .npc addmove #creature_guid [#waittime]\r\n\r\nAdd your current location as a waypoint for creature with guid #creature_guid. And optional add wait time.'),
('npc allowmove',3,'Syntax: .npc allowmove\r\n\r\nEnable or disable movement creatures in world. Not implemented.'),
('npc setphase',2,'Syntax: .npc setphase #phasemask\r\n\r\nSelected unit or pet phasemask changed to #phasemask with related world vision update for players. In creature case state saved to DB and persistent. In pet case change active until in game phase changed for owner, owner re-login, or GM-mode enable/disable..'),
('npc textemote',1,'Syntax: .npc textemote #emoteid\r\n\r\nMake the selected creature to do textemote with an emote of id #emoteid.');

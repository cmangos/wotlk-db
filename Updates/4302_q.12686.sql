-- q.12686 'Zero Tolerance'
-- Servant of Drakuru 28802
UPDATE creature_template SET SpellList=0 WHERE entry=28802;
DELETE FROM creature_spell_list_entry WHERE Id = 2880200;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2880200, 'ZulDrak - Servant of Drakuru - Charm spells',0,0);
DELETE FROM creature_spell_list WHERE Id = 2880200;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2880200,3,52400,0,0,0,100,0,0,0,0,0,'Servant of Drakuru - Ferocious Enrage'),
(2880200,4,52401,0,0,0,100,0,0,0,0,0,'Servant of Drakuru - Gut Rip'),
(2880200,5,52402,0,0,0,100,0,0,0,0,0,'Servant of Drakuru - Stunning Force (Rank 1)');

-- Hand of Drakuru 28805
UPDATE creature_template SET MinLevel=75, MaxLevel=76, MinLevelHealth=53175, MaxLevelHealth=55005 WHERE Entry = 28805;
DELETE FROM `dbscripts_on_creature_death` WHERE id = 28805;
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `comments`) VALUES
(28805,1,18,0,20,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'desp self');

-- Blight Geist 28750
DELETE FROM creature_addon WHERE guid IN (518676,519280,523053);
DELETE FROM creature_movement WHERE id IN (518676,519280,523053);
DELETE FROM game_event_creature WHERE guid IN (518676,519280,523053);
DELETE FROM game_event_creature_data WHERE guid IN (518676,519280,523053);
DELETE FROM creature_battleground WHERE guid IN (518676,519280,523053);
DELETE FROM creature_linking WHERE guid IN (518676,519280,523053)
 OR master_guid IN (518676,519280,523053);
DELETE FROM creature WHERE guid IN (518676,519280,523053);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(518676,28750,571,1,1,0,0,5940.03,-2097.92,248.195,0.162522,300,300,10,0,0,0,0,1),
(519280,28750,571,1,1,0,0,5959.84,-2110.09,248.406,5.56245,300,300,10,0,0,0,0,1),
(523053,28750,571,1,1,0,0,5955.89,-2184.27,248.284,5.46426,300,300,10,0,0,0,0,1);
UPDATE creature SET position_x = 5936.616211, position_y = -2134.893799, position_z = 248.180130, spawndist = 10, MovementType = 1 WHERE guid = 523298;
UPDATE creature SET position_x = 5957.704590, position_y = -2148.921387, position_z = 248.308304, spawndist = 10, MovementType = 1 WHERE guid = 523309;
UPDATE creature SET position_x = 5940.625977, position_y = -2165.981689, position_z = 247.958618, spawndist = 10, MovementType = 1 WHERE guid = 523324;
UPDATE creature SET spawndist=10, MovementType=1 WHERE guid=523511;
UPDATE creature SET position_x = 5970.393066, position_y = -2236.607666, position_z = 234.937103 WHERE guid = 523513;
UPDATE creature SET position_x = 5913.273438, position_y = -2253.488037, position_z = 238.589005 WHERE guid = 523500;
-- Darmuk 28793
UPDATE creature SET position_x=5957.316, position_y=-2082.866, position_z=248.2318, MovementType=2, spawndist=0, curhealth = 0 WHERE id=28793;
UPDATE creature_template SET MovementType=2 WHERE entry=28793;
DELETE FROM creature_movement_template WHERE Entry=28793;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(28793,1,5957.316,-2082.866,248.2318,1.518436,25000,0),
(28793,2,5954.65,-2131.165,248.4123,100,0,0),
(28793,3,5971.161,-2133.242,249.2916,100,5000,0),
(28793,4,5953.852,-2138.804,248.3089,100,0,0),
(28793,5,5954.501,-2187.947,248.3032,100,0,0);

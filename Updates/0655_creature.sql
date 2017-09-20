-- Small event introducing area.

-- Image of Commander Ameer <The Protectorate> & Image of Agent Ya-six <The Protectorate>
-- Both shouldn't be spawned - they're summoned as part of event
DELETE FROM creature WHERE guid IN (72679,72694);
DELETE FROM creature_addon WHERE guid IN (72679,72694);
DELETE FROM creature_movement WHERE id IN (72679,72694);
DELETE FROM game_event_creature WHERE guid IN (72679,72694);
DELETE FROM game_event_creature_data WHERE guid IN (72679,72694);
DELETE FROM creature_battleground WHERE guid IN (72679,72694);
DELETE FROM creature_linking WHERE guid IN (72679,72694)
 OR master_guid IN (72679,72694);

-- Update for summoned NPC's
-- Image of Commander Ameer <The Protectorate>
UPDATE creature_template SET UnitFlags = 768, InhabitType = 4, EquipmentTemplateId = 2417 WHERE entry = 20553;
-- Image of Agent Ya-six <The Protectorate>
UPDATE creature_template SET InhabitType = 4, EquipmentTemplateId = 2438 WHERE entry = 20564;
-- Portable Transponder
UPDATE gameobject SET spawntimesecs = 1 WHERE id = 184434;
 
-- Agent Araxes
UPDATE creature_template SET MovementType = 2 WHERE entry = 20551;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE id = 20551;
DELETE FROM creature_movement_template WHERE entry = 20551;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(20551,1,3782.49,2170.66,141.422,50000,2055101,1.67552),
(20551,2,3782.49,2170.66,141.422,180000,0,1.67552);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2055101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2055101,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2055101,2,0,0,0,0,0,0,2000001047,0,0,0,0,0,0,0,''),
(2055101,2,13,0,0,184434,100,1,0,0,0,0,0,0,0,0,''),
(2055101,4,10,20553,31000,0,0,0x08,0,0,0,0,3781.898,2175.332,142.5583,4.991642,'summon Image of Commander Ameer'),
(2055101,6,0,0,0,20553,50,7,2000001048,0,0,0,0,0,0,0,''),
(2055101,11,0,0,0,0,0,0,2000001049,0,0,0,0,0,0,0,''),
(2055101,16,0,0,0,20553,50,7,2000001050,0,0,0,0,0,0,0,''),
(2055101,21,0,0,0,0,0,0,2000001051,0,0,0,0,0,0,0,''),
(2055101,27,0,0,0,20553,50,7,2000001052,0,0,0,0,0,0,0,''),
(2055101,33,0,0,0,20553,50,7,2000001053,0,0,0,0,0,0,0,''),
(2055101,35,43,0,0,184434,100,1,0,0,0,0,0,0,0,0,'Reset button'),
(2055101,35,10,20564,11000,0,0,0x08,0,0,0,0,3781.898,2175.332,142.5583,4.991642,'summon Image of Agent Ya-six'),
(2055101,37,0,0,0,20564,50,7,2000001054,0,0,0,0,0,0,0,''),
(2055101,41,0,0,0,20564,50,7,2000001055,0,0,0,0,0,0,0,''),
(2055101,47,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000001047 AND 2000001055;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001047,'I hope this damned thing works. *Araxes pounds on the portable transponder.*',0,0,0,1,NULL),
(2000001048,'Araxes, come in... Are you there Araxes? Visibility is nil. Warp storms blocking us.',0,0,0,1,NULL),
(2000001049,'I\'m here, commander.',0,0,0,1,NULL),
(2000001050,'Copy. Status report, soldier.',0,0,0,1,NULL),
(2000001051,'We\'ve located the mark, commander. Ya-six and I have been separated. Requesting backup.',0,0,0,1,NULL),
(2000001052,'Copy that, Araxes. Backup is on the way. Hold your position. I repeat, hold your position.',0,0,0,1,NULL),
(2000001053,'Ameer, over and out.',0,0,0,15,NULL),
(2000001054,'Araxes! Send help! I\'m pinned down in the mines. I... I\'m not sure where I am exactly but I had the presence of mind to drop tracers on the ground behind me.',0,0,0,1,NULL),
(2000001055,'I can\'t follow the tracers back out, too many flesh beasts in the way. Send someone in... Follow the tracers... Ya-six, out.',0,0,0,1,NULL);

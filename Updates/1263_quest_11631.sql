-- q.11631 'Vision of Air'

-- Source item should be removed from inventory after q. completed
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE entry = 11631;

-- objects
-- missing spawn added - WoTLK Range 571x Free guids used
DELETE FROM game_event_gameobject WHERE guid IN (5710021,5710022);
DELETE FROM gameobject_battleground WHERE guid IN (5710021,5710022);
DELETE FROM gameobject WHERE guid IN (5710021,5710022);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- TEMP Snarlfang's Totem
(5710021, 300172, 571, 1,1,4524.03, 5674.23, 81.7021, 6.10745, 0, 0, 0.0877551, -0.996142, 300, 300, 255, 1),
-- Blue aura, short column, scale 6
(5710022, 187679, 571, 1,1,4528.17, 5678.6, 82.2334, 0.6283169, 0, 0, 0.3090162, 0.9510568, -25, -25, 255, 1);

-- EVENT
DELETE FROM dbscripts_on_event WHERE id = 16716;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(16716,0,31,25456,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for buddy - terminate - if alive'), -- only one event is allowed in same time
(16716,1,10,25424,25000,0,0,0,0x08,0,0,0,0,4529.002,5679.642,82.36562,3.769911,'summon - Vision of Farseer Grimwalker'),
(16716,1,10,25457,25000,0,0,0,0x08,0,0,0,0,4528.024,5680.72,82.29639,5.497787,'summon - Vision of Magmoth Shaman'),
(16716,1,10,25457,25000,0,0,0,0x08,0,0,0,0,4530.323,5680.649,82.45662,3.769911,'summon - Vision of Magmoth Shaman'),
(16716,1,10,25457,25000,0,0,0,0x08,0,0,0,0,4529.922,5678.596,82.38788,2.286381,'summon - Vision of Magmoth Shaman'),
(16716,1,10,25456,25000,0,0,0,0x08,0,0,0,0,4525.96,5677.24,82.0634,0.6290413,'summon - Vision of Kaganishu'),
(16716,2,9,5710022,25,0,0,0,0,0,0,0,0,0,0,0,0,'respawn object'),
(16716,14,0,0,0,0,25374,100,3,2000001508,0,0,0,0,0,0,0,'whisper to player');
-- texts
DELETE FROM dbscript_string WHERE entry IN (2000001506,2000001507,2000001508);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001506,'KAGANISHU!',0,0,0,0,NULL),
(2000001507,'Oh no... they\'ve shackled his spirit!',0,0,0,5,NULL),
(2000001508,'$C, I have something to ask of you.',0,4,0,0,NULL);

-- Vision of Farseer Grimwalker
UPDATE creature_template SET MovementType = 2, UnitFlags = 33555200, Expansion = 2, MinLevel = 70, MaxLevel = 70, FactionAlliance = 1981, FactionHorde = 1981, MinLevelHealth = 8982, MaxLevelHealth = 8982, MinLevelMana = 3155, MaxLevelMana = 3155, Armor = 6708, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 286, MinMeleeDmg = 234, MaxMeleeDmg = 331 WHERE entry = 25424;
DELETE FROM creature_template_addon WHERE entry = 25424;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(25424,0,8,1,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 25424;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25424,1,4529.002,5679.642,82.36562,50000,2542401,3.769911);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2542401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2542401,0,31,25374,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for Ortrosh - terminate if he is to close'),
(2542401,1,20,2,0,0,25374,98796,7 | 0x10,0,0,0,0,0,0,0,0,'Ortrosh - movement chenged to 2:waypoints');

-- Vision of Farseer Grimwalker's Spirit
UPDATE creature_template SET InhabitType = 4, UnitFlags = 33555200, Expansion = 2, MinLevel = 70, MaxLevel = 70, FactionAlliance = 1981, FactionHorde = 1981, MinLevelHealth = 8982, MaxLevelHealth = 8982, MinLevelMana = 3155, MaxLevelMana = 3155, Armor = 6708, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 286, MinMeleeDmg = 234, MaxMeleeDmg = 331 WHERE entry = 25458;

-- Vision of Magmoth Shaman
UPDATE creature_template SET UnitFlags = 33587968, Expansion = 2, MinLevel = 70, MaxLevel = 70, FactionAlliance = 16, FactionHorde = 16, MinLevelHealth = 8982, MaxLevelHealth = 8982, MinLevelMana = 3155, MaxLevelMana = 3155, Armor = 6708, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 286, MinMeleeDmg = 234, MaxMeleeDmg = 331, EquipmentTemplateId = 215 WHERE entry = 25457;

-- Vision of Kaganishu
UPDATE creature_template SET MovementType = 2, UnitFlags = 33587968, Expansion = 2, MinLevel = 71, MaxLevel = 71, FactionAlliance = 16, FactionHorde = 16, MinLevelHealth = 9291, MaxLevelHealth = 9291, MinLevelMana = 3231, MaxLevelMana = 3231, Armor = 7007, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 290, MinMeleeDmg = 296, MaxMeleeDmg = 424, EquipmentTemplateId = 1594 WHERE entry = 25456;
DELETE FROM creature_movement_template WHERE entry = 25456;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25456,1,4527.5,5678.36,82.1916,30000,2545601,0.6290413);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2545601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2545601,0,15,45595,0,0,25424,50,1,0,0,0,0,0,0,0,0,''),
(2545601,4,15,29266,1,0,25424,50,7,0,0,0,0,0,0,0,0,''),
(2545601,4,28,7,0,0,25424,50,7,0,0,0,0,0,0,0,0,'STATE_DEAD'),
(2545601,6,0,0,0,0,0,0,0,2000001506,0,0,0,0,0,0,0,''),
(2545601,6,10,25458,20000,0,0,0,0x08,0,0,0,0,4528.823,5679.591,83.10519,3.87702,'summon - Vision of Farseer Grimwalker\'s Spirit'),
(2545601,10,1,383,0,0,25458,30,7,0,0,0,0,0,0,0,0,''),
(2545601,10,0,0,0,0,25339,30,7,2000001507,0,0,0,0,0,0,0,''),
(2545601,21,15,45605,0,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit');
-- target for spells
DELETE FROM spell_script_target WHERE entry IN (45581,45595);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45581,1,25458,0),
(45581,1,25425,0),
(45595,1,25424,0);

-- Ortrosh
-- waypoints will be set by script
DELETE FROM creature_movement_template WHERE entry = 25374;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25374,1,4514.34,5714.3,81.658,1000,2537401,4.31096),
(25374,2,4508.98,5713.82,81.5371,0,0,2.41219),
(25374,3,4498.71,5726.27,81.0097,0,0,3.10334),
(25374,4,4488.33,5725.34,80.3145,0,0,4.01833),
(25374,5,4481.73,5715.69,81.2607,0,0,4.50528),
(25374,6,4479.75,5692.56,80.9803,0,0,5.69122),
(25374,7,4499.85,5681.11,80.9224,0,0,0.110971),
(25374,8,4508.01,5684.78,81.7666,90000,6,5.54278), -- wait
(25374,9,4499.86,5681.21,80.9364,0,0,2.75888),
(25374,10,4480.06,5692.77,81.0157,0,0,1.48025),
(25374,11,4481.74,5715.73,81.2583,0,0,0.507141),
(25374,12,4488.56,5725.52,80.3145,0,0,0.204762),
(25374,13,4498.45,5726.41,80.9846,0,0,5.2321),
(25374,14,4508.6,5714.06,81.5345,0,0,6.12431),
(25374,15,4514.34,5714.3,81.658,5000,2537402,4.31096);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2537401,2537402);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2537401,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2537401,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2537401,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'SET RUN'),
(2537402,1,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(2537402,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2537402,3,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

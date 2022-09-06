-- Naxxramas_WOTLK - misc updates

-- Spell list
UPDATE `creature_template` SET SpellList=1602801 WHERE entry IN (16028, 29324);
UPDATE `creature_template` SET SpellList=1606101 WHERE entry=16061;
UPDATE `creature_template` SET SpellList=2835701 WHERE entry=28357;
UPDATE `creature_template` SET SpellList=1601101 WHERE entry=16011;
UPDATE `creature_template` SET SpellList=2971801 WHERE entry=29718;
UPDATE `creature_template` SET UnitFlags=33554432 WHERE Entry=17025;
UPDATE `creature_template` SET SpellList=1598901 WHERE entry=15989;
UPDATE `creature_template` SET SpellList=2999101 WHERE entry=29991;
UPDATE `creature_template` SET SpellList=1595301 WHERE entry=15953;
UPDATE `creature_template` SET SpellList=2926801 WHERE entry=29268;

-- Patchwerk
REPLACE INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1602801, 1, 28307, 0, 0, 0, 100, 50, 1000, 1000, 1000, 1000, 'Patchwerk - Hateful Strike Primer'),
(1602802, 1, 28307, 0, 0, 0, 100, 50, 1000, 1000, 1000, 1000, 'Patchwerk - Hateful Strike Primer (Berserk)'),
(1602802, 3, 32309, 2, 1, 0, 100, 0, 5000, 5000, 5000, 5000, 'Patchwerk - Slimebolt (Berserk)');
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1602801, 'Naxxramas - Patchwerk', 0, 0),
(1602802, 'Naxxramas - Patchwerk - Berserk', 0, 100);

-- Gluth
SET @SGUID := 23030; -- ScriptID
DELETE FROM `dbscripts_on_relay` WHERE id IN (@SGUID, @SGUID+1);
REPLACE INTO `dbscripts_on_relay` (id, dataint, dataint2, dataint3, comments) VALUES
(@SGUID, 7798, 0, 0, 'Gluth - Emote on Enrage'),
(@SGUID+1, 32321, 0, 0, 'Gluth - Emote on Decimate');
REPLACE INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1593201, 1, 54378, 0, 28783, 0, 100, 30, 10000, 10000, 10000, 10000, 'Gluth - Mortal Wound'),
(1593201, 2, 54427, 1, 2, @SGUID, 100, 50, 25000, 25000, 20000, 30000, 'Gluth - Enrage'),
(1593201, 3, 28374, 2, 2, @SGUID+1, 100, 0, 110000, 110000, 100000, 100000, 'Gluth - Decimate'),
(2941701, 1, 54378, 0, 54099, 0, 100, 30, 10000, 10000, 10000, 10000, 'Gluth(25N) - Mortal Wound'),
(2941701, 2, 54427, 1, 2, @SGUID, 100, 50, 25000, 25000, 20000, 30000, 'Gluth(25N) - Enrage'),
(2941701, 3, 54426, 2, 2, @SGUID+1, 100, 0, 110000, 110000, 100000, 100000, 'Gluth(25N) - Decimate');
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1593201, 'Naxxramas - Gluth', 100, 100),
(2941701, 'Naxxramas - Gluth(25N)', 100, 100);

-- Razuvious
SET @SGUID := 23000; -- ScriptID
DELETE FROM `dbscripts_on_relay` WHERE id IN (@SGUID+0, @SGUID+1);
REPLACE INTO `dbscripts_on_relay` (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, comments) VALUES
(@SGUID+0, 0, 0, 31, 16061, 10, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate Script if Razuvious is not in Range'),
(@SGUID+0, 0, 1, 32, 1, 0, 0, 16061, 10, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pause Waypoints for Razuvious'),
(@SGUID+0, 100, 0, 37, 0, 0, 2, 16061, 10, 3, 0, @SGUID+1, 0, 0, 0, 0, 0, 0, 0, 0, 'Move Razuvious towards the Understudy'),
(@SGUID+0, 100, 1, 35, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Send AIEvent 5 to self'),
(@SGUID+1, 1000, 0, 0, 20293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Razuvious Shouts at the Understudy'),
(@SGUID+1, 1000, 1, 1, 0, 0, 0, 16803, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Understudy stops emotes'),
(@SGUID+1, 2000, 0, 36, 0, 0, 0, 16803, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Turn Understudy towards Razuvious'),
(@SGUID+1, 4000, 0, 0, 0, 0, 0, 16803, 7, 3, 13137, 13138, 13139, 13140, 0, 0, 0, 0, 0, 0, 'Understudy Talks towards Razuvious'),
(@SGUID+1, 8000, 0, 1, 66, 0, 0, 16803, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Understudy Salutes towards Razuvious'),
(@SGUID+1, 10000, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Razuvious Resumes his Waypoint Path'),
(@SGUID+1, 12000, 0, 36, 1, 0, 0, 16803, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Understudy turns back towards his Training Dummy'),
(@SGUID+1, 12000, 2, 1, 333, 0, 0, 16803, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Understudy resumes emotes'),
(@SGUID+1, 12000, 3, 35, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Send AIEvent 6 to Understudy');
UPDATE `creature_template_addon` SET b2_0_sheath=0 WHERE entry=16061;
DELETE FROM `creature_template_addon` WHERE Entry=29941;
DELETE FROM `creature_movement_template` WHERE Entry=16061 AND Point=7;
UPDATE `creature_movement_template` SET ScriptId=0 WHERE Entry=16061;
REPLACE INTO `dbscript_random_templates` (id, type, target_id, chance, comments) VALUES
(20293, 0, 13131, 15, 'Razuvious - Random Text'), -- You're not only wasting the time of your fellow students, you're wasting my time too.
(20293, 0, 13136, 15, 'Razuvious - Random Text'), -- Start doing something before I replace that target dummy with you and begin a warm up session of my own!
(20293, 0, 13129, 15, 'Razuvious - Random Text'), -- Show me what you've got, rookie!
(20293, 0, 13132, 15, 'Razuvious - Random Text'), -- Pathetic...
(20293, 0, 13130, 15, 'Razuvious - Random Text'), -- Is that the best you can do?
(20293, 0, 13134, 15, 'Razuvious - Random Text'), -- I think you signed up for the wrong job, initiate. Kel'Thuzad don't need any flower girls...
(20293, 0, 13135, 15, 'Razuvious - Random Text'); -- Is this some kind of joke?
SET @SGUID := 23000; -- ScriptID
DELETE FROM `dbscripts_on_relay` WHERE id IN (@SGUID+3);
REPLACE INTO `dbscripts_on_relay` (id, dataint, dataint2, dataint3, comments) VALUES
(@SGUID+3, 13082, 0, 0, 'Razuvious - Emote on Disrupting Shout');
REPLACE INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1606101, 1, 55470, 0, 1, 0, 100, 0, 30000, 30000, 30000, 30000, 'Razuvious - Unbalancing Strike'),
(1606101, 2, 55550, 2, 55550, 0, 100, 0, 10000, 15000, 10000, 10000, 'Razuvious - Jagged Knife'),
(1606101, 3, 55543, 2, 0, @SGUID+3, 100, 0, 15000, 15000, 15000, 25000, 'Razuvious - Disrupting Shout'),
(2835701, 1, 55470, 0, 1, 0, 100, 0, 30000, 30000, 30000, 30000, 'Razuvious(25N) - Unbalancing Strike'),
(2835701, 2, 55550, 2, 55550, 0, 100, 0, 10000, 15000, 10000, 10000, 'Razuvious(25N) - Jagged Knife'),
(2835701, 3, 29107, 2, 0, @SGUID+3, 100, 0, 15000, 15000, 15000, 25000, 'Razuvious(25N) - Disrupting Shout');
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1606101, 'Naxxramas - Razuvious', 100, 150),
(2835701, 'Naxxramas - Razuvious(25N)', 100, 150);
REPLACE INTO `creature_spell_targeting` (Id, Type, Param1, Param2, Param3, Comments) VALUES
(55550, 1, 0, 0, 0, 'Razuvious - Jagged Knife - Target Random Player');

-- Loatheb
SET @SGUID := 23015; -- ScriptID
DELETE FROM `dbscripts_on_relay` WHERE id IN (@SGUID+3);
REPLACE INTO `dbscripts_on_relay` (id, dataint, dataint2, dataint3, comments) VALUES
(@SGUID+3, 32334, 0, 0, 'Loatheb - Emote on Necrotic Aura');
DELETE FROM `creature_spell_list` WHERE Id IN (1601101, 1601102, 2971801, 2971802);
REPLACE INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1601101, 1, 29865, 2, 0, 0, 100, 10, 5000, 5000, 30000, 30000, 'Loatheb - Deathbloom'),
(1601101, 2, 29234, 2, 0, 0, 100, 10, 10000, 15000, 36000, 36000, 'Loatheb - Summon Spore'),
(1601101, 3, 55593, 2, 0, @SGUID+3, 100, 0, 12000, 12000, 20000, 20000, 'Loatheb - Necrotic Aura'),
(1601101, 4, 29204, 2, 0, 0, 100, 10, 120000, 120000, 30000, 30000, 'Loatheb - Inevitable Doom (P1)'),
(1601102, 1, 29865, 2, 0, 0, 100, 10, 0, 0, 30000, 30000, 'Loatheb - Deathbloom'),
(1601102, 2, 29234, 2, 0, 0, 100, 10, 0, 0, 36000, 36000, 'Loatheb - Summon Spore'),
(1601102, 3, 55593, 2, 0, @SGUID+3, 100, 0, 0, 0, 20000, 20000, 'Loatheb - Necrotic Aura'),
(1601102, 4, 29204, 2, 0, 0, 100, 10, 0, 0, 15000, 15000, 'Loatheb - Inevitable Doom(P2)'),
(2971801, 1, 55053, 2, 0, 0, 100, 10, 5000, 5000, 30000, 30000, 'Loatheb(25N) - Deathbloom'),
(2971801, 2, 29234, 2, 0, 0, 100, 10, 10000, 15000, 18000, 18000, 'Loatheb(25N) - Summon Spore'),
(2971801, 3, 55593, 2, 0, @SGUID+3, 100, 0, 12000, 12000, 20000, 20000, 'Loatheb(25N) - Necrotic Aura'),
(2971801, 4, 55052, 2, 0, 0, 100, 10, 120000, 120000, 30000, 30000, 'Loatheb(25N) - Inevitable Doom (P1)'),
(2971802, 1, 55053, 2, 0, 0, 100, 10, 5000, 5000, 30000, 30000, 'Loatheb(25N) - Deathbloom'),
(2971802, 2, 29234, 2, 0, 0, 100, 10, 10000, 15000, 18000, 18000, 'Loatheb(25N) - Summon Spore'),
(2971802, 3, 55593, 2, 0, @SGUID+3, 100, 0, 12000, 12000, 20000, 20000, 'Loatheb(25N) - Necrotic Aura'),
(2971802, 4, 55052, 2, 0, 0, 100, 10, 0, 0, 15000, 15000, 'Loatheb(25N) - Inevitable Doom (P2)');
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1601101, 'Naxxramas - Loatheb', 100, 150),
(1601102, 'Naxxramas - Loatheb(P2)', 100, 150),
(2971801, 'Naxxramas - Loatheb(25N)', 100, 150),
(2971802, 'Naxxramas - Loatheb(25N)(P2)', 100, 150);

-- Sapphiron
REPLACE INTO `creature_template_addon` (entry, auras) VALUES
(17025, 29327);
REPLACE INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1598901, 1, 19983, 0, 1, 0, 100, 0, 5000, 5000, 5000, 10000, 'Sapphiron - Cleave'),
(1598901, 2, 55697, 0, 0, 0, 100, 0, 12000, 12000, 7000, 10000, 'Sapphiron - Tail Sweep'),
(1598901, 3, 28542, 2, 0, 0, 100, 0, 11000, 11000, 24000, 24000, 'Sapphiron - Life Drain'),
(1598901, 4, 28560, 2, 0, 0, 100, 0, 15000, 15000, 10000, 30000, 'Sapphiron - Blizzard'),
(1598901, 5, 60539, 2, 0, 0, 100, 0, 1000, 1000, 20000, 20000, 'Sapphiron - Achievement Check'),
(1598902, 1, 28526, 2, 0, 0, 100, 0, 2000, 2000, 1000, 1000, 'Sapphiron - Icebolt'),
(2999101, 1, 19983, 0, 1, 0, 100, 0, 5000, 5000, 5000, 10000, 'Sapphiron(25N) - Cleave'),
(2999101, 2, 55696, 0, 0, 0, 100, 0, 12000, 12000, 7000, 10000, 'Sapphiron(25N) - Tail Sweep'),
(2999101, 3, 55665, 2, 0, 0, 100, 0, 11000, 11000, 24000, 24000, 'Sapphiron(25N) - Life Drain'),
(2999101, 4, 28560, 2, 0, 0, 100, 0, 15000, 15000, 10000, 30000, 'Sapphiron(25N) - Blizzard'),
(2999101, 5, 60539, 2, 0, 0, 100, 0, 1000, 1000, 20000, 20000, 'Sapphiron(25N) - Achievement Check'),
(2999102, 1, 28526, 2, 0, 0, 100, 0, 2000, 2000, 1000, 1000, 'Sapphiron(25N) - Icebolt');
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1598901, 'Naxxramas - Sapphiron', 100, 150),
(1598902, 'Naxxramas - Sapphiron - Air Phase', 100, 150),
(1598903, 'Naxxramas - Sapphiron - NULL list', 0, 0),
(2999101, 'Naxxramas - Sapphiron(25N)', 100, 150),
(2999102, 'Naxxramas - Sapphiron(25N) - Air Phase', 100, 150),
(2999103, 'Naxxramas - Sapphiron(25N) - NULL list', 0, 0);

-- Faerlina
SET @SGUID := 23010; -- ScriptID
DELETE FROM `dbscripts_on_relay` WHERE id IN (@SGUID);
REPLACE INTO `dbscripts_on_relay` (id, dataint, dataint2, dataint3, comments) VALUES
(@SGUID, 1191, 0, 0, 'Faerlina - Emote on Frenzy'),
(@SGUID, 12857, 12858, 12859, 'Faerlina - Shout on Frenzy');
REPLACE INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1595301, 1, 28796, 2, 1, 0, 100, 1, 8000, 8000, 11000, 11000, 'Faerlina - Poison Bolt'),
(1595301, 2, 28794, 2, 28794, 0, 100, 2, 16000, 16000, 16000, 16000, 'Faerlina - Rain of Fire'),
(1595301, 3, 28798, 1, 2, @SGUID, 100, 0, 60000, 60000, 60000, 60000, 'Faerlina - Enrage'),
(2926801, 1, 54098, 2, 1, 0, 100, 1, 8000, 8000, 11000, 11000, 'Faerlina(25N) - Poison Bolt'),
(2926801, 2, 54099, 2, 54099, 0, 100, 2, 16000, 16000, 16000, 16000, 'Faerlina(25N) - Rain of Fire'),
(2926801, 3, 54100, 1, 2, @SGUID, 100, 0, 60000, 60000, 60000, 60000, 'Faerlina(25N) - Enrage');
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1595301, 'Naxxramas - Faerlina', 100, 100),
(2926801, 'Naxxramas - Faerlina(25N)', 100, 100);
REPLACE INTO `creature_spell_targeting` (Id, Type, Param1, Param2, Param3, Comments) VALUES
(28794, 1, 0, 0, 2, 'Faerlina - Rain of Fire - Target Random Player'),
(54099, 1, 0, 0, 2, 'Faerlina(25N) - Rain of Fire - Target Random Player');

-- Anub'Rekhan
SET @SGUID := 23020; -- ScriptID
DELETE FROM `dbscripts_on_relay` WHERE id IN (@SGUID);
REPLACE INTO `dbscripts_on_relay` (id, dataint, dataint2, dataint3, comments) VALUES
(@SGUID, 13443, 0, 0, 'Anub\'Rekhan - Emote on Locust Swarm'); -- MISSING EMOTE
REPLACE INTO `dbscripts_on_relay` (id, delay, command, datalong, comments) VALUES
(@SGUID, 3000, 15, 29508, 'Anub\'Rekhan - Summon Crypt Guard');
REPLACE INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1595601, 1, 28783, 2, 28783, 0, 100, 2, 15000, 15000, 15000, 15000, 'Anub\'Rekhan - Impale'),
(1595601, 2, 28785, 1, 2, @SGUID, 100, 0, 90000, 90000, 100000, 100000, 'Anub\'Rekhan - Locust Swarm'),
(2924901, 1, 56090, 2, 54099, 0, 100, 2, 15000, 15000, 15000, 15000, 'Anub\'Rekhan(25N) - Impale'),
(2924901, 2, 54021, 1, 2, @SGUID, 100, 0, 90000, 90000, 100000, 100000, 'Anub\'Rekhan(25N) - Locust Swarm');
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1595601, 'Naxxramas - Anub\'Rekhan', 100, 100),
(2924901, 'Naxxramas - Anub\'Rekhan(25N)', 100, 100);
REPLACE INTO `creature_spell_targeting` (Id, Type, Param1, Param2, Param3, Comments) VALUES
(28783, 1, 0, 0, 2, 'Anub\'Rekhan - Impale - Target Random Player'),
(56090, 1, 0, 0, 2, 'Anub\'Rekhan(25N) - Impale - Target Random Player');

-- Various Fixes
UPDATE creature_model_info SET combat_reach=3 WHERE modelid=16586;

-- Broadcast Text fixes
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE Id IN (11694, 7798);
UPDATE `broadcast_text` SET ChatTypeID=1 WHERE Id IN (13068, 13069, 13070, 13071);
UPDATE `broadcast_text` SET SoundEntriesID1=8909 WHERE id=13068;
UPDATE `broadcast_text` SET SoundEntriesID1=8910 WHERE id=13069;
UPDATE `broadcast_text` SET SoundEntriesID1=8911 WHERE id=13070;
UPDATE `broadcast_text` SET SoundEntriesID1=8912 WHERE id=13071;
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE Id IN (32801, 32802);
UPDATE `broadcast_text` SET Text='%s begins to unleash an insect swarm!', ChatTypeID=3 WHERE id=13443;
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE id IN (29887, 32796);
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8785 WHERE id=13000; -- Just a little taste Aggro1
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8786 WHERE id=13002; -- There is no way out Aggro2
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8787 WHERE id=13003; -- Yes, Run, Blood faster Aggro 3
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8788 WHERE id=13004; -- Welcome to my parlor Greet
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8789 WHERE id=13005; -- All be over soon Slay
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8790 WHERE id=13006; -- Little Hearts beating Taunt1
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8791 WHERE id=13007; -- Where to Go, what to? Taunt2
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8792 WHERE id=13008; -- Which one shall I eat?Taunt3
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8793 WHERE id=13009; -- Closer now, tasty morsTaunt4
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8799 WHERE id=12852;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8798 WHERE id=12853;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8800 WHERE id=12854;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8801 WHERE id=12855;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8794 WHERE id=12856;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8795 WHERE id=12857;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8796 WHERE id=12858;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8797 WHERE id=12859;
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE Id=31019;
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE id=32334;
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE id=32805;
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE id=32335;
UPDATE `broadcast_text` SET EmoteID1=5 WHERE Id BETWEEN 13129 AND 13136;
UPDATE `broadcast_text` SET EmoteID1=1 WHERE Id BETWEEN 13137 AND 13140;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8855 WHERE id=13075;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8856 WHERE id=13076;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8859 WHERE id=13078;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8861 WHERE id=13080;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8862 WHERE id=13081;
UPDATE `broadcast_text` SET ChatTypeID=2, SoundEntriesID1=8863 WHERE id=13082;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8858 WHERE id=13077;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8852 WHERE id=13072;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8853 WHERE id=13073;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8854 WHERE id=13074;
UPDATE `broadcast_text` SET ChatTypeID=1, SoundEntriesID1=8860 WHERE id=13079;
UPDATE `broadcast_text` SET `ChatTypeID`=3 WHERE Id=32321;
UPDATE `broadcast_text` SET `ChatTypeID`=2 WHERE Id=12242;
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE Id=32318;
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE Id=32319;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8892 WHERE `ID` = 13010;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8893 WHERE `ID` = 13011;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8894 WHERE `ID` = 13012;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8895 WHERE `ID` = 13013;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8802 WHERE `ID` = 13023;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8803 WHERE `ID` = 13024;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8804 WHERE `ID` = 13025;
UPDATE `broadcast_text` SET `ChatTypeID` = 1, `SoundEntriesID1` = 8805 WHERE `ID` = 13026;
UPDATE `broadcast_text` SET `ChatTypeID` = 1, `SoundEntriesID1` = 8806 WHERE `ID` = 13027;
UPDATE `broadcast_text` SET `ChatTypeID` = 1, `SoundEntriesID1` = 8808 WHERE `ID` = 13028;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8807 WHERE `ID` = 13029;
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `ID` = 13030;
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `ID` = 13031;
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `ID` = 13032;
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `ID` = 13033;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8899 WHERE `ID` = 13034;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8900 WHERE `ID` = 13035;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8901 WHERE `ID` = 13036;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8902 WHERE `ID` = 13037;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 14571 WHERE `ID` = 13051;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 14572 WHERE `ID` = 13052;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 14573 WHERE `ID` = 13053;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 14574 WHERE `ID` = 13055;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 14575 WHERE `ID` = 13056;
UPDATE `broadcast_text` SET `Text` = 'Bow to the might of the Scourge!', `SoundEntriesID1` = 14576 WHERE `ID` = 13057;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8864 WHERE `ID` = 13083;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8865 WHERE `ID` = 13084;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8866 WHERE `ID` = 13085;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8867 WHERE `ID` = 13086;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8868 WHERE `ID` = 13087;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8869 WHERE `ID` = 13088;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8870 WHERE `ID` = 13089;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8871 WHERE `ID` = 13090;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8872 WHERE `ID` = 13091;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8877 WHERE `ID` = 13096;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8913 WHERE `ID` = 13097;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8914 WHERE `ID` = 13098;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8915 WHERE `ID` = 13099;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 8916 WHERE `ID` = 13100;
UPDATE `broadcast_text` SET `ChatTypeID` = 3 WHERE `ID` = 33087;
UPDATE `broadcast_text` SET `ChatTypeID` = 3 WHERE `ID` = 33088;
UPDATE `broadcast_text` SET `SoundEntriesID1` = 14580 WHERE `ID` = 33116;
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8819 WHERE Id=12999; -- summon
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8809 WHERE Id=12995; -- Pray for mercy aggro1
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8810 WHERE Id=12996; -- scream your  aggro2
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8811 WHERE Id=12997; -- The end is   aggro3
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8812 WHERE Id=13017; -- your soul is bound chain 1
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8813 WHERE Id=13018; -- there will be no  chain2
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8814 WHERE Id=13019; -- do not rejoice, death
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8815 WHERE Id=13020; -- I will freeze |frost
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8816 WHERE Id=12998; -- master I req | help
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8817 WHERE Id=13021; -- the dark void | slay
UPDATE `broadcast_text` SET ChatTypeID=2,SoundEntriesID1=8818 WHERE Id=13022; -- text emote | slay2
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=9088 WHERE Id=13492; -- your petty | spec 1
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=14770 WHERE Id=12994; -- very well (lk resp)
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE Id=32803; -- Kel'Thuzad strikes!
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE Id=32804; -- A Guardian of 
UPDATE `broadcast_text` SET `ChatTypeID` = 6, `Text` = 'Soon we will eradicate the Alliance and Horde. Then the rest of Azeroth will fall before the might of my army.', `SoundEntriesID1` = 14768 WHERE `ID` = 12988; -- 2
UPDATE `broadcast_text` SET `ChatTypeID` = 6, `Text` = 'Invaders... here?! DESTROY them, Kel\'Thuzad! Naxxramas must not fall!', `SoundEntriesID1` = 14769 WHERE `ID` = 12989; -- 4
UPDATE `broadcast_text` SET `ChatTypeID` = 6, `Text` = 'Your forces are nearly marshaled to strike back against your enemies, my liege.', `SoundEntriesID1` = 14467 WHERE `ID` = 12990; -- 1
UPDATE `broadcast_text` SET `ChatTypeID` = 6, `Text` = 'Yes, master. The time of their ultimate demise draws close.... What is this?', `SoundEntriesID1` = 14468 WHERE `ID` = 12991; -- 3
UPDATE `broadcast_text` SET `ChatTypeID` = 6, `Text` = 'As you command, master!', `SoundEntriesID1` = 14469 WHERE `ID` = 12992; -- 5
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `ID` = 12993; -- 6
UPDATE `broadcast_text` SET `ChatTypeID` = 3 WHERE `ID` = 32306;
UPDATE `broadcast_text` SET `ChatTypeID` = 3 WHERE `ID` = 32307;
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8845 WHERE id=13061; -- Glory to the master
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8846 WHERE id=13062; -- Your life is forfeit
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8847 WHERE id=13063; -- Die, trespasser
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8848 WHERE id=13064; -- I will serve the master in death
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8849 WHERE id=13065; -- My task is done
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8850 WHERE id=13066; -- breathe no more
UPDATE `broadcast_text` SET ChatTypeID=1,SoundEntriesID1=8851 WHERE id=13067; -- rise my soldiers, rise and fight once more
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE id=32974; -- summons forth skeletal warriors
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE id=32331; -- teleports to the balcony
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE id=32977; -- raises more skeletons
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE id=32976; -- teleports back into battle
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE Id IN (32303, 32305, 32304);
UPDATE `broadcast_text` SET ChatTypeID=3 WHERE id IN (12156, 12178, 32324);
UPDATE `broadcast_text` SET ChatTypeID=1 WHERE id IN (13083, 13023, 13025, 13085, 13086, 13087, 13088, 13089, 13090, 13096);

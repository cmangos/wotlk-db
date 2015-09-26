-- More Updates realted to DK Starting Zone

-- Duplicates
DELETE FROM creature WHERE guid IN (129218,129219);
DELETE FROM creature_addon WHERE guid IN (129218,129219);
DELETE FROM creature_movement WHERE id IN (129218,129219);

-- Scourge Sky Darkener
UPDATE creature_template_addon SET auras = NULL WHERE entry = 28642;

-- Scourge Gryphon
UPDATE creature_template SET minlevel = 56, maxlevel = 56, MinLevelHealth = 53980, MaxLevelHealth = 53980 WHERE entry = 28864;
UPDATE creature_movement_template SET waittime = 1000, script_id = 2886402 WHERE entry = 28864 AND point = 1;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2886402; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2886402,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');

-- q.12680 'Grand Theft Palomino'
DELETE FROM dbscripts_on_spell WHERE id = 52264; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52264,1,22,2084,0x01,28653,20,5,0,0,0,0,0,0,0,0,'temp faction'),
(52264,1,14,52263,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52264,2,15,52266,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52264,3,37,0,0,28654,20,0,0,0,0,0,0,0,0,0,''),
(52264,6,15,52267,0,28654,20,3,0,0,0,0,0,0,0,0,''),
(52264,8,0,0,0,28654,20,3,2000000410,0,0,0,0,0,0,0,'');

-- These mobs should not give any xp.
UPDATE creature_template SET ExtraFlags = ExtraFlags|64 WHERE Entry IN (28834, 28850, 28856, 29102, 29103, 29104);

-- After complete - source item must be removed from the player
-- The Gift That Keeps On Giving 
UPDATE quest_template SET ReqItemid1 = 39253, ReqItemCount1 = 1 WHERE entry = 12698;
-- An End To All Things...
UPDATE quest_template SET ReqItemid1 = 39700, ReqItemCount1 = 1 WHERE entry = 12779;

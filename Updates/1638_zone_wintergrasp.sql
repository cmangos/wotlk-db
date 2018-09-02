-- *** Wintergrasp ***

-- *** Wintergrasp conditions
SET @conditionId=1529;
DELETE FROM conditions WHERE condition_entry BETWEEN @conditionId AND @conditionId+5;
INSERT INTO conditions(condition_entry,type,value1,value2,comments) VALUES
(@conditionId,38,4197,3,'Wintergrasp - Check fortress entrance allowance'),
(@conditionId+1,38,4197,4,'Wintergrasp - Sunken Ring teleport allowance'),
(@conditionId+2,38,4197,5,'Wintergrasp - Broken Temple teleport allowance'),
(@conditionId+3,38,4197,6,'Wintergrasp - Eastpark teleport allowance'),
(@conditionId+4,38,4197,7,'Wintergrasp - Westpark teleport allowance'),
-- Update workshop conditions
(@conditionId+5,-3,1446,0,'Wintergrasp - not allowed to build vehicled - alliance'),
(@conditionId+6,-3,1447,0,'Wintergrasp - not allowed to build vehicled - horde'),
(@conditionId+7,-1,1446,1443,'Wintergrasp - alliance vehicle build allowance and First Liutenant rank'),
(@conditionId+8,-1,1447,1443,'Wintergrasp - horde vehicle build allowance and First Liutenant rank'),
(@conditionId+9,-1,1446,1444,'Wintergrasp - alliance vehicle build allowance and First Liutenant / Corporal rank'),
(@conditionId+10,-1,1447,1444,'Wintergrasp - horde vehicle build allowance and First Liutenant / Corporal rank');

-- update gossip conditions for workshops
UPDATE gossip_menu SET condition_id=@conditionId+5 WHERE entry=9923 AND text_id=13786;
UPDATE gossip_menu SET condition_id=@conditionId+9 WHERE entry=9923 AND text_id=13798;
UPDATE gossip_menu SET condition_id=@conditionId+6 WHERE entry=9904 AND text_id=13786;
UPDATE gossip_menu SET condition_id=@conditionId+10 WHERE entry=9904 AND text_id=13759;

-- Update conditions: allow the option only if the battlefield conditions are met
UPDATE gossip_menu_option SET condition_id=@conditionId+9 WHERE menu_id=9923 AND id=0;
UPDATE gossip_menu_option SET condition_id=@conditionId+10 WHERE menu_id=9904 AND id=0;
UPDATE gossip_menu_option SET condition_id=@conditionId+7 WHERE menu_id=9923 AND id IN (1,2);
UPDATE gossip_menu_option SET condition_id=@conditionId+8 WHERE menu_id=9904 AND id IN (1,2);


-- *** Wintergrasp creatures
-- normal elements have phase 1; spawn time is handled by script
UPDATE creature SET phaseMask=1 WHERE id IN (30842,30845,30846,30847,30848,30849);
-- increase the spawn time for main characters
UPDATE creature SET spawntimesecsmin=1800,spawntimesecsmax=1800 WHERE id IN (31054,31036,31109,31108,31051,31153,31052,32294,39172,30489,30488,32626,31091,31101,
    31107,31053,31106,31151,31102,32296,39173,32615);

-- fix vehicle factions: cannons, catapults are friendly and handled by script; siege engines have individual factions
UPDATE creature_template SET FactionAlliance=35, FactionHorde=35 WHERE entry=28366;
UPDATE creature_template SET FactionAlliance=35, FactionHorde=35 WHERE entry=27881;
UPDATE creature_template SET FactionAlliance=1735, FactionHorde=1735 WHERE entry IN (32627,32629);
UPDATE creature_template SET FactionAlliance=1732, FactionHorde=1732 WHERE entry IN (28319,28312);
-- cannons have long spawn time; they are spawned and despawned based on script
UPDATE creature SET spawntimesecsmin=10800,spawntimesecsmax=10800 WHERE id=28366;

-- set the detection unit as active, in order to keep the grid loaded
UPDATE creature_template SET ExtraFlags=4096 WHERE entry=27869;

-- set condition for VoA raid entrance
UPDATE areatrigger_teleport SET condition_id=@conditionId WHERE id=5258;


-- *** Wintergrasp spirit healers
-- phase spirit healers
-- fortress spirit healer - zone owner
UPDATE creature SET phaseMask = 128 WHERE guid IN (139137);
UPDATE creature SET phaseMask = 64 WHERE guid IN (139140);
-- factory spirit healers - factory owner
UPDATE creature SET phaseMask = 32 WHERE guid IN (139138,138913,131380,131379);
UPDATE creature SET phaseMask = 16 WHERE guid IN (139141,138912,139139,131377);

-- spirit healer gossip scripts
-- alliance
UPDATE gossip_menu_option SET action_script_id=1012801, condition_id=@conditionId WHERE menu_id=10128 AND id=0; -- fortress teleport
UPDATE gossip_menu_option SET action_script_id=1012802, condition_id=@conditionId+1 WHERE menu_id=10128 AND id=1; -- sunken ring
UPDATE gossip_menu_option SET action_script_id=1012803, condition_id=@conditionId+2 WHERE menu_id=10128 AND id=2; -- broken temple
UPDATE gossip_menu_option SET action_script_id=1012804, condition_id=@conditionId+4 WHERE menu_id=10128 AND id=3; -- westpark
UPDATE gossip_menu_option SET action_script_id=1012805, condition_id=@conditionId+3 WHERE menu_id=10128 AND id=4; -- eastpark
UPDATE gossip_menu_option SET action_script_id=1012806 WHERE menu_id=10128 AND id=5; -- base camp
-- horde
UPDATE gossip_menu_option SET action_script_id=1012801, condition_id=@conditionId WHERE menu_id=10129 AND id=0; -- fortress teleport
UPDATE gossip_menu_option SET action_script_id=1012802, condition_id=@conditionId+1 WHERE menu_id=10129 AND id=1; -- sunken ring
UPDATE gossip_menu_option SET action_script_id=1012803, condition_id=@conditionId+2 WHERE menu_id=10129 AND id=2; -- broken temple
UPDATE gossip_menu_option SET action_script_id=1012804, condition_id=@conditionId+4 WHERE menu_id=10129 AND id=3; -- westpark
UPDATE gossip_menu_option SET action_script_id=1012805, condition_id=@conditionId+3 WHERE menu_id=10129 AND id=4; -- eastpark
UPDATE gossip_menu_option SET action_script_id=1012906 WHERE menu_id=10129 AND id=5; -- base camp

-- gossip teleport scripts
DELETE FROM dbscripts_on_gossip WHERE id IN (1012801,1012802,1012803,1012804,1012805,1012806,1012906);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, comments) VALUES
(1012801, 0, 15, 59760, 0, 0, 0, 0, 0, 'cast Teleport: Fortress Graveyard'),
(1012802, 0, 15, 59762, 0, 0, 0, 0, 0, 'cast Teleport: Sunken Ring'),
(1012803, 0, 15, 59763, 0, 0, 0, 0, 0, 'cast Teleport: Broken Temple'),
(1012804, 0, 15, 59766, 0, 0, 0, 0, 0, 'cast Teleport: Westspark Factory Graveyard'),
(1012805, 0, 15, 59767, 0, 0, 0, 0, 0, 'cast Teleport: Eastspark Factory Graveyard'),
(1012806, 0, 15, 59769, 0, 0, 0, 0, 0, 'cast Teleport: Alliance Landing Zone'),
(1012906, 0, 15, 59765, 0, 0, 0, 0, 0, 'cast Teleport: Horde Landing Zone');

-- Update the gossip script to activate the robotic arms
-- ToDo: spell needs core support
DELETE FROM dbscripts_on_gossip WHERE id IN (990401,990402,990403,992301,992302,992303) AND datalong=49899;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, comments) VALUES
-- horde
(990401, 0, 15, 49899, 1, 0, 0, 0, 0, 'cast Activate Robotic Arms'),
(990402, 0, 15, 49899, 1, 0, 0, 0, 0, 'cast Activate Robotic Arms'),
(990403, 0, 15, 49899, 1, 0, 0, 0, 0, 'cast Activate Robotic Arms'),
-- alliance
(992301, 0, 15, 49899, 1, 0, 0, 0, 0, 'cast Activate Robotic Arms'),
(992302, 0, 15, 49899, 1, 0, 0, 0, 0, 'cast Activate Robotic Arms'),
(992303, 0, 15, 49899, 1, 0, 0, 0, 0, 'cast Activate Robotic Arms');

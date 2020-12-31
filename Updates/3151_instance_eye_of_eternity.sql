
-- Spawn Alexstrasza
DELETE FROM dbscripts_on_creature_death WHERE id=28859;
INSERT INTO dbscripts_on_creature_death (id,delay,command,datalong,datalong2,dataint,x,y,z,o,comments) VALUES
(28859,10000,10,32295,1800,1,841.476,1235.288,289.670,2.4891,'Malygos - spawn Alexstrasza after death');

-- Set WP movement for Alexstrasza
UPDATE creature_template SET MovementType=2 WHERE entry=32295;

DELETE FROM `creature_movement_template` WHERE entry IN (32295);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(32295, 0, 1, 855.336, 1224.684, 300.083, 100, 0, 0),
(32295, 0, 2, 854.548, 1225.3, 300.083, 100, 0, 0),
(32295, 0, 3, 788.073, 1276.091, 246.90585, 100, 1000, 3229503);

SET @TGUID := 2000020746;

DELETE FROM dbscript_string WHERE entry IN (@TGUID,@TGUID+1,@TGUID+2,@TGUID+3,@TGUID+4,@TGUID+5);
INSERT INTO dbscript_string (entry, content_default, sound,type,comment) VALUES
(@TGUID,'I did what I had to, brother. You gave me no alternative.',14406,1,'Eye of Eternity - Alexstrasza - Epilogue 1'),
(@TGUID+1,'And so ends the Nexus War.',14407,1,'Eye of Eternity - Alexstrasza - Epilogue 2'),
(@TGUID+2,'This resolution pains me deeply, but the destruction, the monumental loss of life had to end. Regardless of Malygos'' recent transgressions, I will mourn his loss. He was once a guardian, a protector. This day, one of the world''s mightiest has fallen.',14408,1,'Eye of Eternity - Alexstrasza - Epilogue 3'),
(@TGUID+3,'The red dragonflight will take on the burden of mending the devastation wrought on Azeroth. Return home to your people and rest. Tomorrow will bring you new challenges, and you must be ready to face them. Life...goes on.',14409,1,'Eye of Eternity - Alexstrasza - Epilogue 4');

-- Alexstrasza script
DELETE FROM dbscripts_on_creature_movement WHERE id=3229503;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3229503,0,32,1,0,0,0,0,0,'Alexstrasza - pause WP Movement'),
(3229503,0,15,61028,0,0,0,0,0,'Alexstrasza - Cast Alexstrasza\'s Gift Beam'),
(3229503,0,15,61023,0,32448,6160013,0x11,0,'Alexstrasza\'s Gift - Cast Alexstrasza\'s Gift Visual'),
(3229503,5000,0,0,0,0,0,0,@TGUID,'Alexstrasza\'s - say epilogue 1'),
(3229503,12000,0,0,0,0,0,0,@TGUID+1,'Alexstrasza\'s - say epilogue 2'),
(3229503,16000,0,0,0,0,0,0,@TGUID+2,'Alexstrasza\'s - say epilogue 3'),
(3229503,40000,0,0,0,0,0,0,@TGUID+3,'Alexstrasza\'s - say epilogue 4');

-- gameobject flags
UPDATE gameobject_template SET flags=32 WHERE entry=193070;

-- update vehicle regen
UPDATE creature_template SET RegenerateStats=12 WHERE entry IN (30161,31752);

-- spell script targets for vortex and surge of power
DELETE FROM spell_script_target WHERE entry IN (55853,56263,56264,56265,56266,61071,61072,61073,61074,61075,56505,61210);
INSERT INTO spell_script_target VALUES
(55853,1,30090,0),
(56263,1,30090,0),
(56264,1,30090,0),
(56265,1,30090,0),
(56266,1,30090,0),
(61071,1,30090,0),
(61072,1,30090,0),
(61073,1,30090,0),
(61074,1,30090,0),
(61075,1,30090,0),
(56505,1,30334,0),
(61210,1,30234,0);

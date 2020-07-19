-- Event: The Lich King in Agmar's Hammer - Dragonblight
-- Event is bugged since wotlk beta (almost impossible to get correct data)
-- All is guesswork work based on 2 available YT avis and data from wowhead. (will be corrected if any new data will show up)
-- Sources:
-- https://www.youtube.com/watch?v=l9RY8ot26CY&t
-- https://www.youtube.com/watch?v=2L9Fnp6cYio

-- Frostbrood Slayer 26967
-- most of stats are unknown
UPDATE creature_template SET Faction = 21, UnitFlags = 768, MinLevel = 83, MaxLevel = 83, MinLevelHealth = 139450, MaxLevelHealth = 139450, HealthMultiplier = 10, InhabitType = 7, VehicleTemplateId = 40 WHERE entry = 26967;
-- event will repeat every 5-10mins
DELETE FROM creature WHERE id = 26967;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5714081,26967,571,1,32,0,0,3831.12,1580.46,200.169,4.92006,30000,900000,0,0,0,0,0,2);
UPDATE creature_template SET MovementType = 2 WHERE entry = 26967;
DELETE FROM creature_movement_template WHERE entry = 26967;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26967,1,3831.12,1580.46,200.169,100,2000,2696701),
(26967,2,3831.12,1580.46,86.6985,4.92,105000,2696702),
(26967,4,3831.12,1580.46,200.169,100,2000,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2696701,2696702,2696703);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2696701,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2696701,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2696702,0,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2696702,5000,0,0,0,0,29394,10,7,2000020433,0,0,0,0,0,0,0,''),
(2696702,27000,0,0,0,0,29394,10,7,2000020434,0,0,0,0,0,0,0,''),
(2696702,46000,0,0,0,0,29394,10,7,2000020435,0,0,0,0,0,0,0,''),
(2696702,65000,0,0,0,0,29394,10,7,2000020436,0,0,0,0,0,0,0,''),
(2696702,84000,0,0,0,0,29394,10,7,2000020437,0,0,0,0,0,0,0,''),
(2696702,104000,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2696702,104500,18,0,0,0,29394,10,7,0,0,0,0,0,0,0,0,''),
(2696702,105000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
-- must be vehicle (player could click on both - dragon and Lich King)
DELETE FROM vehicle_accessory WHERE vehicle_entry = 26967;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(26967,0,29394,'Frostbrood Slayer');
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000020433 AND 2000020437;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000020433, 'Ah, the Horde... meddling, as always. I suppose a welcome is in order. So welcome, insects. Welcome to my world.\n', 14737, 0, 0, 1, ''),
(2000020434, 'You have crossed into the world of the dead in search of answers. You wish to save your ally and have risked life and limb to be here. Allow me to help.', 14738, 0, 0, 1, ''),
(2000020435, 'The boy believed that he was free, but free will has a price. The demons I kept at bay are now loosed upon him and all death knights that attempt to flee... \n', 14739, 0, 0, 1, ''),
(2000020436, 'Mograine\'s sacrifice was for nothing. You will let Koltira know, won\'t you?\n', 14740, 0, 0, 0, ''),
(2000020437, 'And remember this, mortal: for now, I give you the choice. I allow you to pick your allegiance, but in the end, you will be mine - one way or another.\n', 14741, 0, 0, 25, '');

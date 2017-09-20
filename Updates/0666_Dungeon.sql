-- ==============================
-- RAGEFIRE CHASM TBC UPDATES
-- ==============================

-- ======================================
-- All Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ======================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (11517,11518,11519,11520);

-- Linked Aggro Between Group 1 Ragefire Troggs
DELETE FROM creature_linking WHERE master_guid IN (48653);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48654,48653,3),
(48662,48653,3);

-- Linked Aggro Between Group 2 Ragefire Troggs
DELETE FROM creature_linking WHERE master_guid IN (48660);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48666,48660,3),
(48657,48660,3);

-- Move Trogg Closer To Group
UPDATE creature SET position_x = -277.035553, position_y = -47.274254, position_z = -60.932140 WHERE guid IN (48658);
-- Linked Aggro Between Group 3 Ragefire Troggs
DELETE FROM creature_linking WHERE master_guid IN (48658);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48670,48658,3),
(48673,48658,3);

-- Linked Aggro Between Group 4 Ragefire Troggs
DELETE FROM creature_linking WHERE master_guid IN (48671);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48667,48671,3),
(48665,48671,3);

-- Linked Aggro Between 2 Ragefire Troggs (Oggleflint Path)
DELETE FROM creature_linking WHERE master_guid IN (48672);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48659,48672,3);

-- Linked Aggro Between 2 Ragefire Troggs (Oggleflint Path)
DELETE FROM creature_linking WHERE master_guid IN (48656);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48652,48656,3);

-- Linked Aggro Between 2 Ragefire Troggs (Oggleflint Path)
DELETE FROM creature_linking WHERE master_guid IN (48649);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48650,48649,3);

-- Linked Aggro Between Ragefire Trogg and Shaman (Oggleflint Path)
DELETE FROM creature_linking WHERE master_guid IN (43583);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(43582,43583,3);

-- Linked Aggro Between Ragefire Troggs Guarding Oggleflint
DELETE FROM creature_linking WHERE master_guid IN (48645);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48643,48645,3);

-- Linked Aggro Between (2nd Right-Path) 2 Ragefire Troggs
DELETE FROM creature_linking WHERE master_guid IN (48677);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48678,48677,3);

-- Earthborer Pathing
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 48642;
DELETE FROM creature_movement WHERE id = 48642;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(48642,1,-176.762,11.7284,-31.6117,0,0,0.155953),
(48642,2,-190.166,10.9667,-33.0618,0,0,3.22686),
(48642,3,-210.648,7.87269,-39.8187,0,0,3.18916),
(48642,4,-230.782,9.0604,-44.4237,0,0,3.03836),
(48642,5,-257.486,7.90906,-49.87,0,0,3.17267),
(48642,6,-277.67,8.30601,-49.0795,0,0,3.20801),
(48642,7,-286.82,7.69739,-46.2229,0,0,3.20801),
(48642,8,-298.657,5.29958,-48.0252,0,0,3.39179),
(48642,9,-303.916,0.147967,-49.7325,0,0,4.02718),
(48642,10,-293.624,7.59828,-47.0034,0,0,0.427703),
(48642,11,-280.864,9.03737,-47.8212,0,0,0.121398),
(48642,12,-265.063,9.36602,-49.8266,0,0,0.046786),
(48642,13,-247.208,8.66721,-48.9012,0,0,6.25693),
(48642,14,-233.341,8.45427,-44.4523,0,0,6.25693),
(48642,15,-216.121,6.63711,-41.6912,0,0,6.14619),
(48642,16,-204.445,7.92862,-37.4818,0,0,0.217217),
(48642,17,-192.818,10.4947,-33.4114,0,0,0.217217),
(48642,18,-172.941,14.3137,-30.7882,0,0,0.217217),
(48642,19,-161.6,14.8526,-27.2189,0,0,0.046785),
(48642,20,-147.478,11.5309,-22.3629,0,0,6.04723),
(48642,21,-135.908,8.74903,-20.8654,0,0,6.04723),
(48642,22,-124.215,10.9816,-19.9281,0,0,0.192869),
(48642,23,-116.619,15.0944,-18.8846,0,0,0.49839),
(48642,24,-111.628,24.9273,-18.6011,0,0,1.08587),
(48642,25,-108.915,36.6246,-18.0731,0,0,1.33091),
(48642,26,-114.503,21.4459,-18.8557,0,0,4.38297),
(48642,27,-118.88,14.3031,-19.0844,0,0,4.1018),
(48642,28,-131.828,8.81858,-20.8654,0,0,3.55045),
(48642,29,-144.715,9.21781,-21.8423,0,0,3.11063),
(48642,30,-161.281,12.4744,-27.4041,0,0,2.97632),
(48642,31,-170.005,13.6925,-30.0021,0,0,3.08706);

-- Linked Aggro Between Right Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48689);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48695,48689,3),
(48691,48689,3);

-- Linked Aggro Between Left Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48687);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48688,48687,3),
(48694,48687,3);

-- Right Searing Blade Enforcer Pathing
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 48690;
DELETE FROM creature_movement WHERE id = 48690;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(48690,1,-203.927,99.1463,-25.4809,0,0,1.10078),
(48690,2,-200.74,104.201,-25.1381,0,0,1.10078),
(48690,3,-198.066,115.548,-23.217,0,0,1.29791),
(48690,4,-195.291,126.656,-22.168,0,0,1.30027),
(48690,5,-192.549,136.545,-24.1064,0,0,1.30027),
(48690,6,-190.259,144.95,-25.2199,0,0,1.22487),
(48690,7,-193.47,134.133,-23.458,0,0,4.48035),
(48690,8,-196.29,123.736,-22.179,0,0,4.55103),
(48690,9,-199.336,113.159,-23.7528,0,0,4.44029),
(48690,10,-199.643,106.426,-24.8865,0,0,4.73482),
(48690,11,-205.093,98.0147,-25.4833,0,0,4.09157);

-- Left Searing Blade Enforcer Pathing
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 48696;
DELETE FROM creature_movement WHERE id = 48696;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(48696,1,-214.025,91.2148,-25.0186,0,0,3.71773),
(48696,2,-219.007,90.5475,-25.0186,0,0,3.27476),
(48696,3,-229.367,92.7477,-23.1312,0,0,2.93233),
(48696,4,-235.891,93.102,-21.7277,0,0,3.16637),
(48696,5,-246.583,91.6992,-23.5772,0,0,3.23942),
(48696,6,-254.38,92.4157,-25.0184,0,0,3.02029),
(48696,7,-245.579,91.7263,-23.2418,0,0,6.26634),
(48696,8,-236.893,92.4553,-21.7166,0,0,0.024783),
(48696,9,-231.24,92.8211,-22.4395,0,0,6.27027),
(48696,10,-222.659,90.784,-25.0184,0,0,6.0158),
(48696,11,-217.698,89.1509,-25.0184,0,0,6.04093),
(48696,12,-209.44,94.6833,-25.2915,0,0,0.590271);

-- Linked Aggro Between Left Platform Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48693);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48692,48693,3),
(48705,48693,3);

UPDATE creature SET SpawnDist = 4, MovementType = 1 WHERE guid = 48693;

-- Guards Should not be Moving
UPDATE creature SET SpawnDist = 0, MovementType = 0 WHERE guid = 48704;
UPDATE creature SET SpawnDist = 0, MovementType = 0 WHERE guid = 48703;

-- Linked Aggro Between Left Platform Guards
DELETE FROM creature_linking WHERE master_guid IN (48704);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48703,48704,3);

-- Linked Aggro Between Right Platform Guards
DELETE FROM creature_linking WHERE master_guid IN (48699);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48700,48699,3);

-- Linked Aggro Between Far Right Platform Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48719);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48720,48719,3),
(48702,48719,3);

-- Linked Aggro Between Far Right Platform Guards
DELETE FROM creature_linking WHERE master_guid IN (48713);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48712,48713,3);

-- Linked Aggro Between Far Left Platform Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48710);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48709,48710,3);

-- Linked Aggro Between Far Left Platform Guards
DELETE FROM creature_linking WHERE master_guid IN (48708);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48711,48708,3);

-- Linked Aggro Between FAR Far Right Platform Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48715);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48717,48715,3),
(48722,48715,3);

-- Linked Aggro Between FAR Far Right Platform Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48716);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48718,48716,3),
(48714,48716,3);

-- Linked Aggro Between FAR Far Right Platform Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48723);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48724,48723,3);

-- Add Missing Searing Blade Enforcer -  missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid = 72679;
DELETE FROM creature_addon WHERE guid = 72679;
DELETE FROM creature_movement WHERE id = 72679;
DELETE FROM game_event_creature WHERE guid = 72679;
DELETE FROM game_event_creature_data WHERE guid = 72679;
DELETE FROM creature_battleground WHERE guid = 72679;
DELETE FROM creature_linking WHERE guid = 72679
 OR master_guid = 72679;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(72679,11323,389,1,1,0,0,-334.419,216.177,-20.6274,0.357766,7200,0,0,900,0,0,0);

-- Linked Aggro Between Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (72679);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48725,72679,3),
(48731,72679,3);

-- Linked Aggro Between Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48732);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48728,48732,3);

-- Linked Aggro Between Group of Searing Cult Type NPC in front of Jergosh the Invoker
DELETE FROM creature_linking WHERE master_guid IN (48737);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48741,48737,3);

-- Linked Aggro Between Group of Searing Cult Type NPC
DELETE FROM creature_linking WHERE master_guid IN (48744);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48739,48744,3),
(48745,48744,3);

-- Linked Aggro Between Group of Searing Cult Type NPC Up Balzzalan Ramp
DELETE FROM creature_linking WHERE master_guid IN (48727);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48726,48727,3);

-- Linked Aggro Between Group of Searing Cult Type NPC Up Balzzalan Ramp
DELETE FROM creature_linking WHERE master_guid IN (48730);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48729,48730,3);

-- Linked Aggro Between Group of Searing Cult Type NPC Up Balzzalan Ramp
DELETE FROM creature_linking WHERE master_guid IN (48736);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48734,48736,3),
(48735,48736,3);

-- Linked Aggro Between Group of Searing Cult Type NPC Up Balzzalan Ramp
DELETE FROM creature_linking WHERE master_guid IN (48738);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48743,48738,3),
(48746,48738,3);

-- Linked Aggro Between Group of Searing Cult Type NPC Up Balzzalan Ramp
DELETE FROM creature_linking WHERE master_guid IN (48747);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48748,48747,3);

-- Linked Aggro Between Group of Searing Cult Type NPC in Front of  Balzzalan
DELETE FROM creature_linking WHERE master_guid IN (48751);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48749,48751,3);

-- Linked Aggro Between Ragefire Troggs (Left of Cross-roads near start)
DELETE FROM creature_linking WHERE master_guid IN (48668);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(48674,48668,3);

-- Linked Aggro Between Ragefire Troggs (Left of Cross-roads near start)
DELETE FROM creature_linking WHERE master_guid IN (48637);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(38050,48637,3);

-- Linked Aggro Between Ragefire Troggs (Left of Cross-roads near start)
DELETE FROM creature_linking WHERE master_guid IN (43580);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(38049,43580,3),
(43581,43580,3);

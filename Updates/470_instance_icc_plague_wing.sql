-- PLAGUE WING
-- fix GO state
UPDATE gameobject SET state=0 WHERE id IN (201613,201614);
-- correct spawn
DELETE FROM creature WHERE guid IN (122625,122627);
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(122625, 38879, 631, 15, 1, 0, 0, 4357.342, 3118.156, 375.9658, 4.712389, 604800, 0, 0, 5342, 0, 0, 0);
-- fix c_t_a aura
DELETE FROM creature_template_addon WHERE entry=38104;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(38104, 0, 0, 0, 0, 0, 0, '71158');
-- Movement for creatures 37217 and 37025
-- entry 37217
UPDATE creature SET MovementType=2 WHERE guid=120361;
UPDATE creature SET position_x=4446.556, position_y=3041.233, position_z=360.5201, orientation=1.573118 WHERE guid=120361;
DELETE FROM creature_movement WHERE id=120361;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,orientation) VALUES 
(120361, 1, 4446.835, 3046.261, 360.5235, 0, 0),
(120361, 2, 4444.277, 3029.061, 360.5183, 0, 0),
(120361, 3, 4425.802, 3027.573, 360.5259, 0, 0),
(120361, 4, 4393.045, 3028.929, 360.5212, 0, 0),
(120361, 5, 4371.218, 3026.187, 360.5201, 5000, 3.126),
(120361, 6, 4378.848, 3027.433, 360.5193, 0, 0),
(120361, 7, 4394.664, 3028.788, 360.5209, 0, 0),
(120361, 8, 4425.802, 3027.573, 360.5259, 0, 0),
(120361, 9, 4444.277, 3029.061, 360.5183, 0, 0),
(120361, 10, 4446.835, 3046.261, 360.5235, 0, 0),
(120361, 11, 4446.716, 3053.269, 360.517, 0, 0),
(120361, 12, 4446.243, 3068.958, 360.520, 5000, 1.575);
-- entry 37025
UPDATE creature SET MovementType=2 WHERE guid=120649;
UPDATE creature SET position_x=4306.165, position_y=3027.146, position_z=360.5208, orientation=3.135833 WHERE guid=120649;
DELETE FROM creature_movement WHERE id=120649;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,orientation) VALUES 
(120649, 1, 4303.348, 3028.200, 360.5209, 0, 0),
(120649, 2, 4320.700, 3028.170, 360.5211, 0, 0),
(120649, 3, 4332.758, 3027.414, 360.5239, 5000, 6.221),
(120649, 4, 4325.956, 3027.104, 360.5219, 0, 0),
(120649, 5, 4319.209, 3027.071, 360.5208, 0, 0),
(120649, 6, 4303.638, 3027.161, 360.5205, 0, 0),
(120649, 7, 4286.535, 3027.290, 360.5240, 0, 0),
(120649, 8, 4269.204, 3028.911, 360.5184, 0, 0),
(120649, 9, 4269.063, 3047.607, 360.5211, 0, 0),
(120649, 10, 4268.661, 3068.958, 360.5571, 5000, 1.575),
(120649, 11, 4268.031, 3053.269, 360.5206, 0, 0),
(120649, 12, 4268.698, 3029.402, 360.5184, 0, 0);

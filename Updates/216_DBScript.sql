-- Lord Thorval
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE id = 28472;
DELETE FROM creature_movement WHERE id = 129830;
UPDATE creature_template SET MovementType = 2 WHERE entry = 28472;
DELETE FROM creature_movement_template WHERE entry = 28472;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(28472, 1, 2527.73,-5549.21,377.036,30000,0,3.735,0,0),
(28472, 2, 2524.61,-5545.03,377.027,0,0,2.21325,0,0),
(28472, 3, 2524.61,-5545.03,377.027,15000,2847201,4.06051,0,0),
(28472, 4, 2530.44,-5554.25,377.056,0,0,5.26204,0,0),
(28472, 5, 2530.44,-5554.25,377.056,15000,2847202,3.50275,0,0),
(28472, 6, 2524.61,-5545.03,377.027,0,0,2.21325,0,0),
(28472, 7, 2524.61,-5545.03,377.027,15000,2847203,4.06051,0,0),
(28472, 8, 2530.44,-5554.25,377.056,1000,2847204,5.26204,0,0),
(28472, 9, 2524.61,-5545.03,377.027,1000,2847205,2.21325,0,0),
(28472,10, 2530.44,-5554.25,377.056,1000,2847206,5.26204,0,0),
(28472,11, 2524.61,-5545.03,377.027,0,0,2.21325,0,0),
(28472,12, 2524.61,-5545.03,377.027,15000,2847207,4.06051,0,0),
(28472,13, 2527.73,-5549.21,377.036,0,0,2.18866,0,0),
(28472,14, 2527.73,-5549.21,377.036,330000,0,3.735,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2847201 AND 2847207;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2847201,1,0,0,0,0,0,0,2000000510,0,0,0,0,0,0,0,''),
(2847202,1,0,0,0,0,0,0,2000000511,0,0,0,0,0,0,0,''),
(2847202,10,0,0,0,0,0,0,2000000512,0,0,0,0,0,0,0,''),
(2847203,1,0,0,0,0,0,0,2000000513,0,0,0,0,0,0,0,''),
(2847203,10,0,0,0,0,0,0,2000000514,0,0,0,0,0,0,0,''),
(2847204,1,0,0,0,0,0,0,2000000515,0,0,0,0,0,0,0,''),
(2847205,1,0,0,0,0,0,0,2000000516,0,0,0,0,0,0,0,''),
(2847206,1,0,0,0,0,0,0,2000000517,0,0,0,0,0,0,0,''),
(2847207,1,0,0,0,0,0,0,2000000518,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000510 AND 2000000518;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000510,'As disciples of blood, you strive to master the very lifeforce of your enemies.',0,0,0,0,NULL),
(2000000511,'Be it by blade or incantation, blood feeds our attacks and weakens our foes.',0,0,0,0,NULL),
(2000000512,'True masters learn to make blood serve just their strength in battle.',0,0,0,0,NULL),
(2000000513,'Stripping energy from our foes, both fighting and fallen, allows us to persevere where lesser beings fall exhausted.',0,0,0,0,NULL),
(2000000514,'And every foe that falls, energy sapped and stolen, only furthers our assault.',0,0,0,0,NULL),
(2000000515,'As masters of blood, we know battle without end...',0,0,0,0,NULL),
(2000000516,'We know hunger never to be quenched...',0,0,0,0,NULL),
(2000000517,'We know power never to be overcome...',0,0,0,0,NULL),
(2000000518,'As masters of blood, we are masters of life and death itself. Against us, even hope falls drained and lifeless.',0,0,0,0,NULL);

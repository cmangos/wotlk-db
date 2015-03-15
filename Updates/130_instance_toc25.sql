-- ToC25 - Valkyrs
-- addons
DELETE FROM creature_template_addon WHERE entry IN (34628,34630);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, auras) VALUES
(34628, 0, 0x0, 0x1, '65796'),
(34630, 0, 0x0, 0x1, '65794');
-- spell clicks
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (34567,34568);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(34567,65684,0,0,0,1,0),
(34568,65686,0,0,0,1,0);
-- spell target
DELETE FROM spell_script_target WHERE entry IN (66133);
insert into spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(66133,1,34497,0),
(66133,1,34496,0);
-- movement
DELETE FROM creature_movement_template WHERE entry IN (34497);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(34497,1,571.684,204.902,399.263,3449701,0,0),
(34497,2,572.097,200.955,401.193,0,0,0),
(34497,3,571.792,184.486,401.215,0,0,0),
(34497,4,583.332,178.722,401.208,0,0,0),
(34497,5,584.479,167.847,400.696,3449605,1000,4.59022);
DELETE FROM creature_movement_template WHERE entry IN (34496);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(34496,1,555.451,205.888,399.263,3449601,0,0),
(34496,2,554.634,202.500,401.184,0,0,0),
(34496,3,555.075,179.826,401.202,0,0,0),
(34496,4,540.257,175.635,400.786,0,0,0),
(34496,5,540.467,170.601,400.772,3449605,1000,4.88692);
-- scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3449701,3449601,3449605);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,x,y,z,comments) VALUES
-- pause wp
(3449605,0,32,1,0,0,0,0,0,0,0,'Valkyr - pause wp'),
-- light valkyr
(3449701,1,10,34568,0,0,0,0,542.644,117.319,394.784,'Summon Light Essence'),
(3449701,1,10,34568,0,0,0,0,589.743,163.095,394.775,'Summon Light Essence'),
(3449701,1,10,34720,0,0,0,0,526.3368, 99.55556, 395.2900,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,514.7847, 118.7309, 395.2871,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,510.7587, 127.3333, 395.2625,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,509.6389, 133.2604, 395.2467,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,520.2118, 108.4288, 395.2892,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,538.0243, 92.44097, 395.2885,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,588.6754, 93.09375, 395.2885,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,546.0573, 88.76910, 395.2838,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,615.4011, 130.8160, 395.2631,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,599.3073, 98.80035, 395.2898,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,606.6858, 106.7309, 395.2894,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,580.4861, 89.69097, 395.2867,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,570.7795, 86.29861, 395.2533,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,612.1180, 118.8438, 395.2871,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,555.6945, 86.02084, 395.2529,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,507.1806, 142.2847, 395.2546,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,517.7222, 169.0694, 395.2889,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,515.3993, 159.7500, 395.2871,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,524.2570, 178.1337, 395.2896,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,511.1320, 151.1563, 395.2640,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,544.0938, 184.6476, 395.2856,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,563.9965, 187.6441, 395.4890,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,610.9827, 164.6962, 395.2883,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,581.2430, 184.0625, 395.2871,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,592.1511, 183.8004, 395.2789,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,603.5278, 175.4757, 395.2891,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,577.7570, 184.4358, 395.2889,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,557.7430, 187.7292, 395.9153,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,551.3281, 187.6458, 395.5959,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,535.9236, 184.2066, 395.2793,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,571.1580, 187.6910, 395.6292,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,615.1371, 150.8177, 395.2690,'Summon Val\'kyr Twins Bullet Stalker Light'),
(3449701,1,10,34720,0,0,0,0,618.9653, 139.1736, 395.2881,'Summon Val\'kyr Twins Bullet Stalker Light'),
-- dark valkyr
(3449601,1,10,34567,0,0,0,0,536.550,164.550,394.785,'Summon Dark Essence'),
(3449601,1,10,34567,0,0,0,0,588.208,115.666,394.530,'Summon Dark Essence'),
(3449601,1,10,34704,0,0,0,0,515.3524, 115.3490, 395.2883,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,511.4167, 127.1580, 395.2664,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,522.9549, 102.1267, 395.2899,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,578.7222, 87.44444, 395.2724,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,534.7483, 92.64236, 395.2892,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,605.5139, 103.8628, 395.2897,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,549.7639, 86.44444, 395.2658,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,616.4323, 126.4184, 395.2641,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,611.6563, 114.2813, 395.2884,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,592.7361, 93.66666, 395.2889,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,563.4670, 81.93229, 395.2878,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,514.5660, 159.9184, 395.2870,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,509.7431, 149.0052, 395.2527,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,526.8333, 181.7830, 395.2847,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,518.5035, 170.6493, 395.2891,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,506.0382, 139.5174, 395.2882,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,554.8177, 187.5677, 395.2875,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,577.2986, 186.8542, 395.2890,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,608.1163, 171.7309, 395.2892,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,620.4653, 134.6597, 395.2328,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,586.3438, 184.0781, 395.2831,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,547.7604, 184.6337, 395.2885,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,597.3802, 183.6719, 395.2797,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,560.4844, 187.7431, 395.9587,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,573.5781, 187.6649, 395.4919,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,568.0486, 187.6701, 395.5632,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,539.1788, 184.1319, 395.2818,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,615.1371, 156.9965, 395.2795,'Summon Val\'kyr Twins Bullet Stalker Dark'),
(3449601,1,10,34704,0,0,0,0,619.7708, 143.7101, 395.2442,'Summon Val\'kyr Twins Bullet Stalker Dark');

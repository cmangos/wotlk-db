-- WoTLK texts moved to range 20k+
-- also synced with TBCDB

-- q.8487 script
UPDATE dbscript_string SET entry = 2000008487 WHERE entry = 2000001433; -- compatible with TBCDB
UPDATE dbscripts_on_quest_end SET dataint = 2000008487 WHERE id = 8487 AND delay = 2 AND command = 0;

-- q.11899 'Souls of the Decursed'
UPDATE dbscript_string SET entry = 2000020156 WHERE entry = 2000001524;
UPDATE dbscript_string SET entry = 2000020157 WHERE entry = 2000001525;
UPDATE dbscript_string SET entry = 2000020158 WHERE entry = 2000001526;
UPDATE dbscript_string SET entry = 2000020159 WHERE entry = 2000001527;
UPDATE dbscript_string SET entry = 2000020160 WHERE entry = 2000001528;
UPDATE dbscript_string SET entry = 2000020161 WHERE entry = 2000001529;
UPDATE dbscripts_on_quest_end SET dataint = 2000020156 WHERE id = 11899 AND delay = 1;
UPDATE dbscripts_on_quest_end SET dataint = 2000020157 WHERE id = 11899 AND delay = 12 AND command = 0;
UPDATE dbscripts_on_quest_end SET dataint = 2000020158 WHERE id = 11899 AND delay = 21;
UPDATE dbscripts_on_quest_end SET dataint = 2000020159 WHERE id = 11899 AND delay = 29;
UPDATE dbscripts_on_quest_end SET dataint = 2000020160 WHERE id = 11899 AND delay = 38;
UPDATE dbscripts_on_quest_end SET dataint = 2000020161 WHERE id = 11899 AND delay = 48;

-- Taunka'le Village - Borean Tundra
UPDATE dbscript_string SET entry = 2000020162 WHERE entry = 2000001530;
UPDATE dbscript_string SET entry = 2000020163 WHERE entry = 2000001531;
UPDATE dbscript_string SET entry = 2000020164 WHERE entry = 2000001532;
UPDATE dbscript_string SET entry = 2000020165 WHERE entry = 2000001533;
UPDATE dbscript_string SET entry = 2000020166 WHERE entry = 2000001534;
UPDATE dbscript_string SET entry = 2000020167 WHERE entry = 2000001535;
UPDATE dbscript_string SET entry = 2000020168 WHERE entry = 2000001536;
UPDATE dbscript_string SET entry = 2000020169 WHERE entry = 2000001537;
UPDATE dbscript_string SET entry = 2000020170 WHERE entry = 2000001538;
UPDATE dbscript_string SET entry = 2000020171 WHERE entry = 2000001539;
UPDATE dbscripts_on_relay SET dataint = 2000020162 WHERE id = 20022 AND delay = 1 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000020163 WHERE id = 20022 AND delay = 7;
UPDATE dbscripts_on_relay SET dataint = 2000020164 WHERE id = 20022 AND delay = 13;
UPDATE dbscripts_on_relay SET dataint = 2000020165 WHERE id = 20022 AND delay = 20;
UPDATE dbscripts_on_relay SET dataint = 2000020166 WHERE id = 20022 AND delay = 23;
UPDATE dbscripts_on_relay SET dataint = 2000020167 WHERE id = 20022 AND delay = 31;
UPDATE dbscripts_on_relay SET dataint = 2000020168 WHERE id = 20022 AND delay = 37;
UPDATE dbscripts_on_relay SET dataint = 2000020169 WHERE id = 20022 AND delay = 45;
UPDATE dbscripts_on_relay SET dataint = 2000020170 WHERE id = 20022 AND delay = 50;
UPDATE dbscripts_on_relay SET dataint = 2000020171 WHERE id = 20022 AND delay = 56;
UPDATE dbscript_string SET entry = 2000020172 WHERE entry = 2000001540;
UPDATE dbscript_string SET entry = 2000020173 WHERE entry = 2000001541;
UPDATE dbscript_string SET entry = 2000020174 WHERE entry = 2000001542;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020172, dataint2 = 2000020173, dataint3 = 2000020174 WHERE id = 2672501 AND delay = 8;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020172, dataint2 = 2000020173, dataint3 = 2000020174 WHERE id = 2672502 AND delay = 8;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020172, dataint2 = 2000020173, dataint3 = 2000020174 WHERE id = 2672503 AND delay = 8;

-- q.11695 'The Horn of Elemental Fury'
UPDATE dbscript_string SET entry = 2000020175 WHERE entry = 2000001543;
UPDATE dbscripts_on_quest_end SET dataint = 2000020175 WHERE id = 11695 AND delay = 18;

-- q.11879 'Kaw the Mammoth Destroyer'
UPDATE dbscript_string SET entry = 2000020176 WHERE entry = 2000001544;
UPDATE dbscript_string SET entry = 2000020177 WHERE entry = 2000001545;
UPDATE dbscripts_on_relay SET dataint = 2000020176 WHERE id = 20024 AND delay = 0;
UPDATE dbscripts_on_creature_death SET dataint = 2000020177 WHERE id = 25802 AND delay = 0 AND command = 0;

UPDATE dbscript_string SET entry = 2000020178 WHERE entry = 2000001549;
UPDATE dbscript_string SET entry = 2000020179 WHERE entry = 2000001550;
DELETE FROM dbscript_random_templates WHERE id = 20019;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20019,0,2000020178,10,'25378 - Random Texts'),
(20019,0,2000020179,10,'25378 - Random Texts');

-- Mystical Webbing
UPDATE dbscript_string SET entry = 2000020180 WHERE entry = 2000001551;
UPDATE dbscripts_on_creature_death SET dataint = 2000020180 WHERE id = 25422 AND delay = 1 AND command = 0;

-- High Priest Naferset
UPDATE dbscript_string SET entry = 2000020181 WHERE entry = 2000001552;
UPDATE dbscripts_on_creature_death SET dataint = 2000020181 WHERE id = 15214 AND delay = 1 AND command = 0;

-- Counselor Talbot
UPDATE dbscript_string SET entry = 2000020182 WHERE entry = 2000001553;
UPDATE dbscript_string SET entry = 2000020183 WHERE entry = 2000001554;
UPDATE dbscript_string SET entry = 2000020184 WHERE entry = 2000001555;
UPDATE dbscript_string SET entry = 2000020185 WHERE entry = 2000001556;
UPDATE dbscript_string SET entry = 2000020186 WHERE entry = 2000001557;
UPDATE dbscript_string SET entry = 2000020187 WHERE entry = 2000001558;
UPDATE dbscript_string SET entry = 2000020188 WHERE entry = 2000001559;
UPDATE dbscript_string SET entry = 2000020189 WHERE entry = 2000001560;
UPDATE dbscript_string SET entry = 2000020190 WHERE entry = 2000001561;
UPDATE dbscript_string SET entry = 2000020191 WHERE entry = 2000001562;
UPDATE dbscript_string SET entry = 2000020192 WHERE entry = 2000001563;
UPDATE dbscript_string SET entry = 2000020193 WHERE entry = 2000001564;
UPDATE dbscript_string SET entry = 2000020194 WHERE entry = 2000001565;
UPDATE dbscript_string SET entry = 2000020195 WHERE entry = 2000001566;
UPDATE dbscript_string SET entry = 2000020196 WHERE entry = 2000001567;
UPDATE dbscript_string SET entry = 2000020197 WHERE entry = 2000001568;
UPDATE dbscript_string SET entry = 2000020198 WHERE entry = 2000001569;
UPDATE dbscript_string SET entry = 2000020199 WHERE entry = 2000001570;
UPDATE dbscript_string SET entry = 2000020200 WHERE entry = 2000001571;
UPDATE dbscript_string SET entry = 2000020201 WHERE entry = 2000001572;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020182 WHERE id = 2530101 AND delay = 4 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020183 WHERE id = 2530101 AND delay = 23 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020184 WHERE id = 2530101 AND delay = 75 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020185 WHERE id = 2530101 AND delay = 93 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020186 WHERE id = 2525002 AND delay = 1 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020187 WHERE id = 2525002 AND delay = 6 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020188 WHERE id = 2525101 AND delay = 6 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020189 WHERE id = 2525101 AND delay = 15 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020190 WHERE id = 2525101 AND delay = 30 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020191 WHERE id = 2525101 AND delay = 52 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020192 WHERE id = 2530101 AND delay = 31 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020193 WHERE id = 2530101 AND delay = 38 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020194 WHERE id = 2530101 AND delay = 63 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020195 WHERE id = 2525101 AND delay = 10 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020196 WHERE id = 2525101 AND delay = 22 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020197 WHERE id = 2525101 AND delay = 42 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020198 WHERE id = 2525101 AND delay = 63 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020199 WHERE id = 2530101 AND delay = 14 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020200 WHERE id = 2530101 AND delay = 46 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020201 WHERE id = 2530101 AND delay = 82 AND command = 0;

-- q.11961 'Spirits Watch Over Us'
UPDATE dbscript_string SET entry = 2000020202 WHERE entry = 2000001573;
UPDATE dbscript_string SET entry = 2000020203 WHERE entry = 2000001574;
UPDATE dbscripts_on_quest_end SET dataint = 2000020202 WHERE id = 11961 AND delay = 1;
UPDATE dbscripts_on_quest_end SET dataint = 2000020203 WHERE id = 11961 AND delay = 10;

-- q.11969 'Springing the Trap'
UPDATE dbscript_string SET entry = 2000020204 WHERE entry = 2000001575;
UPDATE dbscript_string SET entry = 2000020205 WHERE entry = 2000001576;
UPDATE dbscript_string SET entry = 2000020206 WHERE entry = 2000001577;
UPDATE dbscript_string SET entry = 2000020207 WHERE entry = 2000001578;
UPDATE dbscript_string SET entry = 2000020208 WHERE entry = 2000001579;
UPDATE dbscript_string SET entry = 2000020209 WHERE entry = 2000001580;
UPDATE dbscript_string SET entry = 2000020210 WHERE entry = 2000001581;
UPDATE dbscript_string SET entry = 2000020211 WHERE entry = 2000001582;
UPDATE dbscripts_on_event SET dataint = 2000020204 WHERE id = 17491 AND delay = 21 AND command = 0;
UPDATE dbscripts_on_event SET dataint = 2000020205 WHERE id = 17491 AND delay = 29 AND command = 0;
UPDATE dbscripts_on_event SET dataint = 2000020206 WHERE id = 17491 AND delay = 41 AND command = 0;
UPDATE dbscripts_on_event SET dataint = 2000020207 WHERE id = 17491 AND delay = 50 AND command = 0;
UPDATE dbscripts_on_event SET dataint = 2000020208 WHERE id = 17491 AND delay = 66 AND command = 0;
UPDATE dbscripts_on_event SET dataint = 2000020209 WHERE id = 17491 AND delay = 73 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020210 WHERE id = 2631001 AND delay = 5 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020211 WHERE id = 2631001 AND delay = 9 AND command = 0;

-- q.11893 'The Power of the Elements'
UPDATE dbscript_string SET entry = 2000020212 WHERE entry = 2000001583;
UPDATE dbscripts_on_quest_end SET dataint = 2000020212 WHERE id = 11893 AND delay = 1;

-- q.11894 'Patching Up'
UPDATE dbscript_string SET entry = 2000020213 WHERE entry = 2000001584;
UPDATE dbscript_string SET entry = 2000020214 WHERE entry = 2000001585;
UPDATE dbscript_string SET entry = 2000020215 WHERE entry = 2000001586;
UPDATE dbscript_string SET entry = 2000020216 WHERE entry = 2000001587;
UPDATE dbscript_string SET entry = 2000020217 WHERE entry = 2000001588;
UPDATE dbscripts_on_quest_end SET dataint = 2000020213 WHERE id = 11894 AND delay = 1;
UPDATE dbscripts_on_quest_end SET dataint = 2000020214 WHERE id = 11894 AND delay = 18;
UPDATE dbscripts_on_quest_end SET dataint = 2000020215 WHERE id = 11894 AND delay = 26;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020216 WHERE id = 2584902 AND delay = 8 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020217 WHERE id = 2584902 AND delay = 10 AND command = 0;

-- q.11628 'Shrouds of the Scourge'
UPDATE dbscript_string SET entry = 2000020218 WHERE entry = 2000001589;
UPDATE dbscript_string SET entry = 2000020219 WHERE entry = 2000001590;
UPDATE dbscripts_on_quest_end SET dataint = 2000020218 WHERE id = 11628 AND delay = 1;
UPDATE dbscripts_on_quest_end SET dataint = 2000020219 WHERE id = 11628 AND delay = 7;

-- q.11930 'Across Transborea'
UPDATE dbscript_string SET entry = 2000020220 WHERE entry = 2000001591;
UPDATE dbscript_string SET entry = 2000020221 WHERE entry = 2000001592;
UPDATE dbscript_string SET entry = 2000020222 WHERE entry = 2000001593;
UPDATE dbscript_string SET entry = 2000020223 WHERE entry = 2000001594;
UPDATE dbscript_string SET entry = 2000020224 WHERE entry = 2000001595;
UPDATE dbscript_string SET entry = 2000020225 WHERE entry = 2000001596;
UPDATE dbscript_string SET entry = 2000020226 WHERE entry = 2000001597;
UPDATE dbscript_string SET entry = 2000020227 WHERE entry = 2000001598;
UPDATE dbscript_string SET entry = 2000020228 WHERE entry = 2000001599;
UPDATE dbscript_string SET entry = 2000020229 WHERE entry = 2000001600;
UPDATE dbscript_string SET entry = 2000020230 WHERE entry = 2000001601;
UPDATE dbscript_string SET entry = 2000020231 WHERE entry = 2000001602;
UPDATE dbscript_string SET entry = 2000020232 WHERE entry = 2000001603;
UPDATE dbscript_string SET entry = 2000020233 WHERE entry = 2000001604;
UPDATE dbscripts_on_relay SET dataint = 2000020220 WHERE id = 20029 AND delay = 1 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000020221 WHERE id = 20030 AND delay = 2 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000020222 WHERE id = 20031 AND delay = 1 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000020223 WHERE id = 20032 AND delay = 1 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000020224 WHERE id = 20032 AND delay = 7 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000020225 WHERE id = 20032 AND delay = 10 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000020226 WHERE id = 20033 AND delay = 1 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000020227 WHERE id = 20033 AND delay = 4 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000020228 WHERE id = 20033 AND delay = 12 AND command = 0;
UPDATE dbscripts_on_spell SET dataint = 2000020229 WHERE id = 46677 AND delay = 1 AND command = 0;
UPDATE dbscripts_on_spell SET dataint = 2000020230 WHERE id = 46677 AND delay = 6 AND command = 0;
UPDATE dbscripts_on_spell SET dataint = 2000020231 WHERE id = 46677 AND delay = 9 AND command = 0;
UPDATE dbscripts_on_spell SET dataint = 2000020232 WHERE id = 46677 AND delay = 13 AND command = 0;
UPDATE dbscripts_on_spell SET dataint = 2000020233 WHERE id = 46677 AND delay = 19 AND command = 0;

-- Warsong Hold Invasion EVENT
UPDATE dbscript_string SET entry = 2000020234 WHERE entry = 2000001605;
UPDATE dbscript_string SET entry = 2000020235 WHERE entry = 2000001606;
UPDATE dbscript_string SET entry = 2000020236 WHERE entry = 2000001607;
UPDATE dbscript_string SET entry = 2000020237 WHERE entry = 2000001608;
UPDATE dbscript_string SET entry = 2000020238 WHERE entry = 2000001609;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020234 WHERE id = 2544601 AND delay = 1 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020235 WHERE id = 2544601 AND delay = 18 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020236 WHERE id = 2452602 AND delay = 4 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020237 WHERE id = 2452602 AND delay = 9 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020238 WHERE id = 2452602 AND delay = 13 AND command = 0;

-- Galem
UPDATE dbscript_string SET entry = 2000020239 WHERE entry = 2000001610;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020239 WHERE id = 2523801 AND delay = 2 AND command = 0;

-- q.11658 'Plan B'
UPDATE dbscript_string SET entry = 2000020240 WHERE entry = 2000001611;
UPDATE dbscripts_on_quest_end SET dataint = 2000020240 WHERE id = 11658 AND delay = 6 AND command = 0;

-- q.1265 'The Missing Diplomat' end script
UPDATE dbscript_string SET entry = 2000006110 WHERE entry = 2000001612; -- compatible with TBCDB
UPDATE dbscripts_on_quest_end SET dataint = 2000006110 WHERE id = 1265 AND delay = 1 AND command = 0;

-- q.11007 "Kael'thas and the Verdant Sphere"
UPDATE dbscript_string SET entry = 2000005916 WHERE entry = 2000001613; -- compatible with TBCDB
UPDATE dbscript_string SET entry = 2000005917 WHERE entry = 2000001614; -- compatible with TBCDB
UPDATE dbscript_string SET entry = 2000005918 WHERE entry = 2000001615; -- compatible with TBCDB
UPDATE dbscript_string SET entry = 2000005919 WHERE entry = 2000001616; -- compatible with TBCDB
UPDATE dbscript_string SET entry = 2000005920 WHERE entry = 2000001617; -- compatible with TBCDB
UPDATE dbscript_string SET entry = 2000005921 WHERE entry = 2000001618; -- compatible with TBCDB
UPDATE dbscript_string SET entry = 2000005922 WHERE entry = 2000001619; -- compatible with TBCDB
UPDATE dbscript_string SET entry = 2000005923 WHERE entry = 2000001620; -- compatible with TBCDB
UPDATE dbscripts_on_relay SET dataint = 2000005916 WHERE id = 10061 AND delay = 0 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000005917 WHERE id = 10061 AND delay = 4 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000005918 WHERE id = 10061 AND delay = 8 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000005919 WHERE id = 10061 AND delay = 13 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000005920 WHERE id = 10061 AND delay = 20 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000005921 WHERE id = 10061 AND delay = 31 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000005922 WHERE id = 10061 AND delay = 42 AND command = 0;
UPDATE dbscripts_on_relay SET dataint = 2000005923 WHERE id = 10061 AND delay = 53 AND command = 0;

-- Culling of Stratholme intro
UPDATE dbscript_string SET entry = 2000020241 WHERE entry = 2000005785;
UPDATE dbscript_string SET entry = 2000020242 WHERE entry = 2000005786;
UPDATE dbscript_string SET entry = 2000020243 WHERE entry = 2000005787;
UPDATE dbscript_string SET entry = 2000020244 WHERE entry = 2000005788;
UPDATE dbscript_string SET entry = 2000020245 WHERE entry = 2000005789;
UPDATE dbscript_string SET entry = 2000020246 WHERE entry = 2000005790;
UPDATE dbscript_string SET entry = 2000020247 WHERE entry = 2000005791;
UPDATE dbscript_string SET entry = 2000020248 WHERE entry = 2000005792;
UPDATE dbscript_string SET entry = 2000020249 WHERE entry = 2000005793;
UPDATE dbscript_string SET entry = 2000020250 WHERE entry = 2000005794;
UPDATE dbscript_string SET entry = 2000020251 WHERE entry = 2000005795;
UPDATE dbscript_string SET entry = 2000020252 WHERE entry = 2000005796;
UPDATE dbscript_string SET entry = 2000020253 WHERE entry = 2000005797;
UPDATE dbscript_string SET entry = 2000020254 WHERE entry = 2000005798;
UPDATE dbscript_string SET entry = 2000020255 WHERE entry = 2000005799;
UPDATE dbscript_string SET entry = 2000020256 WHERE entry = 2000005800;
UPDATE dbscript_string SET entry = 2000020257 WHERE entry = 2000005801;
UPDATE dbscript_string SET entry = 2000020258 WHERE entry = 2000005802;
UPDATE dbscript_string SET entry = 2000020259 WHERE entry = 2000005803;
UPDATE dbscript_string SET entry = 2000020260 WHERE entry = 2000005804;
UPDATE dbscript_string SET entry = 2000020261 WHERE entry = 2000005805;
UPDATE dbscript_string SET entry = 2000020262 WHERE entry = 2000005806;
UPDATE dbscript_string SET entry = 2000020263 WHERE entry = 2000005807;
UPDATE dbscript_string SET entry = 2000020264 WHERE entry = 2000005808;
UPDATE dbscript_string SET entry = 2000020265 WHERE entry = 2000005809;
UPDATE dbscript_string SET entry = 2000020266 WHERE entry = 2000005810;
UPDATE dbscript_string SET entry = 2000020267 WHERE entry = 2000005811;
UPDATE dbscript_string SET entry = 2000020268 WHERE entry = 2000005812;
UPDATE dbscript_string SET entry = 2000020269 WHERE entry = 2000005813;
UPDATE dbscript_string SET entry = 2000020270 WHERE entry = 2000005814;
UPDATE dbscript_string SET entry = 2000020271 WHERE entry = 2000005815;
UPDATE dbscript_string SET entry = 2000020272 WHERE entry = 2000005816;
UPDATE dbscript_string SET entry = 2000020273 WHERE entry = 2000005817;
UPDATE dbscript_string SET entry = 2000020274 WHERE entry = 2000005818;
UPDATE dbscript_string SET entry = 2000020275 WHERE entry = 2000005819;
UPDATE dbscript_string SET entry = 2000020276 WHERE entry = 2000005820;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020241 WHERE id = 2652802 AND delay = 0 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020242 WHERE id = 2652803 AND delay = 0 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020243 WHERE id = 2649904 AND delay = 8 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020244 WHERE id = 2649904 AND delay = 13 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020245 WHERE id = 2649904 AND delay = 20 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020246 WHERE id = 2649906 AND delay = 0 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020247 WHERE id = 2649906 AND delay = 10 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020248 WHERE id = 2649907 AND delay = 0 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020249 WHERE id = 2649907 AND delay = 4 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020250 WHERE id = 2649907 AND delay = 10 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020251 WHERE id = 2649907 AND delay = 15 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020252 WHERE id = 2649907 AND delay = 22 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020253 WHERE id = 2649907 AND delay = 25 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020254 WHERE id = 2649907 AND delay = 30 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020255 WHERE id = 2649907 AND delay = 42 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020256 WHERE id = 2649907 AND delay = 44 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020257 WHERE id = 2649907 AND delay = 57 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020258 WHERE id = 2649907 AND delay = 61 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020259 WHERE id = 2649705 AND delay = 0 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020260 WHERE id = 2649911 AND delay = 0 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020261 WHERE id = 2649923 AND delay = 1 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020262 WHERE id = 2649924 AND delay = 3 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020263 WHERE id = 2649924 AND delay = 12 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020264 WHERE id = 2649924 AND delay = 24 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020265 WHERE id = 2649926 AND delay = 4 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020266 WHERE id = 2649926 AND delay = 8 AND command = 0 AND buddy_entry = 28167;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020267 WHERE id = 2649926 AND delay = 1 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020268 WHERE id = 2649926 AND delay = 8 AND command = 0 AND buddy_entry = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020269 WHERE id = 2649926 AND delay = 12 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020270 WHERE id = 2649927 AND delay = 2 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020271 WHERE id = 2649927 AND delay = 3 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020272 WHERE id = 2649929 AND delay = 0 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020273 WHERE id = 2649929 AND delay = 3 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020274 WHERE id = 2649930 AND delay = 12 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020275 WHERE id = 2649930 AND delay = 27 AND command = 0;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020276 WHERE id = 2649930 AND delay = 37 AND command = 0;

-- Readd TBCDB texts removed by wotlkDB by mistake...
-- #1779
-- Cast by Shadowy Necromancer c.17899 in acid
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001575 AND 2000001576;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001575, 'Elen-ak shaktha!', 0, 0, 0, 0, 'Raise Dead Spell (ID: 31617/31624/31625)'),
(2000001576, 'Rise, my soldiers, and march for me!', 0, 0, 0, 0, 'Raise Dead Spell (ID: 31617/31624/31625)');

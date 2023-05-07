
-- creature_spawn_data_template
-- Generics & names added
-- Be careful with equipment (wotlk has diff than TBC and Classic)  - wotlk has unique id for each set instead of id connected to each creature

-- Let's make few more GENERICs - that may be usefull in future
DELETE FROM creature_spawn_data_template WHERE entry BETWEEN 10 AND 100;
INSERT INTO creature_spawn_data_template (Entry, NpcFlags, UnitFlags, Faction, ModelId, EquipmentId, CurHealth, CurMana, SpawnFlags, RelayId, StringId, Name) VALUES
-- 4-9 - left for potential more options in SpawnFlags
-- NpcFlags 10-19
(10,0,-1,0,0,-1,0,0,0,0,0,'GENERIC - NpcFlags = 0 - DO NOT EDIT'), -- no interact with npc
(11,1,-1,0,0,-1,0,0,0,0,0,'GENERIC - NpcFlags = 1 (gossip) - DO NOT EDIT'), -- gossip only
(12,2,-1,0,0,-1,0,0,0,0,0,'GENERIC - NpcFlags = 2 (quest giver) - DO NOT EDIT'), -- quest giver only
(13,3,-1,0,0,-1,0,0,0,0,0,'GENERIC - NpcFlags = 3 (gossip & quest giver) - DO NOT EDIT'), -- gossip & quest giver
-- UnitFlags 20-29
(20,-1,0,0,0,-1,0,0,0,0,0,'GENERIC - UnitFlags = 0 - DO NOT EDIT'), -- no flags
(21,-1,33554432,0,0,-1,0,0,0,0,0,'GENERIC - UnitFlags = 33554432 UNIT_FLAG_NOT_SELECTABLE - DO NOT EDIT'), -- Can’t be selected by mouse
-- Faction 30-39
-- ModelId 40-49
-- EquipmentId 50-59
(50,-1,-1,0,0,0,0,0,0,0,0,'GENERIC - EquipmentId = 0 - DO NOT EDIT'), -- no equipment
-- CurHealth 60-69
(60,-1,-1,0,0,-1,1,0,0,0,0,'GENERIC - CurHealth = 1 - DO NOT EDIT'), -- 1hp at start - handy for injured
-- CurMana 70-79
-- RelayId 80-89
(80,-1,-1,0,0,-1,0,0,0,30500,0,'GENERIC - RelayId 30500 (Send AI Event 5 (A) to Self) - DO NOT EDIT'),
(81,-1,-1,0,0,-1,0,0,0,30501,0,'GENERIC - RelayId 30501 (Send AI Event 6 (B) to Self) - DO NOT EDIT'),
(82,-1,-1,0,0,-1,0,0,0,30502,0,'GENERIC - RelayId 30502 (Send AI Event 8 (C) to Self) - DO NOT EDIT'),
(83,-1,-1,0,0,-1,0,0,0,30503,0,'GENERIC - RelayId 30503 (Send AI Event 9 (D) to Self) - DO NOT EDIT');
-- 84 - event E - not used yet
-- 85 - event F - not used yet

-- move already existing ones to new generic
UPDATE creature_spawn_data SET id = 10 WHERE guid IN (520247,520255,520256,520258,520259,520260,520272,534812,534821,534822,534823,534824,534831,534832,534833,534844,534845,534846); -- was 20032
UPDATE creature_spawn_data SET id = 11 WHERE guid IN (24664,24665); -- was 4
UPDATE creature_spawn_data SET id = 20 WHERE guid IN (24664,24665); -- was 20031
UPDATE creature_spawn_data SET id = 50 WHERE guid IN (67872); -- was 5
UPDATE creature_spawn_data SET id = 60 WHERE guid IN (513157); -- was 20003
UPDATE creature_spawn_data SET id = 80 WHERE guid IN (3271,4624,5282,5365,5513,5515,5518,5519,5522,5523,5527,5528,5533,5536,69484,69490,509010,509011,509014,
509286,509287,509288,513011,521150,522511,522512,522513,522515,522517,522524,522717,522718,522723,522725,522735,522778,522858,522863,523827,523829,523830,
523831,523832,523833,523834,523835,527466,527473,534334,534335,535152,535153,535162,535163,535165,535166,535167,535170,535172,535187,535188,535189,535190,
535191,535192,535193,535194,535195,535196,535197,535198,535273,535278,535279,535280,535287,535288,535289,535307,535308,535309,535310,535311,535312,535313); -- was 20033
UPDATE creature_spawn_data SET id = 81 WHERE guid IN (69482,69491,505085,505086,505087,505089,509250,509251,509252,509253,509254,509255,509256,509257,509258,
509259,509260,509261,509262,509263,509264,509265,509266,509267,509268,509269,509270,509271,509272,509273,509274,509275,509276,509277,509278,509279,
509280,509281,509282,509283,509284,509285,509289,509290,509291,509292,509293,509294,509295,509296,509297,509298,509299,509300,509301,509302,509303,
509304,509305,509306,509307,509308,509309,509310,509311,509312,509313,513008,513009,521149,524008,524009,524010,524012,524014,535290,535291,535292,
535293,535294,535295,535296,535297,535298,535299,535300,535301,535302,535303,535304,535305,535306,535315); -- was 20034
UPDATE creature_spawn_data SET id = 82 WHERE guid IN (500650,513004,521151); -- was 20035
UPDATE creature_spawn_data SET id = 83 WHERE guid IN (521148); -- was 20036
UPDATE creature_spawn_data SET id = 19979 WHERE guid IN (52330,52331); -- came from duplicate 19978
-- not needed anymore
DELETE FROM creature_spawn_data_template WHERE entry IN (4,5,20032,20031,20003,20033,20034,20035,20036,19978);

-- Names
-- Classic Section
UPDATE creature_spawn_data_template SET Name = '- Relayid 5676' WHERE Entry = 5676;
UPDATE creature_spawn_data_template SET Name = '- Relayid 6268' WHERE Entry = 6268;
UPDATE creature_spawn_data_template SET Name = '- Relayid 7461' WHERE Entry = 7461;
UPDATE creature_spawn_data_template SET Name = '- Relayid 7462' WHERE Entry = 7462;
UPDATE creature_spawn_data_template SET Name = '- Relayid 7463' WHERE Entry = 7463;
UPDATE creature_spawn_data_template SET Name = '- Relayid 7464' WHERE Entry = 7464;
UPDATE creature_spawn_data_template SET Name = '- Relayid 7465' WHERE Entry = 7465;
UPDATE creature_spawn_data_template SET Name = '- Relayid 7466' WHERE Entry = 7466;
UPDATE creature_spawn_data_template SET Name = '- Relayid 7467' WHERE Entry = 7467;
UPDATE creature_spawn_data_template SET Name = '- SPAWN FLAG RUN, Relayid 30510' WHERE Entry = 9989;
UPDATE creature_spawn_data_template SET Name = '- equipment 122' WHERE Entry = 9990;
UPDATE creature_spawn_data_template SET Name = '- equipment 67' WHERE Entry = 9991;
UPDATE creature_spawn_data_template SET Name = '- equipment 694' WHERE Entry = 9994;
UPDATE creature_spawn_data_template SET Name = '- equipment 7' WHERE Entry = 9995;
UPDATE creature_spawn_data_template SET Name = '- model 31736' WHERE Entry = 9996;
UPDATE creature_spawn_data_template SET Name = '- model 5809' WHERE Entry = 9997;
UPDATE creature_spawn_data_template SET Name = '- Relayid 29' WHERE Entry = 9998;
UPDATE creature_spawn_data_template SET Name = '- Relayid 28' WHERE Entry = 9999;
-- TBC Section
UPDATE creature_spawn_data_template SET Name = '- UnitFlags 32768, Faction 54' WHERE Entry = 10000;
UPDATE creature_spawn_data_template SET Name = '- UnitFlags 33587200' WHERE Entry = 10001;
UPDATE creature_spawn_data_template SET Name = '- UnitFlags 33587264' WHERE Entry = 10002;
UPDATE creature_spawn_data_template SET Name = '- model 11686' WHERE Entry = 10003;
UPDATE creature_spawn_data_template SET Name = '- Relayid 1162501' WHERE Entry = 11625;
UPDATE creature_spawn_data_template SET Name = '- equipment 5' WHERE Entry = 19971;
UPDATE creature_spawn_data_template SET Name = '- equipment 50161' WHERE Entry = 19972;
UPDATE creature_spawn_data_template SET Name = '- equipment 50130' WHERE Entry = 19973;
-- UPDATE creature_spawn_data_template SET Name = '- equipment 343' WHERE Entry = 19978; -- duplicate to 19979
UPDATE creature_spawn_data_template SET Name = '- equipment 343' WHERE Entry = 19979;
UPDATE creature_spawn_data_template SET Name = '- equipment 234' WHERE Entry = 19980;
UPDATE creature_spawn_data_template SET Name = '- equipment 36' WHERE Entry = 19981;
UPDATE creature_spawn_data_template SET Name = '- equipment 4' WHERE Entry = 19983;
UPDATE creature_spawn_data_template SET Name = '- equipment 2' WHERE Entry = 19984;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19970' WHERE Entry = 19985;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19971' WHERE Entry = 19986;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19972' WHERE Entry = 19987;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19973' WHERE Entry = 19988;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19974' WHERE Entry = 19989;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19975' WHERE Entry = 19990;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19976' WHERE Entry = 19991;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19977' WHERE Entry = 19992;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19978' WHERE Entry = 19993;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19979' WHERE Entry = 19994;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19980' WHERE Entry = 19995;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19981' WHERE Entry = 19996;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19982' WHERE Entry = 19997;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19983' WHERE Entry = 19998;
UPDATE creature_spawn_data_template SET Name = '- Relayid 19984' WHERE Entry = 19999;
-- Wotlk Section
UPDATE creature_spawn_data_template SET Name = '- equipment 58' WHERE Entry = 20000;
UPDATE creature_spawn_data_template SET Name = '- equipment 748' WHERE Entry = 20001;
UPDATE creature_spawn_data_template SET Name = '- equipment 1600' WHERE Entry = 20002;
-- UPDATE creature_spawn_data_template SET Name = '- CurHealth 1' WHERE Entry = 20003; -- moved to generic
UPDATE creature_spawn_data_template SET Name = '- model 23846' WHERE Entry = 20004;
UPDATE creature_spawn_data_template SET Name = '- UnitFlags 0, Faction 1665, equipment 767' WHERE Entry = 20005;
UPDATE creature_spawn_data_template SET Name = '- UnitFlags 33554496, SPAWN FLAG RUN' WHERE Entry = 20006;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20610' WHERE Entry = 20007;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20611' WHERE Entry = 20008;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20612' WHERE Entry = 20009;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20613' WHERE Entry = 20010;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20614' WHERE Entry = 20011;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20615' WHERE Entry = 20012;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20621' WHERE Entry = 20013;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20622' WHERE Entry = 20014;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20624' WHERE Entry = 20015;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20632' WHERE Entry = 20016;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20620' WHERE Entry = 20017;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20631' WHERE Entry = 20018;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20629' WHERE Entry = 20019;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20616' WHERE Entry = 20020;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20626' WHERE Entry = 20021;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20630' WHERE Entry = 20022;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20619' WHERE Entry = 20023;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20618' WHERE Entry = 20024;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20633' WHERE Entry = 20025;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20623' WHERE Entry = 20026;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20628' WHERE Entry = 20027;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20625' WHERE Entry = 20028;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20627' WHERE Entry = 20029;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20617' WHERE Entry = 20030;
-- UPDATE creature_spawn_data_template SET Name = '- UnitFlags 0' WHERE Entry = 20031; -- moved to generic
-- UPDATE creature_spawn_data_template SET Name = '- NPCFlags 0' WHERE Entry = 20032; -- moved to generic
-- UPDATE creature_spawn_data_template SET Name = '- Relayid 30500' WHERE Entry = 20033; -- moved to generic
-- UPDATE creature_spawn_data_template SET Name = '- Relayid 30501' WHERE Entry = 20034; -- moved to generic
-- UPDATE creature_spawn_data_template SET Name = '- Relayid 30502' WHERE Entry = 20035; -- moved to generic
-- UPDATE creature_spawn_data_template SET Name = '- Relayid 30503' WHERE Entry = 20036; -- moved to generic
UPDATE creature_spawn_data_template SET Name = '- UnitFlags 33536' WHERE Entry = 20037;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20663' WHERE Entry = 20038;
UPDATE creature_spawn_data_template SET Name = '- equipment 354' WHERE Entry = 20039;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20675' WHERE Entry = 20040;
UPDATE creature_spawn_data_template SET Name = '- Relayid 20676' WHERE Entry = 20041;
UPDATE creature_spawn_data_template SET Name = '- UnitFlags 32832, Faction 290, Relayid 30510' WHERE Entry = 20042;
UPDATE creature_spawn_data_template SET Name = '- Relayid 30510' WHERE Entry = 20043;
UPDATE creature_spawn_data_template SET Name = '- model 25361' WHERE Entry = 20044;
UPDATE creature_spawn_data_template SET Name = '- model 11686' WHERE Entry = 20045;
UPDATE creature_spawn_data_template SET Name = '- model 31736' WHERE Entry = 20046;
UPDATE creature_spawn_data_template SET Name = '- equipment 13' WHERE Entry = 20047;
UPDATE creature_spawn_data_template SET Name = '- equipment 50' WHERE Entry = 20048;
UPDATE creature_spawn_data_template SET Name = '- equipment 53' WHERE Entry = 20049;
UPDATE creature_spawn_data_template SET Name = '- equipment 575' WHERE Entry = 20050;
UPDATE creature_spawn_data_template SET Name = '- equipment 254' WHERE Entry = 20051;
UPDATE creature_spawn_data_template SET Name = '- equipment 361' WHERE Entry = 20052;
UPDATE creature_spawn_data_template SET Name = '- equipment 1591' WHERE Entry = 20053;
UPDATE creature_spawn_data_template SET Name = '- equipment 760' WHERE Entry = 20054;
UPDATE creature_spawn_data_template SET Name = '- equipment 2518' WHERE Entry = 20055;
UPDATE creature_spawn_data_template SET Name = '- SPAWN FLAG RUN + HOVER, Relayid 30601' WHERE Entry = 20056;
UPDATE creature_spawn_data_template SET Name = '- UnitFlags 768, SPAWN FLAG RUN + HOVER, Relayid 30601' WHERE Entry = 20057;
UPDATE creature_spawn_data_template SET Name = '- NpcFlags 0, Faction 638, equipment 538' WHERE Entry = 20058;
UPDATE creature_spawn_data_template SET Name = '- Relayid 25210' WHERE Entry = 25210;
UPDATE creature_spawn_data_template SET Name = '- Relayid 25211' WHERE Entry = 25211;
UPDATE creature_spawn_data_template SET Name = '- Relayid 25212' WHERE Entry = 25212;
UPDATE creature_spawn_data_template SET Name = '- Relayid 25213' WHERE Entry = 25213;
UPDATE creature_spawn_data_template SET Name = '- Relayid 25214' WHERE Entry = 25214;
UPDATE creature_spawn_data_template SET Name = '- Relayid 25215' WHERE Entry = 25215;
UPDATE creature_spawn_data_template SET Name = '- Relayid 25216' WHERE Entry = 25216;
UPDATE creature_spawn_data_template SET Name = '- Relayid 25217' WHERE Entry = 25217;
UPDATE creature_spawn_data_template SET Name = '- Relayid 25218' WHERE Entry = 25218;
UPDATE creature_spawn_data_template SET Name = '- Relayid 25219' WHERE Entry = 25219;
UPDATE creature_spawn_data_template SET Name = '- Faction 89' WHERE Entry = 1041801;
UPDATE creature_spawn_data_template SET Name = '- UnitFlags 536904448' WHERE Entry = 2328701;

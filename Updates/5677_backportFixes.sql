-- Pool Template Id (972) is empty.
-- Pool Template Id (973) is empty.
-- Pool Template Id (974) is empty.
-- Pool Template Id (976) is empty.
-- Pool Template Id (978) is empty.
DELETE FROM pool_template WHERE entry IN (972,973,974,976,978);
DELETE FROM pool_gameobject WHERE pool_entry IN (972,973,974,976,978);

-- return to WoTLK ERA
-- Gameobject (GUID: 47586 Entry 176509 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 20494 Entry 182056 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 20562 Entry 3223 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 17426 Entry 184617 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 30166 Entry 17190 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 15396 Entry 2727 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 15217 Entry 2728 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 30172 Entry 175144 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 13968 Entry 24745 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 17252 Entry 141841 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 7591 Entry 186630 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 17240 Entry 141838 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 7561 Entry 186231 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 15728 Entry 51949 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 11819 Entry 144133 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 22227 Entry 181716 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 22401 Entry 181990 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 22762 Entry 182278 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 23671 Entry 182860 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 24009 Entry 183121 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 24217 Entry 183345 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 24377 Entry 183484 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 12642 Entry 153459 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 20709 Entry 183818 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 29723 Entry 184687 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 30402 Entry 182270 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 30816 Entry 186138 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 10118 Entry 2575 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 9937 Entry 142078 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 10826 Entry 19902 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 6880 Entry 179844 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 32298 Entry 130668 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 45480 Entry 177727 GoType: 2) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 45606 Entry 181130 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 46082 Entry 179886 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 49092 Entry 179863 GoType: 8) have invalid displayId (306), not loaded.
-- Gameobject (GUID: 49393 Entry 180913 GoType: 8) have invalid displayId (306), not loaded.
UPDATE gameobject_template SET displayID = 233 WHERE ENTRY IN (
176509,182056,3223,184617,17190,2727,2728,175144,24745,141841,186630,141838,186231,51949,144133,
181716,181990,182278,182860,183121,183345,183484,153459,183818,184687,182270,186138,2575,142078,
19902,179844 ,130668,177727,181130,179886,179863,180913);

-- Creature (GUID: 71854) does not exist but has a record in `creature_addon`
-- Creature (GUID: 71855) does not exist but has a record in `creature_addon`
-- Creature (GUID: 71861) does not exist but has a record in `creature_addon`
-- Creature (GUID: 71862) does not exist but has a record in `creature_addon`
-- Creature (GUID: 71863) does not exist but has a record in `creature_addon`
-- Creature (GUID: 76060) does not exist but has a record in `creature_addon`
DELETE FROM creature_addon WHERE guid IN (71854,71855,71861,71862,71863,76060);

-- `pool_gameobject` has a non existing gameobject spawn (GUID: 85927) defined for pool id (975), skipped.
-- + many more simmilar issues
DELETE FROM pool_gameobject WHERE guid IN (
21,1801,1821,2730,2823,4506,4791,14116,14125,14128,15093,15095,15096,16819,16820,16824,16825,16828,
16829,16831,16834,16835,16836,16837,16839,16840,16841,16842,16843,16847,16848,16850,16851,17172,17177,
17178,17180,17185,17665,17779,17844,17908,17909,18138,18515,18516,18533,18545,18546,18548,18557,18563,
18573,18581,18584,18899,18907,18912,18935,18936,18937,18938,18939,19442,19443,19444,19445,20364,20390,
20409,20411,20417,20418,20421,20422,20424,20461,20944,20949,20953,20975,20984,20986,20990,20991,20992,
20998,20999,21000,21001,21002,21028,21033,21034,21035,21397,21398,21399,21400,21401,21402,21403,21404,
21427,21428,21429,21430,21431,21432,21433,21434,21435,21436,21511,21524,21525,21526,21527,21553,21554,
21556,21557,21558,21559,21560,21561,21562,21563,21564,21565,21566,23970,23971,23972,23973,23974,23975,
23976,23977,23978,23979,23980,26630,26661,26664,26665,26666,26675,26687,26689,26690,26697,26702,28217,
28311,28312,28313,28314,28316,28319,28410,28415,28490,28492,29720,30408,30410,30417,30544,30552,31050,
31307,32361,32362,32470,32479,32629,32729,32744,32824,33440,33835,33847,34029,40290,40291,40292,40293,
40294,40295,40296,40297,40298,40299,40300,40301,40302,40303,40304,40305,40306,40307,40308,40309,40310,
40311,40312,40313,40314,40315,40316,40317,40318,40319,40320,40321,40322,40323,40324,40325,40326,40327,
40328,40329,40330,40331,40332,40333,40334,40335,40336,40337,40338,40339,40340,40341,40342,40343,40344,
40345,40346,40347,40348,40349,40350,40351,40352,40353,40354,40355,40356,40357,40358,40359,40360,40361,
40362,40363,40364,40365,40366,40367,40368,40369,40370,40371,40372,40373,40374,40375,40376,40377,40378,
40379,40380,40381,40382,40383,40384,40385,40386,40387,40388,40389,40390,40391,40392,40393,40394,40395,
40396,40397,40398,40399,40400,40401,40402,40403,40404,40405,40406,40407,40408,40409,40410,40515,40516,
40517,40518,40519,40520,40521,40522,40523,40524,40525,40526,40527,40528,40529,40530,40531,40533,40534,
40535,40536,40537,40538,40539,40540,40541,40542,40543,40544,40545,40546,40547,40561,40562,40563,40564,
40565,40566,40567,40617,40618,40619,40620,40621,40622,40623,40624,40625,40626,40627,40628,42177,42178,
42179,42180,42181,42198,42199,42200,42201,42202,42203,42214,42215,42216,42217,42218,42226,42227,42228,
42235,42236,42237,42238,42239,42240,42241,42242,42243,42244,42245,42246,42247,42248,42258,42259,42260,
42261,42295,42296,42298,42318,42346,42367,42395,42430,55627,55695,55699,55851,56370,56374,56412,56421,
61290,61291,61304,61305,61312,61313,61315,61316,61322,61324,61327,61328,61329,61330,61332,61337,61338,
61339,61340,61341,61342,61343,61344,63534,63556,63566,63569,63572,63574,63575,63576,63577,63578,63581,
63582,63583,63639,63640,63641,63642,63643,64802,64803,64804,64805,64806,64807,64808,64809,64810,64812,
64813,64814,64815,64816,64817,64818,64819,64820,64821,64822,64823,64824,64825,64826,64828,64829,64830,
64831,64832,64833,64834,64835,64846,64847,64848,64849,64850,64851,64852,64853,64854,64855,65265,65266,
65267,65268,65269,65275,85916,85917,85918,85919,85920,85921,85922,85923,85924,85925,85926,85927,85928,
85929,85930,85931,85932,85933,86391,86402,86403,87045,87046,87052,87056,87057,87125,87126,87127,87128,
87129,87130,87131,87132,87133,87134,87144,87146,87157,87300,87302,87398,87399,87400,87401,87402,87403,
87414,87418,87419,87499);

-- Table `creature` have creature (GUID: 5306112 Entry: 20203) with spawn template 2020301 that doesnt exist.
-- Table `creature` have creature (GUID: 5306111 Entry: 20203) with spawn template 2020301 that doesnt exist.
-- Table `creature` have creature (GUID: 5306108 Entry: 20203) with spawn template 2020301 that doesnt exist.
-- Table `creature` have creature (GUID: 5306102 Entry: 20203) with spawn template 2020301 that doesnt exist.
-- Table `creature` have creature (GUID: 5306110 Entry: 20203) with spawn template 2020302 that doesnt exist.
-- Table `creature` have creature (GUID: 5306109 Entry: 20203) with spawn template 2020302 that doesnt exist.
-- Table `creature` have creature (GUID: 5306106 Entry: 20203) with spawn template 2020302 that doesnt exist.
-- Table `creature` have creature (GUID: 5306104 Entry: 20203) with spawn template 2020302 that doesnt exist.
-- Table `creature` have creature (GUID: 5306101 Entry: 20203) with spawn template 2020302 that doesnt exist.
-- Table `creature` have creature (GUID: 5306107 Entry: 20203) with spawn template 2020303 that doesnt exist.
-- Table `creature` have creature (GUID: 5306105 Entry: 20203) with spawn template 2020303 that doesnt exist.
DELETE FROM `creature_spawn_data_template` WHERE `Entry` IN (2020301,2020302,2020303);
INSERT INTO `creature_spawn_data_template` (`Entry`, `EquipmentId`, `Name`) VALUES 
(2020301,2,'Nether Technician (20203) - EquipmentId'),
(2020302,29,'Nether Technician (20203) - EquipmentId'),
(2020303,68,'Nether Technician (20203) - EquipmentId');

-- missing object added
DELETE FROM gameobject WHERE guid IN (184467); -- TDB backport
INSERT INTO gameobject VALUES (184467,0,530,1,1,-1355.49890136718750000000,5926.94775390625000000000,8.96778297424316406200,5.09636211395263671800,0,0,-0.55919265747070312000,0.82903772592544555600,600,600);

-- Event 2315202 Action 1 references invalid dbscript_on_relay id 10136
-- Event 2315204 Action 2 references invalid dbscript_on_relay id 10134
DELETE FROM dbscripts_on_relay WHERE id IN (10136,10134);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10136,0,31,22990,300,0,0,0,8,0,0,0,0,0,0,0,0,'Stop if Akama present'),
(10136,1000,10,22990,600000,0,0,0,8,1,0,0,-1,-3571.42,686.893,-5.496,4.7,'Summon Akama'),
(10136,1000,10,22989,600000,0,0,0,8,1,0,0,-1,-3556.43,686.477,-6.884,4,'Summon Maiev'),
(10136,1000,35,5,0,0,18528,300,7,0,0,0,0,0,0,0,0,'Summon Deathsworn via SD2'),
(10134,0,35,0,0,0,18528,300,1,0,0,0,0,0,0,0,0,'Send death event to xiri');
           
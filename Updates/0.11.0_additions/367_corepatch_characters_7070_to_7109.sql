-- 7075
ALTER TABLE character_db_version CHANGE COLUMN required_7067_03_characters_character_spell required_7075_01_characters_character_spell bit;
DELETE FROM character_spell WHERE `spell` IN (
 20580, /*old Shadowmeld*/
 20600, /*Perception*/
 21009, /*old Shadowmeld Passive and new Elusiveness (learned as racial passive)*/
 21184  /*old Seal of Righteousness*/
);
/*old Shadow Resistance, leaned as racial passive of race 5 */
DELETE FROM character_spell USING character_spell INNER JOIN characters ON character_spell.guid = characters.guid
WHERE character_spell.spell = 20579 AND characters.race <> 5; 

-- 7077
ALTER TABLE character_db_version CHANGE COLUMN required_7075_01_characters_character_spell required_7077_01_characters_character_spell bit;
UPDATE IGNORE character_spell SET spell = 2018 WHERE spell = 2020;
DELETE FROM character_spell                    WHERE spell = 2020;
UPDATE IGNORE character_spell SET spell = 2018 WHERE spell = 2020;
DELETE FROM character_spell                    WHERE spell = 2020;
UPDATE IGNORE character_spell SET spell = 3100 WHERE spell = 2021;
DELETE FROM character_spell                    WHERE spell = 2021;
UPDATE IGNORE character_spell SET spell = 3104 WHERE spell = 2154;
DELETE FROM character_spell                    WHERE spell = 2154;
UPDATE IGNORE character_spell SET spell = 2108 WHERE spell = 2155;
DELETE FROM character_spell                    WHERE spell = 2155;
UPDATE IGNORE character_spell SET spell = 2259 WHERE spell = 2275;
DELETE FROM character_spell                    WHERE spell = 2275;
UPDATE IGNORE character_spell SET spell = 3101 WHERE spell = 2280;
DELETE FROM character_spell                    WHERE spell = 2280;
UPDATE IGNORE character_spell SET spell = 2366 WHERE spell = 2372;
DELETE FROM character_spell                    WHERE spell = 2372;
UPDATE IGNORE character_spell SET spell = 2368 WHERE spell = 2373;
DELETE FROM character_spell                    WHERE spell = 2373;
UPDATE IGNORE character_spell SET spell = 2550 WHERE spell = 2551;
DELETE FROM character_spell                    WHERE spell = 2551;
UPDATE IGNORE character_spell SET spell = 2575 WHERE spell = 2581;
DELETE FROM character_spell                    WHERE spell = 2581;
UPDATE IGNORE character_spell SET spell = 2576 WHERE spell = 2582;
DELETE FROM character_spell                    WHERE spell = 2582;
UPDATE IGNORE character_spell SET spell = 3273 WHERE spell = 3279;
DELETE FROM character_spell                    WHERE spell = 3279;
UPDATE IGNORE character_spell SET spell = 3274 WHERE spell = 3280;
DELETE FROM character_spell                    WHERE spell = 3280;
UPDATE IGNORE character_spell SET spell = 3102 WHERE spell = 3412;
DELETE FROM character_spell                    WHERE spell = 3412;
UPDATE IGNORE character_spell SET spell = 3464 WHERE spell = 3465;
DELETE FROM character_spell                    WHERE spell = 3465;
UPDATE IGNORE character_spell SET spell = 3538 WHERE spell = 3539;
DELETE FROM character_spell                    WHERE spell = 3539;
UPDATE IGNORE character_spell SET spell = 3564 WHERE spell = 3568;
DELETE FROM character_spell                    WHERE spell = 3568;
UPDATE IGNORE character_spell SET spell = 3570 WHERE spell = 3571;
DELETE FROM character_spell                    WHERE spell = 3571;
UPDATE IGNORE character_spell SET spell = 3811 WHERE spell = 3812;
DELETE FROM character_spell                    WHERE spell = 3812;
UPDATE IGNORE character_spell SET spell = 3908 WHERE spell = 3911;
DELETE FROM character_spell                    WHERE spell = 3911;
UPDATE IGNORE character_spell SET spell = 3909 WHERE spell = 3912;
DELETE FROM character_spell                    WHERE spell = 3912;
UPDATE IGNORE character_spell SET spell = 3910 WHERE spell = 3913;
DELETE FROM character_spell                    WHERE spell = 3913;
UPDATE IGNORE character_spell SET spell = 4036 WHERE spell = 4039;
DELETE FROM character_spell                    WHERE spell = 4039;
UPDATE IGNORE character_spell SET spell = 4037 WHERE spell = 4040;
DELETE FROM character_spell                    WHERE spell = 4040;
UPDATE IGNORE character_spell SET spell = 4038 WHERE spell = 4041;
DELETE FROM character_spell                    WHERE spell = 4041;
UPDATE IGNORE character_spell SET spell = 7620 WHERE spell = 7733;
DELETE FROM character_spell                    WHERE spell = 7733;
UPDATE IGNORE character_spell SET spell = 7731 WHERE spell = 7734;
DELETE FROM character_spell                    WHERE spell = 7734;
UPDATE IGNORE character_spell SET spell = 8613 WHERE spell = 8615;
DELETE FROM character_spell                    WHERE spell = 8615;
UPDATE IGNORE character_spell SET spell = 8617 WHERE spell = 8619;
DELETE FROM character_spell                    WHERE spell = 8619;
UPDATE IGNORE character_spell SET spell = 8618 WHERE spell = 8620;
DELETE FROM character_spell                    WHERE spell = 8620;
UPDATE IGNORE character_spell SET spell = 9785 WHERE spell = 9786;
DELETE FROM character_spell                    WHERE spell = 9786;
UPDATE IGNORE character_spell SET spell = 10248 WHERE spell = 10249;
DELETE FROM character_spell                     WHERE spell = 10249;
UPDATE IGNORE character_spell SET spell = 10662 WHERE spell = 10663;
DELETE FROM character_spell                     WHERE spell = 10663;
UPDATE IGNORE character_spell SET spell = 10768 WHERE spell = 10769;
DELETE FROM character_spell                     WHERE spell = 10769;
UPDATE IGNORE character_spell SET spell = 11611 WHERE spell = 11612;
DELETE FROM character_spell                     WHERE spell = 11612;
UPDATE IGNORE character_spell SET spell = 11993 WHERE spell = 11994;
DELETE FROM character_spell                     WHERE spell = 11994;
UPDATE IGNORE character_spell SET spell = 12180 WHERE spell = 12181;
DELETE FROM character_spell                     WHERE spell = 12181;
UPDATE IGNORE character_spell SET spell = 12656 WHERE spell = 12657;
DELETE FROM character_spell                     WHERE spell = 12657;
UPDATE IGNORE character_spell SET spell = 25229 WHERE spell = 25245;
DELETE FROM character_spell                     WHERE spell = 25245;
UPDATE IGNORE character_spell SET spell = 25230 WHERE spell = 25246;
DELETE FROM character_spell                     WHERE spell = 25246;
UPDATE IGNORE character_spell SET spell = 26790 WHERE spell = 26791;
DELETE FROM character_spell                     WHERE spell = 26791;
UPDATE IGNORE character_spell SET spell = 28596 WHERE spell = 28597;
DELETE FROM character_spell                     WHERE spell = 28597;
UPDATE IGNORE character_spell SET spell = 28695 WHERE spell = 28696;
DELETE FROM character_spell                     WHERE spell = 28696;
UPDATE IGNORE character_spell SET spell = 28894 WHERE spell = 28896;
DELETE FROM character_spell                     WHERE spell = 28896;
UPDATE IGNORE character_spell SET spell = 28895 WHERE spell = 28899;
DELETE FROM character_spell                     WHERE spell = 28899;
UPDATE IGNORE character_spell SET spell = 28897 WHERE spell = 28901;
DELETE FROM character_spell                     WHERE spell = 28901;
UPDATE IGNORE character_spell SET spell = 29354 WHERE spell = 29355;
DELETE FROM character_spell                     WHERE spell = 29355;
UPDATE IGNORE character_spell SET spell = 29844 WHERE spell = 29845;
DELETE FROM character_spell                     WHERE spell = 29845;
UPDATE IGNORE character_spell SET spell = 30350 WHERE spell = 30351;
DELETE FROM character_spell                     WHERE spell = 30351;
UPDATE IGNORE character_spell SET spell = 32549 WHERE spell = 32550;
DELETE FROM character_spell                     WHERE spell = 32550;
UPDATE IGNORE character_spell SET spell = 32678 WHERE spell = 32679;
DELETE FROM character_spell                     WHERE spell = 32679;
UPDATE IGNORE character_spell SET spell = 45357 WHERE spell = 45375;
DELETE FROM character_spell                     WHERE spell = 45375;
UPDATE IGNORE character_spell SET spell = 45358 WHERE spell = 45376;
DELETE FROM character_spell                     WHERE spell = 45376;
UPDATE IGNORE character_spell SET spell = 45359 WHERE spell = 45377;
DELETE FROM character_spell                     WHERE spell = 45377;
UPDATE IGNORE character_spell SET spell = 45360 WHERE spell = 45378;
DELETE FROM character_spell                     WHERE spell = 45378;
UPDATE IGNORE character_spell SET spell = 45361 WHERE spell = 45379;
DELETE FROM character_spell                     WHERE spell = 45379;
UPDATE IGNORE character_spell SET spell = 45363 WHERE spell = 45380;
DELETE FROM character_spell                     WHERE spell = 45380;
UPDATE IGNORE character_spell SET spell = 45542 WHERE spell = 50299;
DELETE FROM character_spell                     WHERE spell = 50299;
UPDATE IGNORE character_spell SET spell = 50305 WHERE spell = 50307;
DELETE FROM character_spell                     WHERE spell = 50307;
UPDATE IGNORE character_spell SET spell = 50310 WHERE spell = 50309;
DELETE FROM character_spell                     WHERE spell = 50309;
UPDATE IGNORE character_spell SET spell = 51294 WHERE spell = 51293;
DELETE FROM character_spell                     WHERE spell = 51293;
UPDATE IGNORE character_spell SET spell = 51296 WHERE spell = 51295;
DELETE FROM character_spell                     WHERE spell = 51295;
UPDATE IGNORE character_spell SET spell = 51300 WHERE spell = 51298;
DELETE FROM character_spell                     WHERE spell = 51298;
UPDATE IGNORE character_spell SET spell = 51302 WHERE spell = 51301;
DELETE FROM character_spell                     WHERE spell = 51301;
UPDATE IGNORE character_spell SET spell = 51304 WHERE spell = 51303;
DELETE FROM character_spell                     WHERE spell = 51303;
UPDATE IGNORE character_spell SET spell = 51306 WHERE spell = 51305;
DELETE FROM character_spell                     WHERE spell = 51305;
UPDATE IGNORE character_spell SET spell = 51309 WHERE spell = 51308;
DELETE FROM character_spell                     WHERE spell = 51308;
UPDATE IGNORE character_spell SET spell = 51311 WHERE spell = 51310;
DELETE FROM character_spell                     WHERE spell = 51310;
UPDATE IGNORE character_spell SET spell = 51313 WHERE spell = 51312;
DELETE FROM character_spell                     WHERE spell = 51312;
UPDATE IGNORE character_spell SET spell = 33095 WHERE spell = 54084;
DELETE FROM character_spell                     WHERE spell = 54084;

-- 7100
ALTER TABLE character_db_version CHANGE COLUMN required_7077_01_characters_character_spell required_7100_01_characters_character_spell bit;
/* Warrior cleanup */
DELETE FROM `character_spell` WHERE `spell` IN (1715,7372,7373);                  /* Hamstring old */
DELETE FROM `character_spell` WHERE `spell` IN (72,17671,1672);                   /* Mortar Disturb old */
DELETE FROM `character_spell` WHERE `spell` IN (7384,7887,11584,11586);           /* Overpower old */
DELETE FROM `character_spell` WHERE `spell`=23881;                                /* Bloodthirst old */
DELETE FROM `character_spell` WHERE `spell` IN (6552,6554);                       /* Pummel old */
DELETE FROM `character_spell` WHERE `spell` IN (694,7400,7402,20559,20560,25266); /* Mocking Blow old */
/* Druid cleanup */
DELETE FROM `character_spell` WHERE `spell`=22842;                                /* Frenzied Regeneration old */
/* Hunter cleanup */
DELETE FROM `character_spell` WHERE `spell`=14268;                                /* Wing Clip r1 old */
DELETE FROM `character_spell` WHERE `spell`=14267;                                /* Wing Clip r2 old */
/* Rogue */
DELETE FROM `character_spell` WHERE `spell` IN (1766,1767,1768,1769,38768);       /* Kick old */
DELETE FROM `character_spell` WHERE `spell` IN (1776,1777,8629,11285,11286,38764);/* Gouge old */
DELETE FROM `character_spell` WHERE `spell`=2842;                                 /* Poisons old */

/* Hunter's training spells for pets */
DELETE FROM `character_spell` WHERE `spell` IN (2949,2975,2976,2977,2980,2981,2982,3666,3667,4630,6327,6359,6362,
    7370,7832,7833,7834,7835,7871,7872,7873,7876,7877,7878,7879,7880,7881,7882,7883,7884,7885,7886,8318,8319,11764,
    11765,11768,11769,11772,11773,11776,11777,11781,11782,11783,11786,11787,17254,17262,17263,17264,17265,17266,
    17267,17268,17736,17753,17754,17755,17776,17855,17856,17857,17859,17860,19439,19444,19445,19446,19447,19481,
    19577,19648,19650,19661,19662,19663,19664,19737,19738,19739,20270,20312,20313,20314,20315,20316,20317,20318,
    20319,20320,20321,20322,20323,20324,20326,20327,20329,20377,20378,20379,20380,20381,20382,20383,20384,20385,
    20386,20387,20388,20389,20390,20391,20392,20393,20394,20395,20396,20397,20398,20399,20400,20401,20402,20403,
    20404,20405,20406,20407,20408,20426,20427,20428,20429,20430,20431,20432,20433,20434,20435,23100,23111,23112,
    23146,23149,23150,24424,24440,24441,24451,24454,24455,24463,24464,24475,24476,24477,24580,24581,24582,24584,
    24588,24589,24599,24607,24608,24609,24641,26065,26094,26184,26185,26186,26189,26190,26202,27347,27348,27349,
    27361,27366,27484,27485,27486,27487,27488,27489,27490,27491,27492,27493,27494,27495,27496,27497,27500,28343,
    33703,35299,35300,35302,35303,35304,35305,35306,35307,35308);
DELETE FROM `character_spell` WHERE `spell` IN (1853,14922,14923,14924,14925,14926,14927,27344);
DELETE FROM `character_spell` WHERE `spell` IN (27353,24516,24515,24514,24490);
DELETE FROM `character_spell` WHERE `spell` IN (27354,24513,24512,24511,24494,2119);
UPDATE IGNORE character_spell SET spell = 2108 WHERE spell = 3104;
DELETE FROM character_spell                    WHERE spell = 3104;
/* This cleanup character_action. This is like delete from character_action where type=0 and action not in character_spell for same player */
DELETE FROM ca,cs USING `character_action` ca LEFT JOIN `character_spell` cs ON ca.`guid`=cs.`guid` AND ca.`action`=cs.`spell` WHERE ca.`type`=0 AND cs.`guid` IS NULL;


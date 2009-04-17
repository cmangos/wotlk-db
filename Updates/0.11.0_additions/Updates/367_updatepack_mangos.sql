-- UDB problem, not in mangos sql file
DELETE FROM `spell_learn_spell` WHERE `SpellID` IN (1853,14922);

-- some fixes for creatures without proper money, dmg, health, lvl, armor
replace into `creature_template` (`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('23589','0','21648','21649','21648','0','Defias Rummager','',NULL,'34','37','1500','1536','0','0','700','16','16','0','1','1','0','15','30','0','70','2000','0','32768','0','0','0','0','0','0','0','0','0','7','0','23589','23589','0','0','0','0','0','0','0','0','0','0','0','0','100','225','','0','3','0','1','983','0','0','');
replace into `creature_template` (`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('23590','0','21651','0','21651','0','Defias Conjuror','',NULL,'36','37','1207','1257','1097','1142','700','16','16','0','1','1','0','10','25','0','70','2000','0','32768','0','0','0','0','0','0','0','0','0','7','0','23590','23590','0','0','0','0','0','0','0','0','0','0','0','0','100','225','','0','3','0','1','0','0','0','');
replace into `creature_template` (`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('23591','0','21652','0','21652','0','Defias Diver','',NULL,'37','38','1536','1604','0','0','700','16','16','0','1','1','0','15','30','0','70','2000','0','32768','0','0','0','0','0','0','0','0','0','7','0','23591','23591','0','0','0','0','0','0','0','0','0','0','0','0','100','225','','0','3','0','1','61','0','0','');
-- sorry for bad replace-style :/. I will sacrifice to gods to compensate this

-- some creature model updates
UPDATE `creature_model_info` SET `bounding_radius`=0.2325,`combat_reach`=1.125 WHERE `modelid`=171;
UPDATE `creature_model_info` SET `bounding_radius`=0.678354,`combat_reach`=0.948305 WHERE `modelid`=180;
UPDATE `creature_model_info` SET `bounding_radius`=0.745464,`combat_reach`=0.633898 WHERE `modelid`=503;
UPDATE `creature_model_info` SET `bounding_radius`=0.754339,`combat_reach`=0.605085 WHERE `modelid`=513;
UPDATE `creature_model_info` SET `bounding_radius`=0.795,`combat_reach`=1.5 WHERE `modelid`=599;
UPDATE `creature_model_info` SET `bounding_radius`=1.05763,`combat_reach`=0.881356 WHERE `modelid`=604;
UPDATE `creature_model_info` SET `bounding_radius`=0.661986,`combat_reach`=0.925424 WHERE `modelid`=670;
UPDATE `creature_model_info` SET `bounding_radius`=1.05,`combat_reach`=1.25 WHERE `modelid`=837;
UPDATE `creature_model_info` SET `bounding_radius`=1.05,`combat_reach`=1.25 WHERE `modelid`=839;
UPDATE `creature_model_info` SET `bounding_radius`=1.2075,`combat_reach`=1.4375 WHERE `modelid`=840;
UPDATE `creature_model_info` SET `bounding_radius`=0.932542,`combat_reach`=1.11017 WHERE `modelid`=845;
UPDATE `creature_model_info` SET `bounding_radius`=0.1735,`combat_reach`=0.75 WHERE `modelid`=850;
UPDATE `creature_model_info` SET `bounding_radius`=0.6,`combat_reach`=0.5 WHERE `modelid`=855;
UPDATE `creature_model_info` SET `bounding_radius`=0.830407,`combat_reach`=0.666102 WHERE `modelid`=957;
UPDATE `creature_model_info` SET `bounding_radius`=0.65653,`combat_reach`=0.917797 WHERE `modelid`=960;
UPDATE `creature_model_info` SET `bounding_radius`=0.621519,`combat_reach`=1.11864 WHERE `modelid`=1034;
UPDATE `creature_model_info` SET `bounding_radius`=0.654478,`combat_reach`=1.17797 WHERE `modelid`=1035;
UPDATE `creature_model_info` SET `bounding_radius`=0.2635 WHERE `modelid`=1068;
UPDATE `creature_model_info` SET `bounding_radius`=0.8334,`combat_reach`=1.2 WHERE `modelid`=1075;
UPDATE `creature_model_info` SET `bounding_radius`=1.0,`combat_reach`=5.0 WHERE `modelid`=1092;
UPDATE `creature_model_info` SET `bounding_radius`=1.08051,`combat_reach`=0.900424 WHERE `modelid`=1100;
UPDATE `creature_model_info` SET `bounding_radius`=0.2635 WHERE `modelid`=1161;
UPDATE `creature_model_info` SET `bounding_radius`=0.31 WHERE `modelid`=1162;
UPDATE `creature_model_info` SET `bounding_radius`=0.759322,`combat_reach`=0.949153 WHERE `modelid`=1307;
UPDATE `creature_model_info` SET `bounding_radius`=0.698,`combat_reach`=3.6 WHERE `modelid`=1322;
UPDATE `creature_model_info` SET `bounding_radius`=0.564407,`combat_reach`=0.564407 WHERE `modelid`=1742;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=1864;
UPDATE `creature_model_info` SET `bounding_radius`=0.173814,`combat_reach`=0.744915 WHERE `modelid`=1955;
UPDATE `creature_model_info` SET `bounding_radius`=0.2635 WHERE `modelid`=2170;
UPDATE `creature_model_info` SET `bounding_radius`=0.578059,`combat_reach`=1.09068 WHERE `modelid`=2278;
UPDATE `creature_model_info` SET `bounding_radius`=0.7,`combat_reach`=0.7 WHERE `modelid`=2420;
UPDATE `creature_model_info` SET `bounding_radius`=0.718195,`combat_reach`=1.35509 WHERE `modelid`=2437;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=2518;
UPDATE `creature_model_info` SET `bounding_radius`=1.59735,`combat_reach`=2.875 WHERE `modelid`=2549;
UPDATE `creature_model_info` SET `bounding_radius`=1.0,`combat_reach`=1.0 WHERE `modelid`=2702;
UPDATE `creature_model_info` SET `bounding_radius`=0.436441,`combat_reach`=1.30932 WHERE `modelid`=2709;
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1.5 WHERE `modelid`=2885;
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1.5 WHERE `modelid`=2886;
UPDATE `creature_model_info` SET `bounding_radius`=0.561017,`combat_reach`=0.561017 WHERE `modelid`=3006;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=3590;
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1.5 WHERE `modelid`=3897;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=3930;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=3932;
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5 WHERE `modelid`=3933;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=3978;
UPDATE `creature_model_info` SET `bounding_radius`=0.550847,`combat_reach`=0.550847 WHERE `modelid`=4091;
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5 WHERE `modelid`=4218;
UPDATE `creature_model_info` SET `bounding_radius`=1.0,`combat_reach`=1.25 WHERE `modelid`=4305;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=4420;
UPDATE `creature_model_info` SET `bounding_radius`=0.459,`combat_reach`=2.25 WHERE `modelid`=4582;
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5 WHERE `modelid`=4595;
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5 WHERE `modelid`=4598;
UPDATE `creature_model_info` SET `bounding_radius`=0.14,`combat_reach`=0.6 WHERE `modelid`=4732;
UPDATE `creature_model_info` SET `bounding_radius`=0.150678,`combat_reach`=0.645763 WHERE `modelid`=4734;
UPDATE `creature_model_info` SET `bounding_radius`=0.2635 WHERE `modelid`=4766;
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=1.5 WHERE `modelid`=5431;
UPDATE `creature_model_info` SET `bounding_radius`=0.5205,`combat_reach`=1.5 WHERE `modelid`=5432;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1.725 WHERE `modelid`=5435;
UPDATE `creature_model_info` SET `bounding_radius`=0.3565 WHERE `modelid`=5781;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=5784;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=5809;
UPDATE `creature_model_info` SET `bounding_radius`=0.441525,`combat_reach`=0.883051 WHERE `modelid`=5985;
UPDATE `creature_model_info` SET `bounding_radius`=0.253305,`combat_reach`=0.578983 WHERE `modelid`=6368;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=6441;
UPDATE `creature_model_info` SET `bounding_radius`=0.2448,`combat_reach`=1.2 WHERE `modelid`=6678;
UPDATE `creature_model_info` SET `bounding_radius`=0.2448,`combat_reach`=1.2 WHERE `modelid`=6679;
UPDATE `creature_model_info` SET `bounding_radius`=0.2754,`combat_reach`=1.35 WHERE `modelid`=6680;
UPDATE `creature_model_info` SET `bounding_radius`=0.2754,`combat_reach`=1.35 WHERE `modelid`=6681;
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1.65 WHERE `modelid`=6682;
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1.65 WHERE `modelid`=6690;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=6791;
UPDATE `creature_model_info` SET `bounding_radius`=1.25,`combat_reach`=2.03125 WHERE `modelid`=6818;
UPDATE `creature_model_info` SET `bounding_radius`=1.25,`combat_reach`=2.1875 WHERE `modelid`=6830;
UPDATE `creature_model_info` SET `bounding_radius`=0.389,`combat_reach`=1.5 WHERE `modelid`=6991;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=7210;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725,`combat_reach`=3.75 WHERE `modelid`=7376;
UPDATE `creature_model_info` SET `bounding_radius`=0.234322,`combat_reach`=1.00424 WHERE `modelid`=7894;
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=3.0 WHERE `modelid`=7975;
UPDATE `creature_model_info` SET `bounding_radius`=0.31 WHERE `modelid`=8550;
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1.5 WHERE `modelid`=8649;
UPDATE `creature_model_info` SET `bounding_radius`=0.729519,`combat_reach`=0.620339 WHERE `modelid`=8869;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=9024;
UPDATE `creature_model_info` SET `bounding_radius`=1.39322,`combat_reach`=1.39322 WHERE `modelid`=9032;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=9292;
UPDATE `creature_model_info` SET `bounding_radius`=0.45,`combat_reach`=1.125 WHERE `modelid`=9534;
UPDATE `creature_model_info` SET `bounding_radius`=0.143559,`combat_reach`=0.615254 WHERE `modelid`=9535;
UPDATE `creature_model_info` SET `bounding_radius`=0.0875,`combat_reach`=0.25 WHERE `modelid`=9555;
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1.5 WHERE `modelid`=9576;
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1.5 WHERE `modelid`=9577;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=9578;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=9579;
UPDATE `creature_model_info` SET `bounding_radius`=0.217 WHERE `modelid`=9589;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464,`combat_reach`=1.8 WHERE `modelid`=9692;
UPDATE `creature_model_info` SET `bounding_radius`=1.0,`combat_reach`=1.5 WHERE `modelid`=9784;
UPDATE `creature_model_info` SET `bounding_radius`=1.15,`combat_reach`=1.725 WHERE `modelid`=9787;
UPDATE `creature_model_info` SET `bounding_radius`=0.852941,`combat_reach`=1.60932 WHERE `modelid`=9958;
UPDATE `creature_model_info` SET `bounding_radius`=0.0525,`combat_reach`=0.225 WHERE `modelid`=10033;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747,`combat_reach`=4.05 WHERE `modelid`=10050;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=10217;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=10312;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=10340;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=10348;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=10356;
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1.65 WHERE `modelid`=10402;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=10478;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=10479;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=10481;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=10482;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=10483;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=10485;
UPDATE `creature_model_info` SET `bounding_radius`=0.6,`combat_reach`=3.75 WHERE `modelid`=10919;
UPDATE `creature_model_info` SET `bounding_radius`=0.4511,`combat_reach`=1.3 WHERE `modelid`=10974;
UPDATE `creature_model_info` SET `bounding_radius`=1.14153,`combat_reach`=1.14153 WHERE `modelid`=11010;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=11126;
UPDATE `creature_model_info` SET `bounding_radius`=1.0,`combat_reach`=2.5 WHERE `modelid`=11261;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=11272;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=11279;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=11300;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=11306;
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5 WHERE `modelid`=11307;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=11310;
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5 WHERE `modelid`=11425;
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1.5 WHERE `modelid`=11441;
UPDATE `creature_model_info` SET `bounding_radius`=1.75,`combat_reach`=2.625 WHERE `modelid`=11572;
UPDATE `creature_model_info` SET `bounding_radius`=0.31 WHERE `modelid`=11710;
UPDATE `creature_model_info` SET `bounding_radius`=0.31 WHERE `modelid`=11711;
UPDATE `creature_model_info` SET `bounding_radius`=0.31 WHERE `modelid`=11712;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747,`combat_reach`=4.05 WHERE `modelid`=11790;
UPDATE `creature_model_info` SET `bounding_radius`=0.00235,`combat_reach`=0.01 WHERE `modelid`=12271;
UPDATE `creature_model_info` SET `bounding_radius`=0.155 WHERE `modelid`=12310;
UPDATE `creature_model_info` SET `bounding_radius`=1.40085,`combat_reach`=1.40085 WHERE `modelid`=12333;
UPDATE `creature_model_info` SET `bounding_radius`=1.39322,`combat_reach`=1.39322 WHERE `modelid`=13211;
UPDATE `creature_model_info` SET `bounding_radius`=1.40085,`combat_reach`=1.40085 WHERE `modelid`=13212;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747,`combat_reach`=4.05 WHERE `modelid`=14323;
UPDATE `creature_model_info` SET `bounding_radius`=0.3565 WHERE `modelid`=14328;
UPDATE `creature_model_info` SET `bounding_radius`=0.5425,`combat_reach`=2.625 WHERE `modelid`=14505;
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1.5 WHERE `modelid`=14879;
UPDATE `creature_model_info` SET `bounding_radius`=0.6975 WHERE `modelid`=16021;
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5 WHERE `modelid`=16082;
UPDATE `creature_model_info` SET `bounding_radius`=0.1575,`combat_reach`=0.675 WHERE `modelid`=16724;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=17066;
UPDATE `creature_model_info` SET `bounding_radius`=0.403 WHERE `modelid`=17461;
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1.5 WHERE `modelid`=17621;
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1.5 WHERE `modelid`=17666;
UPDATE `creature_model_info` SET `bounding_radius`=0.62,`combat_reach`=4.0 WHERE `modelid`=17896;
UPDATE `creature_model_info` SET `bounding_radius`=0.4213,`combat_reach`=1.65 WHERE `modelid`=19573;
UPDATE `creature_model_info` SET `bounding_radius`=0.4213,`combat_reach`=1.65 WHERE `modelid`=19574;
UPDATE `creature_model_info` SET `bounding_radius`=0.4213,`combat_reach`=1.65 WHERE `modelid`=19576;
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5 WHERE `modelid`=19832;
UPDATE `creature_model_info` SET `bounding_radius`=0.520833,`combat_reach`=2.25 WHERE `modelid`=21025;
UPDATE `creature_model_info` SET `bounding_radius`=0.2625,`combat_reach`=1.125 WHERE `modelid`=21124;
UPDATE `creature_model_info` SET `bounding_radius`=0.389,`combat_reach`=1.5 WHERE `modelid`=21129;
UPDATE `creature_model_info` SET `bounding_radius`=0.7,`combat_reach`=3.0 WHERE `modelid`=21133;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=22493;
UPDATE `creature_model_info` SET `bounding_radius`=1.0,`combat_reach`=1.5 WHERE `modelid`=22764;
UPDATE `creature_model_info` SET `bounding_radius`=0.389,`combat_reach`=1.5 WHERE `modelid`=22825;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=22826;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=22827;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=22828;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=22829;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=22879;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=22886;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=22887;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=22888;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=22889;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=22890;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747,`combat_reach`=4.05 WHERE `modelid`=22891;
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5 WHERE `modelid`=22892;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=22893;
UPDATE `creature_model_info` SET `bounding_radius`=0.105,`combat_reach`=0.3 WHERE `modelid`=22902;
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5 WHERE `modelid`=22909;
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5 WHERE `modelid`=22913;
UPDATE `creature_model_info` SET `bounding_radius`=1.0,`combat_reach`=1.5 WHERE `modelid`=22921;
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5 WHERE `modelid`=23003;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=24136;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=24169;
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1.5 WHERE `modelid`=24616;
UPDATE `creature_model_info` SET `bounding_radius`=0.2,`combat_reach`=0.6 WHERE `modelid`=24620;
UPDATE `creature_model_info` SET `bounding_radius`=0.1 WHERE `modelid`=24890;
UPDATE `creature_model_info` SET `bounding_radius`=0.12 WHERE `modelid`=24895;
UPDATE `creature_model_info` SET `bounding_radius`=0.1 WHERE `modelid`=24898;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=24979;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=25118;
UPDATE `creature_model_info` SET `bounding_radius`=0.25,`combat_reach`=0.5 WHERE `modelid`=25268;
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5 WHERE `modelid`=25902;
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5 WHERE `modelid`=26451;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=26597;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=26599;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=26600;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=26601;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=26602;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=26603;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=26605;
UPDATE `creature_model_info` SET `bounding_radius`=0.1 WHERE `modelid`=26622;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832,`combat_reach`=1.8 WHERE `modelid`=27146;
UPDATE `creature_model_info` SET `bounding_radius`=0.4213,`combat_reach`=1.65 WHERE `modelid`=27147;
UPDATE `creature_model_info` SET `bounding_radius`=1.07217,`combat_reach`=4.455 WHERE `modelid`=27149;
UPDATE `creature_model_info` SET `bounding_radius`=0.4092,`combat_reach`=1.65 WHERE `modelid`=27163;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=27164;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=27252;
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5 WHERE `modelid`=27257;
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5 WHERE `modelid`=27260;
UPDATE `creature_model_info` SET `bounding_radius`=0.236,`combat_reach`=1.5 WHERE `modelid`=27285;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=27286;
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5 WHERE `modelid`=27289;
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5 WHERE `modelid`=27294;
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1.5 WHERE `modelid`=27300;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=27661;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=27662;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=27693;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=27694;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=27695;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=27696;
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5 WHERE `modelid`=27698;
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1.65 WHERE `modelid`=27953;
UPDATE `creature_model_info` SET `bounding_radius`=0.372,`combat_reach`=1.2 WHERE `modelid`=28213;
UPDATE `creature_model_info` SET `bounding_radius`=0.62,`combat_reach`=2.0 WHERE `modelid`=28220;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28224;
UPDATE `creature_model_info` SET `bounding_radius`=0.381944,`combat_reach`=1.65 WHERE `modelid`=28225;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28228;
UPDATE `creature_model_info` SET `bounding_radius`=0.364583,`combat_reach`=1.575 WHERE `modelid`=28229;
UPDATE `creature_model_info` SET `bounding_radius`=0.329861,`combat_reach`=1.425 WHERE `modelid`=28230;
UPDATE `creature_model_info` SET `bounding_radius`=0.364583,`combat_reach`=1.575 WHERE `modelid`=28236;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28238;
UPDATE `creature_model_info` SET `bounding_radius`=0.416666,`combat_reach`=1.8 WHERE `modelid`=28240;
UPDATE `creature_model_info` SET `bounding_radius`=0.416666,`combat_reach`=1.8 WHERE `modelid`=28241;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28243;
UPDATE `creature_model_info` SET `bounding_radius`=0.381944,`combat_reach`=1.65 WHERE `modelid`=28244;
UPDATE `creature_model_info` SET `bounding_radius`=0.399305,`combat_reach`=1.725 WHERE `modelid`=28245;
UPDATE `creature_model_info` SET `bounding_radius`=0.364583,`combat_reach`=1.575 WHERE `modelid`=28246;
UPDATE `creature_model_info` SET `bounding_radius`=0.399305,`combat_reach`=1.725 WHERE `modelid`=28247;
UPDATE `creature_model_info` SET `bounding_radius`=0.364583,`combat_reach`=1.575 WHERE `modelid`=28249;
UPDATE `creature_model_info` SET `bounding_radius`=0.364583,`combat_reach`=1.575 WHERE `modelid`=28250;
UPDATE `creature_model_info` SET `bounding_radius`=0.364583,`combat_reach`=1.575 WHERE `modelid`=28251;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28252;
UPDATE `creature_model_info` SET `bounding_radius`=0.416666,`combat_reach`=1.8 WHERE `modelid`=28253;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28255;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28256;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28257;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28260;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28261;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28262;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28263;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28264;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28265;
UPDATE `creature_model_info` SET `bounding_radius`=0.347222,`combat_reach`=1.5 WHERE `modelid`=28266;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=28300;
UPDATE `creature_model_info` SET `bounding_radius`=0.737492,`combat_reach`=0.627119 WHERE `modelid`=503;
UPDATE `creature_model_info` SET `bounding_radius`=0.718195,`combat_reach`=1.35509 WHERE `modelid`=598;
UPDATE `creature_model_info` SET `bounding_radius`=0.65653,`combat_reach`=0.917797 WHERE `modelid`=670;
UPDATE `creature_model_info` SET `bounding_radius`=1.10339,`combat_reach`=0.919492 WHERE `modelid`=785;
UPDATE `creature_model_info` SET `bounding_radius`=1.05,`combat_reach`=0.875 WHERE `modelid`=855;
UPDATE `creature_model_info` SET `bounding_radius`=0.64977,`combat_reach`=1.16949 WHERE `modelid`=1035;
UPDATE `creature_model_info` SET `bounding_radius`=0.593268,`combat_reach`=1.0678 WHERE `modelid`=1250;
UPDATE `creature_model_info` SET `bounding_radius`=1.047,`combat_reach`=4.5 WHERE `modelid`=1322;
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5 WHERE `modelid`=1683;
UPDATE `creature_model_info` SET `bounding_radius`=0.712805,`combat_reach`=1.34492 WHERE `modelid`=2437;
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5 WHERE `modelid`=4890;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1.725 WHERE `modelid`=4953;
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5 WHERE `modelid`=4956;
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5 WHERE `modelid`=4957;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1.725 WHERE `modelid`=6920;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1.725 WHERE `modelid`=6925;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1.725 WHERE `modelid`=6928;
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1.725 WHERE `modelid`=6974;
UPDATE `creature_model_info` SET `bounding_radius`=0.75,`combat_reach`=1.0 WHERE `modelid`=6977;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=7750;
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5 WHERE `modelid`=7813;
UPDATE `creature_model_info` SET `bounding_radius`=1.05763,`combat_reach`=0.881356 WHERE `modelid`=11416;
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5 WHERE `modelid`=22758;
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5 WHERE `modelid`=22761;
UPDATE `creature_model_info` SET `bounding_radius`=1.0,`combat_reach`=1.5 WHERE `modelid`=22917;


-- Trainers
-- --------
-- Riding, not fixed in core yet
UPDATE IGNORE `npc_trainer` SET `spell`=33389 WHERE `spell`=33388; -- aprentice
-- journeyman is fine: 33392

-- Other professions fixed
UPDATE IGNORE `npc_trainer` SET `spell`= 2020 WHERE `spell`= 2018;
DELETE FROM `npc_trainer` WHERE `spell`= 2018;

UPDATE IGNORE `npc_trainer` SET `spell`= 2021 WHERE `spell`= 3100;
DELETE FROM `npc_trainer` WHERE `spell`= 3100;

UPDATE IGNORE `npc_trainer` SET `spell`= 3104 WHERE `spell`= 2154;
DELETE FROM `npc_trainer` WHERE `spell`= 2154;

UPDATE IGNORE `npc_trainer` SET `spell`= 2155 WHERE `spell`= 2108;
DELETE FROM `npc_trainer` WHERE `spell`= 2108;

UPDATE IGNORE `npc_trainer` SET `spell`= 2275 WHERE `spell`= 2259;
DELETE FROM `npc_trainer` WHERE `spell`= 2259;

UPDATE IGNORE `npc_trainer` SET `spell`= 2280 WHERE `spell`= 3101;
DELETE FROM `npc_trainer` WHERE `spell`= 3101;

UPDATE IGNORE `npc_trainer` SET `spell`= 2372 WHERE `spell`= 2366;
DELETE FROM `npc_trainer` WHERE `spell`= 2366;

UPDATE IGNORE `npc_trainer` SET `spell`= 2373 WHERE `spell`= 2368;
DELETE FROM `npc_trainer` WHERE `spell`= 2368;

UPDATE IGNORE `npc_trainer` SET `spell`= 2551 WHERE `spell`= 2550;
DELETE FROM `npc_trainer` WHERE `spell`= 2550;

UPDATE IGNORE `npc_trainer` SET `spell`= 2581 WHERE `spell`= 2575;
DELETE FROM `npc_trainer` WHERE `spell`= 2575;

UPDATE IGNORE `npc_trainer` SET `spell`= 2582 WHERE `spell`= 2576;
DELETE FROM `npc_trainer` WHERE `spell`= 2576;

UPDATE IGNORE `npc_trainer` SET `spell`= 3279 WHERE `spell`= 3273;
DELETE FROM `npc_trainer` WHERE `spell`= 3273;

UPDATE IGNORE `npc_trainer` SET `spell`= 3280 WHERE `spell`= 3274;
DELETE FROM `npc_trainer` WHERE `spell`= 3274;

UPDATE IGNORE `npc_trainer` SET `spell`= 3412 WHERE `spell`= 3102;
DELETE FROM `npc_trainer` WHERE `spell`= 3102;

UPDATE IGNORE `npc_trainer` SET `spell`= 3465 WHERE `spell`= 3464;
DELETE FROM `npc_trainer` WHERE `spell`= 3464;

UPDATE IGNORE `npc_trainer` SET `spell`= 3539 WHERE `spell`= 3538;
DELETE FROM `npc_trainer` WHERE `spell`= 3538;

UPDATE IGNORE `npc_trainer` SET `spell`= 3568 WHERE `spell`= 3564;
DELETE FROM `npc_trainer` WHERE `spell`= 3564;

UPDATE IGNORE `npc_trainer` SET `spell`= 3571 WHERE `spell`= 3570;
DELETE FROM `npc_trainer` WHERE `spell`= 3570;

UPDATE IGNORE `npc_trainer` SET `spell`= 3812 WHERE `spell`= 3811;
DELETE FROM `npc_trainer` WHERE `spell`= 3811;

UPDATE IGNORE `npc_trainer` SET `spell`= 3911 WHERE `spell`= 3908;
DELETE FROM `npc_trainer` WHERE `spell`= 3908;

UPDATE IGNORE `npc_trainer` SET `spell`= 3912 WHERE `spell`= 3909;
DELETE FROM `npc_trainer` WHERE `spell`= 3909;

UPDATE IGNORE `npc_trainer` SET `spell`= 3913 WHERE `spell`= 3910;
DELETE FROM `npc_trainer` WHERE `spell`= 3910;

UPDATE IGNORE `npc_trainer` SET `spell`= 4039 WHERE `spell`= 4036;
DELETE FROM `npc_trainer` WHERE `spell`= 4036;

UPDATE IGNORE `npc_trainer` SET `spell`= 4040 WHERE `spell`= 4037;
DELETE FROM `npc_trainer` WHERE `spell`= 4037;

UPDATE IGNORE `npc_trainer` SET `spell`= 4041 WHERE `spell`= 4038;
DELETE FROM `npc_trainer` WHERE `spell`= 4038;

UPDATE IGNORE `npc_trainer` SET `spell`= 7733 WHERE `spell`= 7620;
DELETE FROM `npc_trainer` WHERE `spell`= 7620;

UPDATE IGNORE `npc_trainer` SET `spell`= 7734 WHERE `spell`= 7731;
DELETE FROM `npc_trainer` WHERE `spell`= 7731;

UPDATE IGNORE `npc_trainer` SET `spell`= 8615 WHERE `spell`= 8613;
DELETE FROM `npc_trainer` WHERE `spell`= 8613;

UPDATE IGNORE `npc_trainer` SET `spell`= 8619 WHERE `spell`= 8617;
DELETE FROM `npc_trainer` WHERE `spell`= 8617;

UPDATE IGNORE `npc_trainer` SET `spell`= 8620 WHERE `spell`= 8618;
DELETE FROM `npc_trainer` WHERE `spell`= 8618;

UPDATE IGNORE `npc_trainer` SET `spell`= 9786 WHERE `spell`= 9785;
DELETE FROM `npc_trainer` WHERE `spell`= 9785;

UPDATE IGNORE `npc_trainer` SET `spell`= 10249 WHERE `spell`= 10248;
DELETE FROM `npc_trainer` WHERE `spell`= 10248;

UPDATE IGNORE `npc_trainer` SET `spell`= 10663 WHERE `spell`= 10662;
DELETE FROM `npc_trainer` WHERE `spell`= 10662;

UPDATE IGNORE `npc_trainer` SET `spell`= 10769 WHERE `spell`= 10768;
DELETE FROM `npc_trainer` WHERE `spell`= 10768;

UPDATE IGNORE `npc_trainer` SET `spell`= 11612 WHERE `spell`= 11611;
DELETE FROM `npc_trainer` WHERE `spell`= 11611;

UPDATE IGNORE `npc_trainer` SET `spell`= 11994 WHERE `spell`= 11993;
DELETE FROM `npc_trainer` WHERE `spell`= 11993;

UPDATE IGNORE `npc_trainer` SET `spell`= 12181 WHERE `spell`= 11993;
DELETE FROM `npc_trainer` WHERE `spell`= 11993;

UPDATE IGNORE `npc_trainer` SET `spell`= 12657 WHERE `spell`= 11993;
DELETE FROM `npc_trainer` WHERE `spell`= 11993;

UPDATE IGNORE `npc_trainer` SET `spell`= 25245 WHERE `spell`= 25229;
DELETE FROM `npc_trainer` WHERE `spell`= 25229;

UPDATE IGNORE `npc_trainer` SET `spell`= 25246 WHERE `spell`= 25230;
DELETE FROM `npc_trainer` WHERE `spell`= 25230;

UPDATE IGNORE `npc_trainer` SET `spell`= 26791 WHERE `spell`= 26790;
DELETE FROM `npc_trainer` WHERE `spell`= 26790;

UPDATE IGNORE `npc_trainer` SET `spell`= 28597 WHERE `spell`= 28596;
DELETE FROM `npc_trainer` WHERE `spell`= 28596;

UPDATE IGNORE `npc_trainer` SET `spell`= 28696 WHERE `spell`= 28695;
DELETE FROM `npc_trainer` WHERE `spell`= 28695;

UPDATE IGNORE `npc_trainer` SET `spell`= 28896 WHERE `spell`= 28894;
DELETE FROM `npc_trainer` WHERE `spell`= 28894;

UPDATE IGNORE `npc_trainer` SET `spell`= 28899 WHERE `spell`= 28895;
DELETE FROM `npc_trainer` WHERE `spell`= 28895;

UPDATE IGNORE `npc_trainer` SET `spell`= 28901 WHERE `spell`= 28897;
DELETE FROM `npc_trainer` WHERE `spell`= 28897;

UPDATE IGNORE `npc_trainer` SET `spell`= 29355 WHERE `spell`= 29354;
DELETE FROM `npc_trainer` WHERE `spell`= 29354;

UPDATE IGNORE `npc_trainer` SET `spell`= 29845 WHERE `spell`= 29844;
DELETE FROM `npc_trainer` WHERE `spell`= 29844;

UPDATE IGNORE `npc_trainer` SET `spell`= 30351 WHERE `spell`= 30350;
DELETE FROM `npc_trainer` WHERE `spell`= 30350;

UPDATE IGNORE `npc_trainer` SET `spell`= 32550 WHERE `spell`= 32549;
DELETE FROM `npc_trainer` WHERE `spell`= 32549;

UPDATE IGNORE `npc_trainer` SET `spell`= 32679 WHERE `spell`= 32678;
DELETE FROM `npc_trainer` WHERE `spell`= 32678;

UPDATE IGNORE `npc_trainer` SET `spell`= 45375 WHERE `spell`= 45357;
DELETE FROM `npc_trainer` WHERE `spell`= 45357;

UPDATE IGNORE `npc_trainer` SET `spell`= 45376 WHERE `spell`= 45358;
DELETE FROM `npc_trainer` WHERE `spell`= 45358;

UPDATE IGNORE `npc_trainer` SET `spell`= 45377 WHERE `spell`= 45359;
DELETE FROM `npc_trainer` WHERE `spell`= 45359;

UPDATE IGNORE `npc_trainer` SET `spell`= 45378 WHERE `spell`= 45360;
DELETE FROM `npc_trainer` WHERE `spell`= 45360;

UPDATE IGNORE `npc_trainer` SET `spell`= 45379 WHERE `spell`= 45361;
DELETE FROM `npc_trainer` WHERE `spell`= 45361;

UPDATE IGNORE `npc_trainer` SET `spell`= 45380 WHERE `spell`= 45363;
DELETE FROM `npc_trainer` WHERE `spell`= 45363;

UPDATE IGNORE `npc_trainer` SET `spell`= 50299 WHERE `spell`= 45542;
DELETE FROM `npc_trainer` WHERE `spell`= 45542;

UPDATE IGNORE `npc_trainer` SET `spell`= 50307 WHERE `spell`= 50305;
DELETE FROM `npc_trainer` WHERE `spell`= 50305;

UPDATE IGNORE `npc_trainer` SET `spell`= 50309 WHERE `spell`= 50310;
DELETE FROM `npc_trainer` WHERE `spell`= 50310;

UPDATE IGNORE `npc_trainer` SET `spell`= 51293 WHERE `spell`= 51294;
DELETE FROM `npc_trainer` WHERE `spell`= 51294;

UPDATE IGNORE `npc_trainer` SET `spell`= 51295 WHERE `spell`= 51296;
DELETE FROM `npc_trainer` WHERE `spell`= 51296;

UPDATE IGNORE `npc_trainer` SET `spell`= 51298 WHERE `spell`= 51300;
DELETE FROM `npc_trainer` WHERE `spell`= 51300;

UPDATE IGNORE `npc_trainer` SET `spell`= 51301 WHERE `spell`= 51302;
DELETE FROM `npc_trainer` WHERE `spell`= 51302;

UPDATE IGNORE `npc_trainer` SET `spell`= 51303 WHERE `spell`= 51304;
DELETE FROM `npc_trainer` WHERE `spell`= 51304;

UPDATE IGNORE `npc_trainer` SET `spell`= 51305 WHERE `spell`= 51306;
DELETE FROM `npc_trainer` WHERE `spell`= 51306;

UPDATE IGNORE `npc_trainer` SET `spell`= 51308 WHERE `spell`= 51309;
DELETE FROM `npc_trainer` WHERE `spell`= 51309;

UPDATE IGNORE `npc_trainer` SET `spell`= 51310 WHERE `spell`= 51311;
DELETE FROM `npc_trainer` WHERE `spell`= 51311;

UPDATE IGNORE `npc_trainer` SET `spell`= 51312 WHERE `spell`= 51313;
DELETE FROM `npc_trainer` WHERE `spell`= 51313;

UPDATE IGNORE `npc_trainer` SET `spell`= 54084 WHERE `spell`= 33095;
DELETE FROM `npc_trainer` WHERE `spell`= 33095;

-- More item updates
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=914;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=6971;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=8283;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=9457;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=10629;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=10633;
UPDATE `item_template` SET `StatsCount`=1 WHERE `entry`=11768;
UPDATE `item_template` SET `StatsCount`=1 WHERE `entry`=11787;
UPDATE `item_template` SET `StatsCount`=1 WHERE `entry`=18680;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=18873;
UPDATE `item_template` SET `class`=15,`unk0`=-1,`Flags`=131078,`Material`=8 WHERE `entry`=20393;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=23127;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=23540;
UPDATE `item_template` SET `StatsCount`=3,`stat_type3`=31 WHERE `entry`=27842;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=27903;
UPDATE `item_template` SET `StatsCount`=5 WHERE `entry`=28710;
UPDATE `item_template` SET `StatsCount`=5 WHERE `entry`=28713;
UPDATE `item_template` SET `StatsCount`=1 WHERE `entry`=29124;
UPDATE `item_template` SET `StatsCount`=3,`stat_type3`=32 WHERE `entry`=29355;
UPDATE `item_template` SET `StatsCount`=5,`stat_type5`=4,`stat_value5`=23,`spellid_1`=0 WHERE `entry`=30033;
UPDATE `item_template` SET `BuyPrice`=0 WHERE `entry`=31760;
UPDATE `item_template` SET `BuyPrice`=300000 WHERE `entry`=31890;
UPDATE `item_template` SET `BuyPrice`=300000 WHERE `entry`=31891;
UPDATE `item_template` SET `BuyPrice`=300000 WHERE `entry`=31907;
UPDATE `item_template` SET `BuyPrice`=300000 WHERE `entry`=31914;
UPDATE `item_template` SET `BuyPrice`=0 WHERE `entry`=32233;
UPDATE `item_template` SET `BuyPrice`=282518 WHERE `entry`=32340;
UPDATE `item_template` SET `BuyPrice`=105747 WHERE `entry`=32769;
UPDATE `item_template` SET `BuyPrice`=500 WHERE `entry`=33052;
UPDATE `item_template` SET `BuyPrice`=30101 WHERE `entry`=33358;
UPDATE `item_template` SET `BuyPrice`=45319 WHERE `entry`=33359;
UPDATE `item_template` SET `BuyPrice`=30320 WHERE `entry`=33360;
UPDATE `item_template` SET `BuyPrice`=30431 WHERE `entry`=33361;
UPDATE `item_template` SET `BuyPrice`=61085 WHERE `entry`=33362;
UPDATE `item_template` SET `BuyPrice`=45980 WHERE `entry`=33363;
UPDATE `item_template` SET `BuyPrice`=61524 WHERE `entry`=33364;
UPDATE `item_template` SET `BuyPrice`=34209 WHERE `entry`=33365;
UPDATE `item_template` SET `BuyPrice`=51498 WHERE `entry`=33366;
UPDATE `item_template` SET `BuyPrice`=32007 WHERE `entry`=33367;
UPDATE `item_template` SET `BuyPrice`=32127 WHERE `entry`=33368;
UPDATE `item_template` SET `BuyPrice`=64500 WHERE `entry`=33369;
UPDATE `item_template` SET `BuyPrice`=48559 WHERE `entry`=33370;
UPDATE `item_template` SET `BuyPrice`=64985 WHERE `entry`=33371;
UPDATE `item_template` SET `BuyPrice`=73587 WHERE `entry`=33372;
UPDATE `item_template` SET `BuyPrice`=36932 WHERE `entry`=33373;
UPDATE `item_template` SET `BuyPrice`=55607 WHERE `entry`=33374;
UPDATE `item_template` SET `BuyPrice`=37206 WHERE `entry`=33375;
UPDATE `item_template` SET `BuyPrice`=37345 WHERE `entry`=33376;
UPDATE `item_template` SET `BuyPrice`=74968 WHERE `entry`=33377;
UPDATE `item_template` SET `BuyPrice`=56434 WHERE `entry`=33378;
UPDATE `item_template` SET `BuyPrice`=83677 WHERE `entry`=33379;
UPDATE `item_template` SET `BuyPrice`=41992 WHERE `entry`=33380;
UPDATE `item_template` SET `BuyPrice`=63219 WHERE `entry`=33381;
UPDATE `item_template` SET `BuyPrice`=42300 WHERE `entry`=33382;
UPDATE `item_template` SET `BuyPrice`=42449 WHERE `entry`=33383;
UPDATE `item_template` SET `BuyPrice`=79086 WHERE `entry`=33384;
UPDATE `item_template` SET `BuyPrice`=59545 WHERE `entry`=33385;
UPDATE `item_template` SET `BuyPrice`=87629 WHERE `entry`=33390;
UPDATE `item_template` SET `BuyPrice`=43981 WHERE `entry`=33391;
UPDATE `item_template` SET `BuyPrice`=44314 WHERE `entry`=33393;
UPDATE `item_template` SET `BuyPrice`=44476 WHERE `entry`=33394;
UPDATE `item_template` SET `BuyPrice`=67514 WHERE `entry`=33396;
UPDATE `item_template` SET `BuyPrice`=99674 WHERE `entry`=33397;
UPDATE `item_template` SET `BuyPrice`=50016 WHERE `entry`=33398;
UPDATE `item_template` SET `BuyPrice`=75636 WHERE `entry`=33399;
UPDATE `item_template` SET `BuyPrice`=51708 WHERE `entry`=33400;
UPDATE `item_template` SET `BuyPrice`=51892 WHERE `entry`=33401;
UPDATE `item_template` SET `BuyPrice`=104144 WHERE `entry`=33402;
UPDATE `item_template` SET `BuyPrice`=50241 WHERE `entry`=33404;
UPDATE `item_template` SET `BuyPrice`=50627 WHERE `entry`=33406;
UPDATE `item_template` SET `BuyPrice`=101835 WHERE `entry`=33409;
UPDATE `item_template` SET `BuyPrice`=76522 WHERE `entry`=33410;
UPDATE `item_template` SET `BuyPrice`=57392 WHERE `entry`=33412;
UPDATE `item_template` SET `BuyPrice`=85750 WHERE `entry`=33413;
UPDATE `item_template` SET `BuyPrice`=57819 WHERE `entry`=33414;
UPDATE `item_template` SET `BuyPrice`=115413 WHERE `entry`=33415;
UPDATE `item_template` SET `BuyPrice`=59804 WHERE `entry`=33416;
UPDATE `item_template` SET `BuyPrice`=119348 WHERE `entry`=33417;
UPDATE `item_template` SET `BuyPrice`=89985 WHERE `entry`=33419;
UPDATE `item_template` SET `BuyPrice`=123821 WHERE `entry`=33422;
UPDATE `item_template` SET `BuyPrice`=165680 WHERE `entry`=33423;
UPDATE `item_template` SET `BuyPrice`=188016 WHERE `entry`=33424;
UPDATE `item_template` SET `BuyPrice`=150998 WHERE `entry`=33425;
UPDATE `item_template` SET `BuyPrice`=151583 WHERE `entry`=33426;
UPDATE `item_template` SET `BuyPrice`=114126 WHERE `entry`=33427;
UPDATE `item_template` SET `BuyPrice`=152738 WHERE `entry`=33428;
UPDATE `item_template` SET `BuyPrice`=192387 WHERE `entry`=33430;
UPDATE `item_template` SET `BuyPrice`=193118 WHERE `entry`=33431;
UPDATE `item_template` SET `BuyPrice`=75616 WHERE `entry`=33433;
UPDATE `item_template` SET `BuyPrice`=63244 WHERE `entry`=33434;
UPDATE `item_template` SET `BuyPrice`=88687 WHERE `entry`=33435;
UPDATE `item_template` SET `BuyPrice`=50959 WHERE `entry`=33436;
UPDATE `item_template` SET `BuyPrice`=69234 WHERE `entry`=33437;
UPDATE `item_template` SET `BuyPrice`=46323 WHERE `entry`=33438;
UPDATE `item_template` SET `BuyPrice`=58106 WHERE `entry`=33439;
UPDATE `item_template` SET `BuyPrice`=81485 WHERE `entry`=33440;
UPDATE `item_template` SET `BuyPrice`=8500 WHERE `entry`=33443;
UPDATE `item_template` SET `BuyPrice`=990 WHERE `entry`=33459;
UPDATE `item_template` SET `BuyPrice`=6940 WHERE `entry`=33548;
UPDATE `item_template` SET `BuyPrice`=6248 WHERE `entry`=33549;
UPDATE `item_template` SET `BuyPrice`=4740 WHERE `entry`=33550;
UPDATE `item_template` SET `BuyPrice`=5300 WHERE `entry`=33551;
UPDATE `item_template` SET `BuyPrice`=6248 WHERE `entry`=33553;
UPDATE `item_template` SET `BuyPrice`=6940 WHERE `entry`=33555;
UPDATE `item_template` SET `BuyPrice`=4740 WHERE `entry`=33556;
UPDATE `item_template` SET `BuyPrice`=5300 WHERE `entry`=33560;
UPDATE `item_template` SET `BuyPrice`=6248 WHERE `entry`=33561;
UPDATE `item_template` SET `BuyPrice`=6940 WHERE `entry`=33562;
UPDATE `item_template` SET `BuyPrice`=1800 WHERE `entry`=33567;
UPDATE `item_template` SET `BuyPrice`=6248 WHERE `entry`=33575;
UPDATE `item_template` SET `BuyPrice`=6940 WHERE `entry`=33576;
UPDATE `item_template` SET `BuyPrice`=8500 WHERE `entry`=33612;
UPDATE `item_template` SET `BuyPrice`=1950 WHERE `entry`=33631;
UPDATE `item_template` SET `BuyPrice`=9900 WHERE `entry`=33632;
UPDATE `item_template` SET `BuyPrice`=6248 WHERE `entry`=33638;
UPDATE `item_template` SET `BuyPrice`=6940 WHERE `entry`=33639;
UPDATE `item_template` SET `BuyPrice`=5 WHERE `entry`=34001;
UPDATE `item_template` SET `BuyPrice`=5 WHERE `entry`=34002;
UPDATE `item_template` SET `BuyPrice`=5 WHERE `entry`=34003;
UPDATE `item_template` SET `BuyPrice`=72000 WHERE `entry`=34053;
UPDATE `item_template` SET `BuyPrice`=40000 WHERE `entry`=34056;
UPDATE `item_template` SET `BuyPrice`=72000 WHERE `entry`=34142;
UPDATE `item_template` SET `BuyPrice`=72000 WHERE `entry`=34143;
UPDATE `item_template` SET `BuyPrice`=430707 WHERE `entry`=34192;
UPDATE `item_template` SET `BuyPrice`=293545 WHERE `entry`=34341;
UPDATE `item_template` SET `BuyPrice`=271093 WHERE `entry`=34352;
UPDATE `item_template` SET `BuyPrice`=282040 WHERE `entry`=34378;
UPDATE `item_template` SET `spellid_1`=45052,`spellcooldown_1`=300000,`spellid_3`=0,`spellcooldown_3`=-1 WHERE `entry`=34430;
UPDATE `item_template` SET `BuyPrice`=50000 WHERE `entry`=34498;
UPDATE `item_template` SET `BuyPrice`=800 WHERE `entry`=34597;
UPDATE `item_template` SET `BuyPrice`=120000 WHERE `entry`=34627;
UPDATE `item_template` SET `BuyPrice`=800 WHERE `entry`=34736;
UPDATE `item_template` SET `BuyPrice`=1200 WHERE `entry`=34748;
UPDATE `item_template` SET `BuyPrice`=1200 WHERE `entry`=34749;
UPDATE `item_template` SET `BuyPrice`=900 WHERE `entry`=34752;
UPDATE `item_template` SET `BuyPrice`=1600 WHERE `entry`=34754;
UPDATE `item_template` SET `BuyPrice`=1600 WHERE `entry`=34755;
UPDATE `item_template` SET `BuyPrice`=1600 WHERE `entry`=34756;
UPDATE `item_template` SET `BuyPrice`=1600 WHERE `entry`=34757;
UPDATE `item_template` SET `BuyPrice`=900 WHERE `entry`=34758;
UPDATE `item_template` SET `BuyPrice`=1200 WHERE `entry`=34759;
UPDATE `item_template` SET `BuyPrice`=1200 WHERE `entry`=34760;
UPDATE `item_template` SET `BuyPrice`=1200 WHERE `entry`=34761;
UPDATE `item_template` SET `BuyPrice`=1200 WHERE `entry`=34762;
UPDATE `item_template` SET `BuyPrice`=1200 WHERE `entry`=34763;
UPDATE `item_template` SET `BuyPrice`=1200 WHERE `entry`=34764;
UPDATE `item_template` SET `BuyPrice`=1200 WHERE `entry`=34765;
UPDATE `item_template` SET `BuyPrice`=2000 WHERE `entry`=34766;
UPDATE `item_template` SET `BuyPrice`=2000 WHERE `entry`=34767;
UPDATE `item_template` SET `BuyPrice`=2000 WHERE `entry`=34768;
UPDATE `item_template` SET `BuyPrice`=2000 WHERE `entry`=34769;
UPDATE `item_template` SET `StatsCount`=4,`stat_type3`=32 WHERE `entry`=35402;
UPDATE `item_template` SET `StatsCount`=4,`stat_type3`=32 WHERE `entry`=35403;
UPDATE `item_template` SET `StatsCount`=4 WHERE `entry`=35410;
UPDATE `item_template` SET `StatsCount`=5 WHERE `entry`=35413;
UPDATE `item_template` SET `StatsCount`=5 WHERE `entry`=35415;
UPDATE `item_template` SET `StatsCount`=0 WHERE `entry`=914;
UPDATE `item_template` SET `Material`=2 WHERE `entry`=2500;
UPDATE `item_template` SET `subclass`=11 WHERE `entry`=2693;
UPDATE `item_template` SET `subclass`=11 WHERE `entry`=2929;
UPDATE `item_template` SET `subclass`=11 WHERE `entry`=2932;
UPDATE `item_template` SET `class`=6,`subclass`=3,`Material`=2 WHERE `entry`=3034;
UPDATE `item_template` SET `Material`=5 WHERE `entry`=3536;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=4613;
UPDATE `item_template` SET `class`=15,`subclass`=0 WHERE `entry`=4959;
UPDATE `item_template` SET `subclass`=8 WHERE `entry`=5013;
UPDATE `item_template` SET `class`=15,`subclass`=1 WHERE `entry`=5024;
UPDATE `item_template` SET `class`=15 WHERE `entry`=5105;
UPDATE `item_template` SET `subclass`=1,`Material`=7 WHERE `entry`=5106;
UPDATE `item_template` SET `class`=0,`subclass`=8,`Material`=1 WHERE `entry`=5229;
UPDATE `item_template` SET `class`=15,`subclass`=1 WHERE `entry`=5517;
UPDATE `item_template` SET `class`=15,`subclass`=1 WHERE `entry`=5518;
UPDATE `item_template` SET `class`=15,`Material`=-1 WHERE `entry`=5562;
UPDATE `item_template` SET `class`=15,`Material`=-1 WHERE `entry`=5563;
UPDATE `item_template` SET `subclass`=8,`Material`=-1 WHERE `entry`=5823;
UPDATE `item_template` SET `subclass`=8 WHERE `entry`=5859;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=5874;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=5875;
UPDATE `item_template` SET `subclass`=8 WHERE `entry`=5878;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=6075;
UPDATE `item_template` SET `subclass`=8 WHERE `entry`=6183;
UPDATE `item_template` SET `subclass`=12 WHERE `entry`=6216;
UPDATE `item_template` SET `subclass`=8 WHERE `entry`=6345;
UPDATE `item_template` SET `subclass`=12 WHERE `entry`=6374;
UPDATE `item_template` SET `subclass`=8 WHERE `entry`=6376;
UPDATE `item_template` SET `subclass`=1 WHERE `entry`=6834;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=6891;
UPDATE `item_template` SET `StatsCount`=0 WHERE `entry`=6971;
UPDATE `item_template` SET `class`=8 WHERE `entry`=6987;
UPDATE `item_template` SET `subclass`=3 WHERE `entry`=7192;
UPDATE `item_template` SET `Material`=7 WHERE `entry`=7996;
UPDATE `item_template` SET `class`=15,`subclass`=1 WHERE `entry`=8147;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=8426;
UPDATE `item_template` SET `class`=15,`Material`=-1 WHERE `entry`=8630;
UPDATE `item_template` SET `class`=15,`Material`=-1 WHERE `entry`=8633;
UPDATE `item_template` SET `class`=9,`subclass`=0,`Material`=-1 WHERE `entry`=8840;
UPDATE `item_template` SET `class`=12 WHERE `entry`=9443;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=9572;
UPDATE `item_template` SET `class`=2,`subclass`=14,`Material`=1 WHERE `entry`=12866;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=12947;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=13326;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=13328;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=13329;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=13887;
UPDATE `item_template` SET `Material`=7 WHERE `entry`=13936;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=15754;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=16999;
UPDATE `item_template` SET `class`=15,`subclass`=1 WHERE `entry`=17019;
UPDATE `item_template` SET `class`=15,`subclass`=1 WHERE `entry`=17024;
UPDATE `item_template` SET `class`=15,`subclass`=1 WHERE `entry`=17027;
UPDATE `item_template` SET `subclass`=11 WHERE `entry`=17968;
UPDATE `item_template` SET `class`=2,`subclass`=1,`Material`=1 WHERE `entry`=18002;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=18565;
UPDATE `item_template` SET `Flags`=6 WHERE `entry`=20393;
UPDATE `item_template` SET `subclass`=4 WHERE `entry`=20957;
UPDATE `item_template` SET `class`=15,`subclass`=4,`Material`=-1 WHERE `entry`=21162;
UPDATE `item_template` SET `class`=15,`subclass`=4,`Material`=-1 WHERE `entry`=21164;
UPDATE `item_template` SET `class`=15,`subclass`=4,`Material`=-1 WHERE `entry`=21243;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=21535;
UPDATE `item_template` SET `subclass`=11 WHERE `entry`=21878;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=21979;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=21980;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22154;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22157;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22158;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22159;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22160;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22161;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22162;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22164;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22165;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22166;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22167;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22168;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22169;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22170;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22171;
UPDATE `item_template` SET `class`=15,`subclass`=3 WHERE `entry`=22172;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=22737;
UPDATE `item_template` SET `subclass`=2,`Material`=2 WHERE `entry`=23051;
UPDATE `item_template` SET `subclass`=1 WHERE `entry`=23578;
UPDATE `item_template` SET `subclass`=1 WHERE `entry`=23579;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=23854;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=23855;
UPDATE `item_template` SET `subclass`=11 WHERE `entry`=24288;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=30360;
UPDATE `item_template` SET `unk0`=-1 WHERE `entry`=32760;
UPDATE `item_template` SET `unk0`=-1 WHERE `entry`=34000;
UPDATE `item_template` SET `Material`=-1 WHERE `entry`=43589;

-- New gameobjects
INSERT IGNORE INTO `gameobject_template` VALUES (187680,5,7640,'Farseer Grimwalker\'s Remains','',0,0,1.0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192151,22,8234,'Lovely Cake','',0,0,1.0,56254,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193969,22,8533,'Bottle of Dalaran White','',0,0,1.0,61048,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193970,22,8532,'Bottle of Aged Dalaran Red','',0,0,1.0,61051,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193975,22,8531,'Cask of Aged Dalaran Red','',0,0,0.8,61051,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193971,22,8530,'Cask of Dalaran White','',0,0,0.8,61048,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (187236,2,5254,'Winter Veil Gift','Opening',0,0,1.0,43,8417,0,6798,0,0,21400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193206,22,4395,'Portal to Orgrimmar','',0,0,2.0,59064,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193216,5,8397,'Orc Tent','',0,0,2.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193217,5,8421,'Orc Tent','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193219,5,8423,'Orc Tent','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193218,5,8422,'Orc Tent','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193215,5,8184,'Orc Tent','',0,0,2.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193425,22,4398,'Portal to Undercity','',0,0,2.0,59439,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193447,5,8451,'','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193440,5,8451,'','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193449,5,8155,'','',0,0,1.83,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193450,5,8155,'','',0,0,1.83,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193451,5,8155,'','',0,0,1.83,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193452,5,4852,'','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193453,5,8202,'','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193454,5,4452,'','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193455,5,4251,'','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193441,5,8451,'','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193442,5,8451,'','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193443,5,8451,'','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193444,5,8451,'','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193445,5,8451,'','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193446,5,8451,'','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193448,5,8155,'','',0,0,1.83,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193427,5,4395,'Portal to Orgrimmar','',0,0,4.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193456,5,4452,'','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193629,0,2230,'Throne Room Cave In','',0,0,1.0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193628,0,2230,'Throne Room Cave In','',0,0,1.5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193414,5,7470,'Plague Barrel [Wrath Gate Both]','',0,0,1.0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193415,5,7266,'Spike [Wrath Gate Both]','',0,0,4.0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (194004,5,8155,'Horde Banner','',0,0,1.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (194002,5,8155,'Horde Banner','',0,0,2.0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192865,10,8128,'The Schools of Arcane Magic - Illusion','',0,0,1.0,0,0,0,0,0,0,0,3379,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192378,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192379,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192363,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192372,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192355,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192358,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192354,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192834,10,7967,'Titan Relic','Activating',0,0,0.7,1599,0,19982,196608,0,1,0,0,0,0,0,1,0,1,27700,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192285,5,5652,'Horde Banner','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193160,5,8405,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193161,5,8406,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192371,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192359,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192338,5,8257,'Horde Banner','',0,0,4.22,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192284,5,5652,'Horde Banner','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192339,5,8257,'Horde Banner','',0,0,4.22,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193139,5,8397,'','',0,0,0.83,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193140,5,1988,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193141,5,1988,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193142,5,458,'','',0,0,0.85,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193143,5,6037,'','',0,0,0.75,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193144,5,6037,'','',0,0,0.75,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193145,5,7757,'','',0,0,1.56,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192362,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193146,5,6153,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192350,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192351,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193127,5,8397,'','',0,0,0.83,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192366,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192367,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192368,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192356,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192488,5,8257,'Wintergrasp Horde Banner','',0,0,4.0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192369,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192364,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192370,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192352,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192349,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192353,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192254,5,5652,'Horde Banner','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192255,5,5652,'Horde Banner','',0,0,1.0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192626,29,6834,'Wintergrasp NE Factory Banner','',0,0,1.0,80,11515,3501,3502,0,0,20785,20786,19610,19609,0,0,80,3508,1,3,60,120,1,0,100,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192336,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192357,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192375,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192373,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192374,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192376,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192360,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193121,5,8396,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193119,5,8396,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193120,5,8396,'','',0,0,1.61,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193122,5,6449,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193123,5,6449,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193110,5,6449,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193111,5,6449,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193112,5,6449,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193113,5,6449,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193114,5,6449,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193115,5,6449,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193116,5,6449,'','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193117,5,8395,'','',0,0,1.36,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193118,5,8395,'','',0,0,0.99,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192361,5,8257,'Horde Banner','',0,0,2.42,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190475,29,6834,'Wintergrasp NE Factory Banner','',0,0,1.0,80,11515,3501,3502,0,0,20785,20786,19610,19609,0,0,80,3508,1,3,60,120,1,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192290,5,5652,'Horde Banner','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192461,5,8257,'Horde Banner','',0,0,3.8,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192460,5,8257,'Horde Banner','',0,0,3.8,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192711,10,8051,'The Schools of Arcane Magic - Divination','',0,0,1.0,0,0,0,0,0,0,0,3370,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193991,8,7786,'Altar of the Ebon Depths','',0,0,4.0,1591,10,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190643,3,334,'Thunderbrew\'s Jungle Punch','',0,0,1.0,1691,24742,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190625,3,7965,'Banana Bunch','',0,0,2.0,1691,24733,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190624,3,435,'Orange','',0,0,2.0,1691,24734,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190503,5,7927,'Arranged Crystal Formation','',0,0,0.6,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190502,10,7927,'Arranged Crystal Formation','',0,0,1.4,0,12537,18474,196608,0,1,0,0,0,0,51156,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190561,3,7841,'Glowing Gem','Retrieving',0,0,1.0,1691,24387,30,1,0,0,0,0,0,0,0,0,0,0,23645,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190558,3,7942,'Shining Crystal','Retrieving',0,0,0.5,1690,24387,0,1,0,0,0,0,0,0,0,0,0,0,23645,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190562,3,7944,'Polished Platter','Retrieving',0,0,1.0,1691,24387,30,1,0,0,0,0,0,0,0,0,0,0,23645,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190563,3,2614,'Sparkling Treasure','Retrieving',0,0,1.0,1691,24387,30,1,0,0,0,0,0,0,0,0,0,0,23645,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190560,3,7943,'Glinting Armor','Retrieving',0,0,1.0,1691,24387,30,1,0,0,0,0,0,0,0,0,0,0,23645,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190601,5,7957,'Broodmother Slivina\'s Skull','',0,0,1.0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190696,3,323,'Mosswalker Possesions','',0,0,0.8,1691,24750,0,1,0,0,0,0,12580,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193056,22,8333,'Small Feast','',0,0,0.5,58475,50,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193457,6,4452,'Lava Bomb','',0,0,1.0,0,80,5,59470,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193968,22,8532,'Bottle of Dalaran Red','',0,0,1.0,61046,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (190487,29,6834,'Wintergrasp NW Factory Banner','',0,0,1.0,80,11515,3501,3502,0,0,20787,20788,19612,19611,0,0,80,3508,1,5,60,120,1,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192283,5,5652,'Horde Banner','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192434,5,8257,'Horde Banner','',0,0,3.8,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192280,5,5652,'Horde Banner','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192435,5,8257,'Horde Banner','',0,0,3.8,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192289,5,5652,'Horde Banner','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192459,5,8257,'Horde Banner','',0,0,3.8,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192273,5,5651,'Alliance Banner','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192418,5,8256,'Alliance Banner','',0,0,4.04,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192417,5,8256,'Alliance Banner','',0,0,4.04,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192416,5,8256,'Alliance Banner','',0,0,4.04,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192458,5,8257,'Horde Banner','',0,0,3.8,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (193169,22,7359,'Soulwell','',0,0,1.0,58890,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192627,29,6834,'Wintergrasp NW Factory Banner','',0,0,1.0,80,11515,3501,3502,0,0,20787,20788,19612,19611,0,0,80,3508,1,5,60,120,1,0,100,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192269,5,5651,'Horde Banner','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192429,5,8256,'Alliance Banner','',0,0,4.04,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192430,5,8256,'Alliance Banner','',0,0,4.04,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192414,5,8256,'Alliance Banner','',0,0,4.04,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192431,5,8256,'Alliance Banner','',0,0,4.04,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192277,5,5651,'Alliance Banner','',0,0,1.0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192496,5,1308,'Red aura, short','',0,0,1.5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
INSERT IGNORE INTO `gameobject_template` VALUES (192829,10,7967,'Titan Relic','Activating',0,0,0.7,1599,0,19982,196608,0,1,0,0,0,0,0,1,0,1,27700,0,0,0,0,0,0,0,0,0,'');

-- creatures to wdb values. again :d
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=2707;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=3057;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3503;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=3516;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=4132;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=5226;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=5454;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=5460;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=6553;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=6582;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=6584;
UPDATE `creature_template` SET `name`='UNUSED [PH] Flamewreath Guard ' WHERE `entry`=10265;
UPDATE `creature_template` SET `name`='High Commander Lynore Windstryke ' WHERE `entry`=15866;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=16063;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=16064;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=16065;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16067;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16124;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16125;
UPDATE `creature_template` SET `type_flags`=2120 WHERE `entry`=16126;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16127;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=16128;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=16136;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=16142;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16145;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16146;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16148;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16150;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16154;
UPDATE `creature_template` SET `type_flags`=2120 WHERE `entry`=16163;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16164;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16165;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16167;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16168;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16193;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16194;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16215;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16216;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16236;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16243;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16244;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16297;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16360;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=16375;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16390;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=16421;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16427;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16428;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16429;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16441;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16447;
UPDATE `creature_template` SET `type_flags`=9 WHERE `entry`=16453;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16505;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16506;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16570;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16573;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=16697;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16698;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=16775;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=16776;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=16777;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=16778;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=16802;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16803;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16861;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16981;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16983;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16984;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=17055;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=17669;
UPDATE `creature_template` SET `type_flags`=9 WHERE `entry`=17732;
UPDATE `creature_template` SET `type_flags`=4172 WHERE `entry`=17852;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=18059;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=18133;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=18283;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=19207;
UPDATE `creature_template` SET `type_flags`=4110 WHERE `entry`=19556;
UPDATE `creature_template` SET `name`='Qiff ' WHERE `entry`=19575;
UPDATE `creature_template` SET `type_flags`=9 WHERE `entry`=19632;
UPDATE `creature_template` SET `type_flags`=9 WHERE `entry`=20174;
UPDATE `creature_template` SET `type_flags`=9 WHERE `entry`=20175;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=20197;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=20198;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=20574;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=20611;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=20682;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=20752;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=20931;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=20932;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=21033;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=21372;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=21373;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=21381;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=21470;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=21582;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=21839;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=22136;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=22182;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=22336;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=23014;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=23041;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=23163;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=23539;
UPDATE `creature_template` SET `type_flags`=2056 WHERE `entry`=23556;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23561;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23562;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23563;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=23575;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=23771;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=23792;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=23856;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=23857;
UPDATE `creature_template` SET `PetSpellDataId`=13070 WHERE `entry`=23929;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=23931;
UPDATE `creature_template` SET `PetSpellDataId`=12669 WHERE `entry`=23945;
UPDATE `creature_template` SET `PetSpellDataId`=13462 WHERE `entry`=23958;
UPDATE `creature_template` SET `PetSpellDataId`=13463 WHERE `entry`=23959;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=23961;
UPDATE `creature_template` SET `name`='Deathstalker Razael ' WHERE `entry`=23998;
UPDATE `creature_template` SET `PetSpellDataId`=13464 WHERE `entry`=24026;
UPDATE `creature_template` SET `PetSpellDataId`=13469 WHERE `entry`=24076;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=24095;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=24101;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=24119;
UPDATE `creature_template` SET `PetSpellDataId`=13470 WHERE `entry`=24128;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=24132;
UPDATE `creature_template` SET `type_flags`=2056 WHERE `entry`=24169;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=24170;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=24200;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=24201;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=24206;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=24214;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=24215;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=24230;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=24232;
UPDATE `creature_template` SET `type_flags`=2056 WHERE `entry`=24237;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=24248;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=24269;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=24277;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=13067 WHERE `entry`=24287;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=24321;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=24326;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=24387;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=24446;
UPDATE `creature_template` SET `type_flags`=2056 WHERE `entry`=24447;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=24465;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=24466;
UPDATE `creature_template` SET `PetSpellDataId`=13468 WHERE `entry`=24475;
UPDATE `creature_template` SET `PetSpellDataId`=13069 WHERE `entry`=24478;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=13071 WHERE `entry`=24479;
UPDATE `creature_template` SET `type_flags`=2056 WHERE `entry`=24533;
UPDATE `creature_template` SET `PetSpellDataId`=13079 WHERE `entry`=24547;
UPDATE `creature_template` SET `PetSpellDataId`=13078 WHERE `entry`=24633;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=24651;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=24655;
UPDATE `creature_template` SET `PetSpellDataId`=13465 WHERE `entry`=24677;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=24712;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=24721;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=8298 WHERE `entry`=24726;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=24731;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=24756;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=24783;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=24792;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=24804;
UPDATE `creature_template` SET `type_flags`=2080 WHERE `entry`=24849;
UPDATE `creature_template` SET `type_flags`=32768 WHERE `entry`=24869;
UPDATE `creature_template` SET `type_flags`=32768 WHERE `entry`=24870;
UPDATE `creature_template` SET `type_flags`=32768 WHERE `entry`=24878;
UPDATE `creature_template` SET `type_flags`=16 WHERE `entry`=24912;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=25006;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=25237;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25252;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25254;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25255;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25269;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=25286;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=25289;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25293;
UPDATE `creature_template` SET `type_flags`=4612 WHERE `entry`=25323;
UPDATE `creature_template` SET `type_flags`=128 WHERE `entry`=25328;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=25330;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=25335;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=25337;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=25338;
UPDATE `creature_template` SET `type_flags`=1152 WHERE `entry`=25340;
UPDATE `creature_template` SET `type_flags`=1152 WHERE `entry`=25341;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25388;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25389;
UPDATE `creature_template` SET `type_flags`=16 WHERE `entry`=25391;
UPDATE `creature_template` SET `type_flags`=4612 WHERE `entry`=25406;
UPDATE `creature_template` SET `type_flags`=4612 WHERE `entry`=25410;
UPDATE `creature_template` SET `type_flags`=4612 WHERE `entry`=25411;
UPDATE `creature_template` SET `type_flags`=4612 WHERE `entry`=25412;
UPDATE `creature_template` SET `type_flags`=4612 WHERE `entry`=25413;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=25414;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=25420;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=25421;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=25422;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25423;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25424;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=25440;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=25446;
UPDATE `creature_template` SET `type_flags`=2049 WHERE `entry`=25447;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=25453;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25458;
UPDATE `creature_template` SET `PetSpellDataId`=13099 WHERE `entry`=25464;
UPDATE `creature_template` SET `PetSpellDataId`=13072 WHERE `entry`=25481;
UPDATE `creature_template` SET `PetSpellDataId`=13466 WHERE `entry`=25482;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=13110 WHERE `entry`=25498;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25505;
UPDATE `creature_template` SET `type_flags`=1152 WHERE `entry`=25526;
UPDATE `creature_template` SET `type_flags`=1152 WHERE `entry`=25527;
UPDATE `creature_template` SET `type_flags`=1152 WHERE `entry`=25528;
UPDATE `creature_template` SET `type_flags`=1152 WHERE `entry`=25529;
UPDATE `creature_template` SET `type_flags`=1152 WHERE `entry`=25530;
UPDATE `creature_template` SET `type_flags`=1152 WHERE `entry`=25531;
UPDATE `creature_template` SET `type_flags`=1152 WHERE `entry`=25532;
UPDATE `creature_template` SET `type_flags`=1152 WHERE `entry`=25533;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25581;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=25589;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=25624;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25654;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=25674;
UPDATE `creature_template` SET `PetSpellDataId`=13467 WHERE `entry`=25675;
UPDATE `creature_template` SET `type_flags`=256 WHERE `entry`=25707;
UPDATE `creature_template` SET `type_flags`=256 WHERE `entry`=25709;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=25712;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=25713;
UPDATE `creature_template` SET `PetSpellDataId`=9111 WHERE `entry`=25738;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=25808;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25815;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=25818;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=25819;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=25963;
UPDATE `creature_template` SET `type_flags`=128 WHERE `entry`=25984;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=26047;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=26082;
UPDATE `creature_template` SET `type_flags`=16 WHERE `entry`=26086;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=26128;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26165;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=26167;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=26183;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=26227;
UPDATE `creature_template` SET `name`='[PH] Dragonblight Ancient ',`type_flags`=256 WHERE `entry`=26274;
UPDATE `creature_template` SET `type_flags`=256 WHERE `entry`=26313;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=26376;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=26432;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=26433;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=26445;
UPDATE `creature_template` SET `PetSpellDataId`=11586 WHERE `entry`=26446;
UPDATE `creature_template` SET `PetSpellDataId`=13473 WHERE `entry`=26482;
UPDATE `creature_template` SET `PetSpellDataId`=13472 WHERE `entry`=26483;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26495;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=26499;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=26508;
UPDATE `creature_template` SET `PetSpellDataId`=7264 WHERE `entry`=26519;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=26521;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=26529;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=26530;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=26532;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=26533;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=26586;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=26617;
UPDATE `creature_template` SET `type_flags`=128 WHERE `entry`=26620;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=26622;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=13148 WHERE `entry`=26625;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26627;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=26628;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=26630;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=26631;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=26632;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=26641;
UPDATE `creature_template` SET `PetSpellDataId`=13474 WHERE `entry`=26643;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=26648;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=26654;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26668;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=13461 WHERE `entry`=26672;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=26683;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=26684;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=26685;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=26686;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=26687;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26693;
UPDATE `creature_template` SET `type_flags`=1152 WHERE `entry`=26699;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=26716;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=26722;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=26723;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26727;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26728;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26729;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26730;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=26731;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26734;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26735;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26737;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26746;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=26761;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=26763;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=26772;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=26773;
UPDATE `creature_template` SET `type_flags`=264 WHERE `entry`=26782;
UPDATE `creature_template` SET `type_flags`=264 WHERE `entry`=26792;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26793;
UPDATE `creature_template` SET `type_flags`=584 WHERE `entry`=26794;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=26796;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26799;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26800;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26801;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26802;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26803;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26805;
UPDATE `creature_template` SET `type_flags`=128 WHERE `entry`=26809;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=26831;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=26859;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=26861;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=26870;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=26887;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=26894;
UPDATE `creature_template` SET `type_flags`=32768 WHERE `entry`=26897;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=26902;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=26917;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26928;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26929;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26930;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=26931;
UPDATE `creature_template` SET `type_flags`=2052 WHERE `entry`=26967;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=26970;
UPDATE `creature_template` SET `name`='Warden Jodi Moonsong ' WHERE `entry`=26973;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27036;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27038;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27039;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27040;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27041;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27042;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27043;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27044;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27045;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27103;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27104;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=27109;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27111;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27112;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27128;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27136;
UPDATE `creature_template` SET `type_flags`=6144 WHERE `entry`=27155;
UPDATE `creature_template` SET `type_flags`=6144 WHERE `entry`=27156;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27158;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27159;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27162;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27164;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27168;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=27199;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=27200;
UPDATE `creature_template` SET `type_flags`=1026 WHERE `entry`=27201;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=27210;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=27214;
UPDATE `creature_template` SET `subname`='Assured Quality  ' WHERE `entry`=27231;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27253;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=27268;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27276;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27280;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27296;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=27303;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=27304;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27306;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=27307;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=27308;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=27309;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=27310;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=27311;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=27312;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27314;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27315;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27316;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27317;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27318;
UPDATE `creature_template` SET `PetSpellDataId`=13471 WHERE `entry`=27329;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27336;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27338;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27339;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27341;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27345;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27353;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27359;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27361;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27386;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=27389;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27392;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27394;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=27396;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27419;
UPDATE `creature_template` SET `PetSpellDataId`=13100 WHERE `entry`=27421;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27426;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27427;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27428;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27429;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27444;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27445;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27446;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=27447;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=27453;
UPDATE `creature_template` SET `type_flags`=6 WHERE `entry`=27455;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=27465;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=27466;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=27476;
UPDATE `creature_template` SET `type_flags`=6 WHERE `entry`=27480;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=27485;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=27492;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=27504;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27516;
UPDATE `creature_template` SET `type_flags`=4104 WHERE `entry`=27537;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27543;
UPDATE `creature_template` SET `type_flags`=6144 WHERE `entry`=27544;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27568;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27577;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27633;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27635;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27636;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27638;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27639;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27640;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27641;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27642;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27644;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27645;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27647;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=27648;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=27649;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27650;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27651;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27653;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=27654;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=27655;
UPDATE `creature_template` SET `type_flags`=96 WHERE `entry`=27656;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27657;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27658;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27659;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=27660;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27662;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27663;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27671;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27674;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=27692;
UPDATE `creature_template` SET `name`='The Prophet Tharon\'ja ',`type_flags`=72 WHERE `entry`=27696;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27713;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27729;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27731;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27732;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27733;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27734;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27736;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27742;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27743;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27744;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=27748;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=27755;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=27756;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=27766;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=27767;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=27769;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=27770;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=27771;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=27772;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=27773;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=27774;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=27775;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=27776;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=27778;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=27779;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=27781;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27788;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27798;
UPDATE `creature_template` SET `type_flags`=4224 WHERE `entry`=27833;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=27837;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=27838;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=27850;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27857;
UPDATE `creature_template` SET `type_flags`=4100 WHERE `entry`=27858;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=27860;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27862;
UPDATE `creature_template` SET `type_flags`=4100 WHERE `entry`=27872;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=27873;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27874;
UPDATE `creature_template` SET `type_flags`=262184 WHERE `entry`=27883;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27887;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27889;
UPDATE `creature_template` SET `type_flags`=262176 WHERE `entry`=27894;
UPDATE `creature_template` SET `type_flags`=5120 WHERE `entry`=27899;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27909;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27910;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=27925;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=12993 WHERE `entry`=27946;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27948;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=27950;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=27951;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27956;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27959;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27960;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27961;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27962;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27963;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27964;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27965;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27966;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=27969;
UPDATE `creature_template` SET `type_flags`=32776 WHERE `entry`=27970;
UPDATE `creature_template` SET `type_flags`=32776 WHERE `entry`=27971;
UPDATE `creature_template` SET `type_flags`=32776 WHERE `entry`=27972;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27973;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27974;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=27975;
UPDATE `creature_template` SET `type_flags`=584 WHERE `entry`=27977;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=27978;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27981;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=27990;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27995;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=27996;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=27999;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=28012;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28013;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28021;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=28030;
UPDATE `creature_template` SET `type_flags`=6144 WHERE `entry`=28063;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28065;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28066;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28070;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=28087;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=28089;
UPDATE `creature_template` SET `type_flags`=393256 WHERE `entry`=28094;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28144;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28153;
UPDATE `creature_template` SET `type_flags`=128 WHERE `entry`=28162;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28164;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28166;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28167;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28169;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28171;
UPDATE `creature_template` SET `type_flags`=16 WHERE `entry`=28177;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=28179;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28183;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=28190;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28194;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28199;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28200;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28201;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=28221;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28224;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28229;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28231;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=28233;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28236;
UPDATE `creature_template` SET `type_flags`=1032 WHERE `entry`=28239;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28249;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28260;
UPDATE `creature_template` SET `type_flags`=512 WHERE `entry`=28271;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28276;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28279;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28289;
UPDATE `creature_template` SET `type_flags`=393256 WHERE `entry`=28312;
UPDATE `creature_template` SET `type_flags`=262184 WHERE `entry`=28319;
UPDATE `creature_template` SET `type_flags`=256 WHERE `entry`=28323;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=28342;
UPDATE `creature_template` SET `type_flags`=262184 WHERE `entry`=28366;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28370;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28384;
UPDATE `creature_template` SET `type_flags`=512 WHERE `entry`=28387;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=28401;
UPDATE `creature_template` SET `type_flags`=512 WHERE `entry`=28411;
UPDATE `creature_template` SET `type_flags`=1032 WHERE `entry`=28413;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=28416;
UPDATE `creature_template` SET `type_flags`=1032 WHERE `entry`=28452;
UPDATE `creature_template` SET `type_flags`=128 WHERE `entry`=28464;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28473;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=28498;
UPDATE `creature_template` SET `type_flags`=44 WHERE `entry`=28499;
UPDATE `creature_template` SET `type_flags`=1028 WHERE `entry`=28514;
UPDATE `creature_template` SET `type_flags`=1028 WHERE `entry`=28515;
UPDATE `creature_template` SET `type_flags`=1028 WHERE `entry`=28516;
UPDATE `creature_template` SET `type_flags`=1028 WHERE `entry`=28517;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28523;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=28546;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=28561;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28578;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28579;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28580;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28581;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28582;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28583;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28584;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28585;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=28586;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=28587;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28591;
UPDATE `creature_template` SET `type_flags`=512 WHERE `entry`=28597;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28611;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28622;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28627;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28638;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28643;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28655;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28670;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=28672;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28674;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28675;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28676;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28677;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28678;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28679;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28680;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28681;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28682;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=28684;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28685;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28686;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28687;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28689;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28690;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28693;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28694;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28695;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28696;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28697;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28698;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28699;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28700;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28701;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28702;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28703;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28704;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28705;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28706;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28707;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28708;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28713;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28714;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28715;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28716;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28718;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28719;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28721;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28722;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28723;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28724;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28725;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28726;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28727;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28728;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28729;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=28730;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28731;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28737;
UPDATE `creature_template` SET `type_flags`=512 WHERE `entry`=28749;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28753;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28755;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28757;
UPDATE `creature_template` SET `PetSpellDataId`=12904 WHERE `entry`=28766;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28768;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28774;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28776;
UPDATE `creature_template` SET `type_flags`=131080 WHERE `entry`=28781;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28787;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28791;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28794;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28799;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28801;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28806;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28807;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28809;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28810;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28811;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28812;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28818;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=28826;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28828;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28831;
UPDATE `creature_template` SET `type_flags`=32768 WHERE `entry`=28835;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28838;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28839;
UPDATE `creature_template` SET `type_flags`=512 WHERE `entry`=28840;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28852;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28853;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=28859;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=28860;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28863;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28864;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28868;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28870;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28876;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28878;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28898;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=28904;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=28907;
UPDATE `creature_template` SET `type_flags`=2056 WHERE `entry`=28909;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=28910;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=28911;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28912;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28920;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=28921;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28922;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=28923;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28927;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28935;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28936;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28945;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28946;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=28951;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28961;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=28964;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=28965;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=28996;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=29000;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29010;
UPDATE `creature_template` SET `type_flags`=1028 WHERE `entry`=29021;
UPDATE `creature_template` SET `type_flags`=1028 WHERE `entry`=29022;
UPDATE `creature_template` SET `type_flags`=1028 WHERE `entry`=29023;
UPDATE `creature_template` SET `type_flags`=1028 WHERE `entry`=29024;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29028;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=29033;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=29034;
UPDATE `creature_template` SET `type_flags`=1032 WHERE `entry`=29038;
UPDATE `creature_template` SET `type_flags`=4140 WHERE `entry`=29050;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29060;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=29075;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=29101;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=29106;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=29107;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=29108;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=29109;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=29110;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29115;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29116;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=29120;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=29135;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29136;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29139;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29143;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29145;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=29165;
UPDATE `creature_template` SET `type_flags`=2092 WHERE `entry`=29173;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29174;
UPDATE `creature_template` SET `type_flags`=44 WHERE `entry`=29175;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=29176;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=29177;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=29178;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=29179;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=29180;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=29181;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=29182;
UPDATE `creature_template` SET `type_flags`=44 WHERE `entry`=29183;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29186;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29190;
UPDATE `creature_template` SET `type_flags`=6152 WHERE `entry`=29199;
UPDATE `creature_template` SET `type_flags`=6152 WHERE `entry`=29200;
UPDATE `creature_template` SET `type_flags`=6152 WHERE `entry`=29204;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29206;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29225;
UPDATE `creature_template` SET `type_flags`=44 WHERE `entry`=29227;
UPDATE `creature_template` SET `type_flags`=2088 WHERE `entry`=29228;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29229;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29240;
UPDATE `creature_template` SET `type_flags`=73,`PetSpellDataId`=13151 WHERE `entry`=29241;
UPDATE `creature_template` SET `type_flags`=73,`PetSpellDataId`=13153 WHERE `entry`=29242;
UPDATE `creature_template` SET `type_flags`=73,`PetSpellDataId`=13150 WHERE `entry`=29243;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29247;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29248;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29249;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29256;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=29259;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29261;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29266;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29267;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29268;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29273;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29274;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29278;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29279;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29282;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29283;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29286;
UPDATE `creature_template` SET `type_flags`=512 WHERE `entry`=29303;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29304;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29305;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29306;
UPDATE `creature_template` SET `type_flags`=584 WHERE `entry`=29307;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29308;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29309;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29310;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29311;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29312;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29313;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29314;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29315;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29316;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29317;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=13473 WHERE `entry`=29319;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29321;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29324;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=29329;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=29333;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=29334;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29339;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=29344;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29346;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29347;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29348;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29353;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=29354;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29355;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29356;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=29357;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29359;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29362;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29363;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29364;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29365;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29367;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29371;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29373;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29391;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=29393;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=29394;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29395;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29398;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29406;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29417;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29437;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29438;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29439;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29446;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29447;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29448;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=29456;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29478;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29505;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29506;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29507;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29508;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29509;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29510;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29511;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29512;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29513;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29514;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29522;
UPDATE `creature_template` SET `type_flags`=1152 WHERE `entry`=29524;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29530;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29532;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29542;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29550;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29571;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=29573;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29574;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29575;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29576;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29577;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29579;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=29584;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=29585;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29601;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29603;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29608;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29609;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29611;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29612;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29613;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29615;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29620;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=29621;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29627;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29628;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29629;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29631;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29632;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29633;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29634;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29635;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29636;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29640;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29641;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29645;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29655;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29681;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29687;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29688;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29689;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29690;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29692;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=29698;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29701;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29716;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29718;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29733;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=29734;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=29738;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29741;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=29747;
UPDATE `creature_template` SET `type_flags`=1088 WHERE `entry`=29748;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=29767;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29768;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29769;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29771;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29772;
UPDATE `creature_template` SET `type_flags`=1056 WHERE `entry`=29773;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29774;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=29775;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=29789;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=29790;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29791;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29795;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29799;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29803;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29810;
UPDATE `creature_template` SET `type_flags`=1152 WHERE `entry`=29816;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29818;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29819;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29820;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29822;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29823;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29824;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29825;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29826;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29827;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29828;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29829;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29830;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29831;
UPDATE `creature_template` SET `type_flags`=584 WHERE `entry`=29832;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29833;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29834;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29835;
UPDATE `creature_template` SET `type_flags`=2056 WHERE `entry`=29836;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29837;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29838;
UPDATE `creature_template` SET `type_flags`=2120 WHERE `entry`=29842;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29845;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29846;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29847;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29848;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29852;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29853;
UPDATE `creature_template` SET `type_flags`=128 WHERE `entry`=29856;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29858;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=29859;
UPDATE `creature_template` SET `type_flags`=32768 WHERE `entry`=29861;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=29872;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29874;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29876;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29877;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29883;
UPDATE `creature_template` SET `type_flags`=131080 WHERE `entry`=29884;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=29889;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29895;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29896;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29898;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29899;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29900;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29901;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29920;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29931;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29932;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29933;
UPDATE `creature_template` SET `name`='Moteha Windborn ' WHERE `entry`=29937;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29940;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29941;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29955;
UPDATE `creature_template` SET `type_flags`=2056 WHERE `entry`=29982;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=29983;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29985;
UPDATE `creature_template` SET `type_flags`=2120 WHERE `entry`=29986;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29987;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29988;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=29989;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=29990;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=29991;
UPDATE `creature_template` SET `PetSpellDataId`=13040 WHERE `entry`=29993;
UPDATE `creature_template` SET `PetSpellDataId`=5811 WHERE `entry`=29994;
UPDATE `creature_template` SET `PetSpellDataId`=9161 WHERE `entry`=29996;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=29999;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30000;
UPDATE `creature_template` SET `PetSpellDataId`=5811 WHERE `entry`=30001;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30015;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30016;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30018;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30022;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30038;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30047;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30048;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30049;
UPDATE `creature_template` SET `type_flags`=512 WHERE `entry`=30053;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30054;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30057;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=30061;
UPDATE `creature_template` SET `type_flags`=32768 WHERE `entry`=30063;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30068;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30071;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30075;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30079;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30083;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30085;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30087;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=30093;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30097;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30104;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30107;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30111;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30114;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30115;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30130;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30131;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30132;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30133;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30134;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30150;
UPDATE `creature_template` SET `type_flags`=512 WHERE `entry`=30160;
UPDATE `creature_template` SET `PetSpellDataId`=13470 WHERE `entry`=30164;
UPDATE `creature_template` SET `PetSpellDataId`=13470 WHERE `entry`=30167;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30172;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30173;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30176;
UPDATE `creature_template` SET `PetSpellDataId`=13470 WHERE `entry`=30177;
UPDATE `creature_template` SET `name`='Ahn\'kahar Swarmer ',`type_flags`=8 WHERE `entry`=30178;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30179;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=30187;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=30188;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=30206;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30220;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=30224;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30230;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30240;
UPDATE `creature_template` SET `type_flags`=328 WHERE `entry`=30258;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30264;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30266;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30276;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30277;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30278;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30279;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30283;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30284;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30285;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30286;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30287;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30288;
UPDATE `creature_template` SET `PetSpellDataId`=12993 WHERE `entry`=30290;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=30291;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=30294;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30295;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30303;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30315;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30317;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30318;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30319;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=30320;
UPDATE `creature_template` SET `PetSpellDataId`=5811 WHERE `entry`=30326;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30328;
UPDATE `creature_template` SET `type_flags`=328 WHERE `entry`=30329;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=30330;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=30332;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30338;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30339;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30361;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30377;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30382;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30385;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30389;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30390;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=30391;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30396;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=30397;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30398;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30399;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30403;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30412;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30414;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=30422;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=30423;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30424;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=30426;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=30427;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=30428;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=30430;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=30435;
UPDATE `creature_template` SET `type_flags`=44 WHERE `entry`=30443;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=30449;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=30451;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=30452;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30453;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=30455;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=30456;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=30457;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=30459;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30460;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30462;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30465;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30470;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30473;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30478;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30485;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30494;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30495;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30496;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30497;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30498;
UPDATE `creature_template` SET `type_flags`=32768 WHERE `entry`=30503;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30508;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30509;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=30510;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30511;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30512;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30513;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30516;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30517;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30519;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30520;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30521;
UPDATE `creature_template` SET `type_flags`=264 WHERE `entry`=30524;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30525;
UPDATE `creature_template` SET `type_flags`=264 WHERE `entry`=30526;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30527;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30528;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=30529;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30530;
UPDATE `creature_template` SET `type_flags`=584 WHERE `entry`=30532;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=30540;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=30549;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30575;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30576;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30585;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30593;
UPDATE `creature_template` SET `type_flags`=2084 WHERE `entry`=30595;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30596;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30599;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=30600;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=30601;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=30602;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=30603;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30604;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30605;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30606;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30607;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30608;
UPDATE `creature_template` SET `type_flags`=2056 WHERE `entry`=30609;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=5874 WHERE `entry`=30613;
UPDATE `creature_template` SET `type_flags`=256 WHERE `entry`=30617;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30621;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30622;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30623;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30624;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30625;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30626;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=30628;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=30639;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30644;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30660;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30661;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30662;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30663;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30664;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30665;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30666;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30667;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30668;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30670;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30671;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30673;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30674;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=30675;
UPDATE `creature_template` SET `type_flags`=2084 WHERE `entry`=30677;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30678;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30680;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30681;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30682;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30688;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30695;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=30703;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=30704;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30706;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30710;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30711;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30712;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30715;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30723;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30726;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30727;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30729;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30731;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=30739;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=30740;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30747;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=30748;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30750;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30756;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30757;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=13461 WHERE `entry`=30762;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30770;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30772;
UPDATE `creature_template` SET `type_flags`=40 WHERE `entry`=30774;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30780;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30781;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30782;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30783;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30784;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30785;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30786;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30787;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30788;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=30789;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30790;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=30794;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30803;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30807;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30808;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30810;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30813;
UPDATE `creature_template` SET `type_flags`=512 WHERE `entry`=30814;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=30828;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30835;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30836;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=30837;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=30838;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30858;
UPDATE `creature_template` SET `type_flags`=512 WHERE `entry`=30876;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30880;
UPDATE `creature_template` SET `type_flags`=1088 WHERE `entry`=30882;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30883;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30890;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30892;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30893;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30901;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30902;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30903;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30904;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30905;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30906;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30907;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30908;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30909;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=30910;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=30911;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30912;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30913;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30914;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30915;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30916;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30917;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30918;
UPDATE `creature_template` SET `type_flags`=2056 WHERE `entry`=30925;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30926;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30927;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30928;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30929;
UPDATE `creature_template` SET `type_flags`=584 WHERE `entry`=30930;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30931;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30932;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30933;
UPDATE `creature_template` SET `type_flags`=2056 WHERE `entry`=30934;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30935;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30936;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30938;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30939;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30941;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30942;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30945;
UPDATE `creature_template` SET `type_flags`=1088 WHERE `entry`=30948;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30955;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30959;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30961;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30962;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30963;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30964;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30966;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30967;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30968;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30969;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30970;
UPDATE `creature_template` SET `type_flags`=32768 WHERE `entry`=30971;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30972;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30973;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30974;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30977;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30978;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30980;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30981;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30982;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30983;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=30990;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=30991;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30998;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=30999;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31000;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31001;
UPDATE `creature_template` SET `type_flags`=2056 WHERE `entry`=31003;
UPDATE `creature_template` SET `type_flags`=1032 WHERE `entry`=31004;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31007;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31008;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31009;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31010;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31012;
UPDATE `creature_template` SET `type_flags`=1036 WHERE `entry`=31013;
UPDATE `creature_template` SET `type_flags`=44 WHERE `entry`=31014;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=31016;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=31030;
UPDATE `creature_template` SET `type_flags`=2084 WHERE `entry`=31044;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=31045;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=31046;
UPDATE `creature_template` SET `type_flags`=1056 WHERE `entry`=31047;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31049;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=31050;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31051;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=31055;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=31056;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=31063;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31064;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31065;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31066;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31068;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31077;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31079;
UPDATE `creature_template` SET `type_flags`=44 WHERE `entry`=31083;
UPDATE `creature_template` SET `type_flags`=2092 WHERE `entry`=31084;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31087;
UPDATE `creature_template` SET `type_flags`=6152 WHERE `entry`=31088;
UPDATE `creature_template` SET `type_flags`=6152 WHERE `entry`=31089;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=31094;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=31099;
UPDATE `creature_template` SET `type_flags`=1088 WHERE `entry`=31103;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31104;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31117;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31119;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=31125;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31134;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=31143;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=31151;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31178;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31179;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31180;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31183;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31184;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31187;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31188;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31199;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31200;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31201;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31202;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31203;
UPDATE `creature_template` SET `type_flags`=1088 WHERE `entry`=31204;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31206;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31207;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31210;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31211;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31212;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31214;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31215;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31217;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31218;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31219;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31222;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31238;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31246;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31248;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31251;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=31253;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31261;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31266;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=31271;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=31277;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31279;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31285;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=31290;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31293;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31294;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31295;
UPDATE `creature_template` SET `type_flags`=4104 WHERE `entry`=31296;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31297;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31298;
UPDATE `creature_template` SET `type_flags`=4104 WHERE `entry`=31299;
UPDATE `creature_template` SET `type_flags`=44 WHERE `entry`=31301;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31310;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=31311;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31313;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=31314;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31324;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31328;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31330;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=31333;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=31334;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=13148 WHERE `entry`=31336;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=31337;
UPDATE `creature_template` SET `type_flags`=128 WHERE `entry`=31339;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=31340;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=31343;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31344;
UPDATE `creature_template` SET `type_flags`=65609 WHERE `entry`=31349;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31350;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31360;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31361;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31362;
UPDATE `creature_template` SET `type_flags`=584 WHERE `entry`=31365;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31366;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=31367;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31368;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31369;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31370;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31371;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31372;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31373;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31374;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31375;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31376;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31377;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31378;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31379;
UPDATE `creature_template` SET `type_flags`=584 WHERE `entry`=31381;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31382;
UPDATE `creature_template` SET `type_flags`=32776 WHERE `entry`=31383;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31384;
UPDATE `creature_template` SET `type_flags`=32776 WHERE `entry`=31385;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31386;
UPDATE `creature_template` SET `type_flags`=32776 WHERE `entry`=31387;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31388;
UPDATE `creature_template` SET `type_flags`=32 WHERE `entry`=31393;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=31395;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31406;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=31412;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=31418;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=31419;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=31428;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31441;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31442;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31443;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31445;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31446;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31447;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31448;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31449;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31450;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31451;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31455;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31456;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31457;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31459;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31460;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=31461;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=31462;
UPDATE `creature_template` SET `type_flags`=328 WHERE `entry`=31463;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31464;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31465;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31466;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31468;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31469;
UPDATE `creature_template` SET `type_flags`=328 WHERE `entry`=31470;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31471;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31472;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31473;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31474;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31475;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31476;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31477;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31478;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31479;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31480;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31481;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31483;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31484;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31485;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31486;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31487;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31488;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31489;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31490;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31492;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31493;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31494;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31495;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31496;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31497;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31498;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31499;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31500;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31501;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31502;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31503;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31504;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31506;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31507;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31508;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31509;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31510;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31511;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31512;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31513;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31515;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31518;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31519;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=31520;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31522;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31523;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31526;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=31530;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=31533;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=31534;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=31535;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=31536;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31537;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31538;
UPDATE `creature_template` SET `type_flags`=1088 WHERE `entry`=31539;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31540;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31541;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31542;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31543;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31544;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31546;
UPDATE `creature_template` SET `type_flags`=1088 WHERE `entry`=31547;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31548;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31557;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=31558;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=31559;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=31560;
UPDATE `creature_template` SET `type_flags`=96 WHERE `entry`=31561;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=31565;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31592;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=31610;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=31611;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=31612;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31615;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31616;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31617;
UPDATE `creature_template` SET `type_flags`=1032 WHERE `entry`=31628;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=5830 WHERE `entry`=31636;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=31637;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=31638;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=31649;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=31650;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=31651;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31655;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31656;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31657;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31673;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31674;
UPDATE `creature_template` SET `type_flags`=2080 WHERE `entry`=31676;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=31678;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31679;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31680;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=31696;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31701;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=31722;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=31734;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31766;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31794;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31801;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31810;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=31818;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=31819;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=31820;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31821;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31822;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31827;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31831;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31832;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31835;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=31838;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=31841;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=31842;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=31844;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31845;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31866;
UPDATE `creature_template` SET `type_flags`=128 WHERE `entry`=31868;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=31871;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31882;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31883;
UPDATE `creature_template` SET `PetSpellDataId`=13470 WHERE `entry`=31885;
UPDATE `creature_template` SET `PetSpellDataId`=13470 WHERE `entry`=31886;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31888;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=31891;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31893;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31894;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31895;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31896;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31897;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=31915;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=31920;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=13040 WHERE `entry`=31975;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=32004;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32005;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32024;
UPDATE `creature_template` SET `type_flags`=1,`PetSpellDataId`=13264 WHERE `entry`=32098;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32150;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=32160;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32172;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=32184;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32191;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32192;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32216;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32222;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32223;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=32224;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32226;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32228;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32230;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32231;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32234;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32235;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32237;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=32239;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32251;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32252;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32253;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=32264;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32273;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32277;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32281;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=32282;
UPDATE `creature_template` SET `type_flags`=36 WHERE `entry`=32295;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32300;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=32303;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32306;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=32307;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=32308;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=32309;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32310;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32311;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=32312;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32313;
UPDATE `creature_template` SET `type_flags`=5120 WHERE `entry`=32331;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=32346;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=32347;
UPDATE `creature_template` SET `type_flags`=12288 WHERE `entry`=32350;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=32353;
UPDATE `creature_template` SET `type_flags`=256 WHERE `entry`=32357;
UPDATE `creature_template` SET `type_flags`=34816 WHERE `entry`=32358;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=32363;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=32364;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=32365;
UPDATE `creature_template` SET `type_flags`=104 WHERE `entry`=32368;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=32386;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=32388;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=32389;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=32401;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=32402;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32403;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=32406;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32411;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32412;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32418;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32419;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32420;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32421;
UPDATE `creature_template` SET `type_flags`=512 WHERE `entry`=32422;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32424;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32426;
UPDATE `creature_template` SET `type_flags`=2048 WHERE `entry`=32438;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=32443;
UPDATE `creature_template` SET `type_flags`=44 WHERE `entry`=32446;
UPDATE `creature_template` SET `type_flags`=512 WHERE `entry`=32447;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32451;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32453;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32454;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32465;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=32483;
UPDATE `creature_template` SET `type_flags`=65537 WHERE `entry`=32485;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32486;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32487;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32493;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32494;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32496;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=32511;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32512;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32513;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32514;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32515;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=32518;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=32521;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32525;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=32527;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32528;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=32530;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32533;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=32536;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=32537;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32538;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32549;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32550;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32551;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32552;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32553;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32554;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=32555;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32565;
UPDATE `creature_template` SET `type_flags`=8192 WHERE `entry`=32567;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32574;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=32575;
UPDATE `creature_template` SET `name`='Ethereal Sphere ' WHERE `entry`=32582;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=32587;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=32588;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32597;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32598;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32600;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32601;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32602;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32604;
UPDATE `creature_template` SET `type_flags`=393256 WHERE `entry`=32627;
UPDATE `creature_template` SET `type_flags`=262184 WHERE `entry`=32629;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32632;
UPDATE `creature_template` SET `type_flags`=8192 WHERE `entry`=32634;
UPDATE `creature_template` SET `type_flags`=8192 WHERE `entry`=32635;
UPDATE `creature_template` SET `type_flags`=8192 WHERE `entry`=32636;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=32665;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32668;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32669;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32676;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32677;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32678;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32679;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32680;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32681;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32683;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32684;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32685;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32686;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32687;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32688;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32689;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32690;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32692;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32693;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32695;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32697;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32700;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32702;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32704;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32708;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32709;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32710;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32711;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32712;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32713;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32716;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32717;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32719;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32720;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32721;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32726;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32727;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32728;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32729;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32731;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32733;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32734;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32735;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32737;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32738;
UPDATE `creature_template` SET `name`='Archmage Rheaume ',`type_flags`=4096 WHERE `entry`=32740;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32741;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=32751;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=32752;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32753;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32754;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32755;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32756;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32757;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32758;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32759;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32760;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32761;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32762;
UPDATE `creature_template` SET `type_flags`=6144 WHERE `entry`=32777;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=32788;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=32790;
UPDATE `creature_template` SET `type_flags`=262176 WHERE `entry`=32795;
UPDATE `creature_template` SET `type_flags`=131080 WHERE `entry`=32796;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=32797;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32800;
UPDATE `creature_template` SET `type_flags`=1024 WHERE `entry`=32821;
UPDATE `creature_template` SET `type_flags`=4096 WHERE `entry`=32843;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=32853;

-- Deeprun Tram fix
UPDATE `gameobject` SET `position_x`=4.58065,`position_y`=28.2097,`position_z`=7.01107,`orientation`=1.5708,`rotation0`=0,`rotation1`=0,`rotation2`=1,`rotation3`=0 WHERE `guid`=18802;
UPDATE `gameobject` SET `position_x`=4.52807,`position_y`=8.43529,`position_z`=7.01107,`orientation`=1.5708,`rotation0`=0,`rotation1`=0,`rotation2`=1,`rotation3`=0 WHERE `guid`=18803;
UPDATE `gameobject` SET `position_x`=-45.4005,`position_y`=2492.79,`position_z`=6.9886,`orientation`=1.5708,`rotation0`=0,`rotation1`=0,`rotation2`=1,`rotation3`=0 WHERE `guid`=18804;
UPDATE `gameobject` SET `position_x`=-45.4007,`position_y`=2512.15,`position_z`=6.9886,`orientation`=1.5708,`rotation0`=0,`rotation1`=0,`rotation2`=1,`rotation3`=0 WHERE `guid`=18805;
UPDATE `gameobject` SET `position_x`=-45.3934,`position_y`=2472.93,`position_z`=6.9886,`orientation`=-1.5708,`rotation0`=0,`rotation1`=0,`rotation2`=1,`rotation3`=0 WHERE `guid`=18806;
UPDATE `gameobject` SET `position_x`=4.49883,`position_y`=-11.3475,`position_z`=7.01107,`orientation`=1.5708,`rotation0`=0,`rotation1`=0,`rotation2`=1,`rotation3`=0 WHERE `guid`=18807;

-- hall of legends + hall of champions spawns + lexicon of powers + spirit healers + inscription trainers + ebon hold map (0)
UPDATE `creature_template` SET `equipment_id`=358 WHERE `entry`=27928;
UPDATE `creature_template` SET `equipment_id`=359 WHERE `entry`=28490;
UPDATE `creature_template` SET `equipment_id`=360 WHERE `entry`=28500;
UPDATE `creature_template` SET `equipment_id`=363 WHERE `entry`=29202;
UPDATE `creature_template` SET `equipment_id`=364 WHERE `entry`=29203;
UPDATE `creature_template` SET `equipment_id`=365 WHERE `entry`=29246;
-- more equipments
INSERT IGNORE INTO `creature_equip_template` VALUES (1422,1900,1900,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1423,5281,0,6886);
INSERT IGNORE INTO `creature_equip_template` VALUES (1424,1897,2051,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1425,2711,2051,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1426,2184,1895,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1427,1906,0,2551);
INSERT IGNORE INTO `creature_equip_template` VALUES (1428,1897,1897,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1429,2558,2809,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1430,2184,2051,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1431,2179,2147,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1432,5187,0,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1433,5281,0,5259);
INSERT IGNORE INTO `creature_equip_template` VALUES (1434,2809,3361,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1435,11588,0,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1436,4991,0,2552);
INSERT IGNORE INTO `creature_equip_template` VALUES (1437,1909,2052,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1438,2711,10616,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1439,5281,0,2552);
INSERT IGNORE INTO `creature_equip_template` VALUES (1440,1895,2081,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1441,5284,3698,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1442,1910,0,6886);
INSERT IGNORE INTO `creature_equip_template` VALUES (1443,1897,0,5259);
INSERT IGNORE INTO `creature_equip_template` VALUES (1444,10611,12456,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1445,5305,143,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1446,12297,12298,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1447,12304,1984,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1448,12755,0,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1449,12331,0,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1450,12788,0,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1451,1910,13611,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1452,3351,13606,0);
insert ignore into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('1453','1900','2081','0');
insert ignore into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('1454','1911','0','6886');
UPDATE `creature_template` SET `equipment_id`=51 WHERE `entry`=46;
UPDATE `creature_template` SET `equipment_id`=1422 WHERE `entry`=61;
UPDATE `creature_template` SET `equipment_id`=1423 WHERE `entry`=95;
UPDATE `creature_template` SET `equipment_id`=1424 WHERE `entry`=98;
UPDATE `creature_template` SET `equipment_id`=8 WHERE `entry`=117;
UPDATE `creature_template` SET `equipment_id`=1425 WHERE `entry`=121;
UPDATE `creature_template` SET `equipment_id`=1426 WHERE `entry`=122;
UPDATE `creature_template` SET `equipment_id`=22 WHERE `entry`=123;
UPDATE `creature_template` SET `equipment_id`=60 WHERE `entry`=124;
UPDATE `creature_template` SET `equipment_id`=28 WHERE `entry`=125;
UPDATE `creature_template` SET `equipment_id`=4 WHERE `entry`=126;
UPDATE `creature_template` SET `equipment_id`=35 WHERE `entry`=171;
UPDATE `creature_template` SET `equipment_id`=106 WHERE `entry`=233;
UPDATE `creature_template` SET `equipment_id`=91 WHERE `entry`=235;
UPDATE `creature_template` SET `equipment_id`=106 WHERE `entry`=237;
UPDATE `creature_template` SET `equipment_id`=67 WHERE `entry`=239;
UPDATE `creature_template` SET `equipment_id`=106 WHERE `entry`=250;
UPDATE `creature_template` SET `equipment_id`=337 WHERE `entry`=258;
UPDATE `creature_template` SET `equipment_id`=101 WHERE `entry`=391;
UPDATE `creature_template` SET `equipment_id`=933 WHERE `entry`=424;
UPDATE `creature_template` SET `equipment_id`=54 WHERE `entry`=435;
UPDATE `creature_template` SET `equipment_id`=1263 WHERE `entry`=437;
UPDATE `creature_template` SET `equipment_id`=9 WHERE `entry`=450;
UPDATE `creature_template` SET `equipment_id`=94 WHERE `entry`=452;
UPDATE `creature_template` SET `equipment_id`=176 WHERE `entry`=453;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=456;
UPDATE `creature_template` SET `equipment_id`=384 WHERE `entry`=458;
UPDATE `creature_template` SET `equipment_id`=15 WHERE `entry`=473;
UPDATE `creature_template` SET `equipment_id`=379 WHERE `entry`=488;
UPDATE `creature_template` SET `equipment_id`=1080 WHERE `entry`=489;
UPDATE `creature_template` SET `equipment_id`=164 WHERE `entry`=491;
UPDATE `creature_template` SET `equipment_id`=1427 WHERE `entry`=500;
UPDATE `creature_template` SET `equipment_id`=1428 WHERE `entry`=502;
UPDATE `creature_template` SET `equipment_id`=1092 WHERE `entry`=506;
UPDATE `creature_template` SET `equipment_id`=35 WHERE `entry`=513;
UPDATE `creature_template` SET `equipment_id`=51 WHERE `entry`=515;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=517;
UPDATE `creature_template` SET `equipment_id`=94 WHERE `entry`=544;
UPDATE `creature_template` SET `equipment_id`=1429 WHERE `entry`=580;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=589;
UPDATE `creature_template` SET `equipment_id`=4 WHERE `entry`=590;
UPDATE `creature_template` SET `equipment_id`=1430 WHERE `entry`=594;
UPDATE `creature_template` SET `equipment_id`=53 WHERE `entry`=598;
UPDATE `creature_template` SET `equipment_id`=1 WHERE `entry`=599;
UPDATE `creature_template` SET `equipment_id`=35 WHERE `entry`=615;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=619;
UPDATE `creature_template` SET `equipment_id`=936 WHERE `entry`=622;
UPDATE `creature_template` SET `equipment_id`=53 WHERE `entry`=623;
UPDATE `creature_template` SET `equipment_id`=522 WHERE `entry`=625;
UPDATE `creature_template` SET `equipment_id`=53 WHERE `entry`=626;
UPDATE `creature_template` SET `equipment_id`=1 WHERE `entry`=634;
UPDATE `creature_template` SET `equipment_id`=134 WHERE `entry`=636;
UPDATE `creature_template` SET `equipment_id`=1431 WHERE `entry`=639;
UPDATE `creature_template` SET `equipment_id`=63 WHERE `entry`=641;
UPDATE `creature_template` SET `equipment_id`=129 WHERE `entry`=643;
UPDATE `creature_template` SET `equipment_id`=1432 WHERE `entry`=644;
UPDATE `creature_template` SET `equipment_id`=151 WHERE `entry`=645;
UPDATE `creature_template` SET `equipment_id`=498 WHERE `entry`=646;
UPDATE `creature_template` SET `equipment_id`=101 WHERE `entry`=647;
UPDATE `creature_template` SET `equipment_id`=51 WHERE `entry`=657;
UPDATE `creature_template` SET `equipment_id`=281 WHERE `entry`=711;
UPDATE `creature_template` SET `equipment_id`=4 WHERE `entry`=732;
UPDATE `creature_template` SET `equipment_id`=53 WHERE `entry`=824;
UPDATE `creature_template` SET `equipment_id`=112 WHERE `entry`=874;
UPDATE `creature_template` SET `equipment_id`=295 WHERE `entry`=880;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=881;
UPDATE `creature_template` SET `equipment_id`=9 WHERE `entry`=1065;
UPDATE `creature_template` SET `equipment_id`=35 WHERE `entry`=1083;
UPDATE `creature_template` SET `equipment_id`=53 WHERE `entry`=1236;
UPDATE `creature_template` SET `equipment_id`=508 WHERE `entry`=1296;
UPDATE `creature_template` SET `equipment_id`=53 WHERE `entry`=1426;
UPDATE `creature_template` SET `equipment_id`=22 WHERE `entry`=1669;
UPDATE `creature_template` SET `equipment_id`=1433 WHERE `entry`=1725;
UPDATE `creature_template` SET `equipment_id`=9 WHERE `entry`=1726;
UPDATE `creature_template` SET `equipment_id`=53 WHERE `entry`=1727;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=1729;
UPDATE `creature_template` SET `equipment_id`=7 WHERE `entry`=1731;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=1732;
UPDATE `creature_template` SET `equipment_id`=22 WHERE `entry`=1738;
UPDATE `creature_template` SET `equipment_id`=22 WHERE `entry`=1742;
UPDATE `creature_template` SET `equipment_id`=6 WHERE `entry`=1763;
UPDATE `creature_template` SET `equipment_id`=215 WHERE `entry`=2299;
UPDATE `creature_template` SET `equipment_id`=169 WHERE `entry`=2701;
UPDATE `creature_template` SET `equipment_id`=476 WHERE `entry`=2715;
UPDATE `creature_template` SET `equipment_id`=21 WHERE `entry`=2716;
UPDATE `creature_template` SET `equipment_id`=1434 WHERE `entry`=2717;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=2718;
UPDATE `creature_template` SET `equipment_id`=28 WHERE `entry`=2719;
UPDATE `creature_template` SET `equipment_id`=9 WHERE `entry`=2720;
UPDATE `creature_template` SET `equipment_id`=1435 WHERE `entry`=2888;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=2892;
UPDATE `creature_template` SET `equipment_id`=17 WHERE `entry`=2893;
UPDATE `creature_template` SET `equipment_id`=9 WHERE `entry`=2894;
UPDATE `creature_template` SET `equipment_id`=316 WHERE `entry`=2907;
UPDATE `creature_template` SET `equipment_id`=354 WHERE `entry`=2941;
UPDATE `creature_template` SET `equipment_id`=2 WHERE `entry`=3097;
UPDATE `creature_template` SET `equipment_id`=203 WHERE `entry`=3298;
UPDATE `creature_template` SET `equipment_id`=1278 WHERE `entry`=3305;
UPDATE `creature_template` SET `equipment_id`=5 WHERE `entry`=3708;
UPDATE `creature_template` SET `equipment_id`=190 WHERE `entry`=3947;
UPDATE `creature_template` SET `equipment_id`=13 WHERE `entry`=4305;
UPDATE `creature_template` SET `equipment_id`=53 WHERE `entry`=4416;
UPDATE `creature_template` SET `equipment_id`=1436 WHERE `entry`=4417;
UPDATE `creature_template` SET `equipment_id`=10 WHERE `entry`=4418;
UPDATE `creature_template` SET `equipment_id`=9 WHERE `entry`=4463;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=5839;
UPDATE `creature_template` SET `equipment_id`=54 WHERE `entry`=5840;
UPDATE `creature_template` SET `equipment_id`=53 WHERE `entry`=5843;
UPDATE `creature_template` SET `equipment_id`=558 WHERE `entry`=5844;
UPDATE `creature_template` SET `equipment_id`=210 WHERE `entry`=5846;
UPDATE `creature_template` SET `equipment_id`=94 WHERE `entry`=6295;
UPDATE `creature_template` SET `equipment_id`=1437 WHERE `entry`=7025;
UPDATE `creature_template` SET `equipment_id`=10 WHERE `entry`=7026;
UPDATE `creature_template` SET `equipment_id`=295 WHERE `entry`=7027;
UPDATE `creature_template` SET `equipment_id`=1106 WHERE `entry`=7029;
UPDATE `creature_template` SET `equipment_id`=6 WHERE `entry`=7033;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=7034;
UPDATE `creature_template` SET `equipment_id`=38 WHERE `entry`=7035;
UPDATE `creature_template` SET `equipment_id`=1438 WHERE `entry`=7036;
UPDATE `creature_template` SET `equipment_id`=7 WHERE `entry`=7037;
UPDATE `creature_template` SET `equipment_id`=1439 WHERE `entry`=7038;
UPDATE `creature_template` SET `equipment_id`=130 WHERE `entry`=7040;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=7041;
UPDATE `creature_template` SET `equipment_id`=21 WHERE `entry`=7050;
UPDATE `creature_template` SET `equipment_id`=267 WHERE `entry`=7051;
UPDATE `creature_template` SET `equipment_id`=1440 WHERE `entry`=7052;
UPDATE `creature_template` SET `equipment_id`=1441 WHERE `entry`=7053;
UPDATE `creature_template` SET `equipment_id`=1 WHERE `entry`=7056;
UPDATE `creature_template` SET `equipment_id`=295 WHERE `entry`=7867;
UPDATE `creature_template` SET `equipment_id`=52 WHERE `entry`=8096;
UPDATE `creature_template` SET `equipment_id`=10 WHERE `entry`=8282;
UPDATE `creature_template` SET `equipment_id`=254 WHERE `entry`=8402;
UPDATE `creature_template` SET `equipment_id`=176 WHERE `entry`=8419;
UPDATE `creature_template` SET `equipment_id`=10 WHERE `entry`=8444;
UPDATE `creature_template` SET `equipment_id`=30 WHERE `entry`=8479;
UPDATE `creature_template` SET `equipment_id`=558 WHERE `entry`=8509;
UPDATE `creature_template` SET `equipment_id`=1 WHERE `entry`=8637;
UPDATE `creature_template` SET `equipment_id`=1442 WHERE `entry`=8917;
UPDATE `creature_template` SET `equipment_id`=6 WHERE `entry`=8977;
UPDATE `creature_template` SET `equipment_id`=243 WHERE `entry`=8979;
UPDATE `creature_template` SET `equipment_id`=1347 WHERE `entry`=9043;
UPDATE `creature_template` SET `equipment_id`=1443 WHERE `entry`=9044;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=9045;
UPDATE `creature_template` SET `equipment_id`=196 WHERE `entry`=9046;
UPDATE `creature_template` SET `equipment_id`=30 WHERE `entry`=9096;
UPDATE `creature_template` SET `equipment_id`=1444 WHERE `entry`=9097;
UPDATE `creature_template` SET `equipment_id`=176 WHERE `entry`=9098;
UPDATE `creature_template` SET `equipment_id`=187 WHERE `entry`=9177;
UPDATE `creature_template` SET `equipment_id`=1353 WHERE `entry`=9258;
UPDATE `creature_template` SET `equipment_id`=72 WHERE `entry`=9544;
UPDATE `creature_template` SET `equipment_id`=1445 WHERE `entry`=9560;
UPDATE `creature_template` SET `equipment_id`=10 WHERE `entry`=9561;
UPDATE `creature_template` SET `equipment_id`=117 WHERE `entry`=9562;
UPDATE `creature_template` SET `equipment_id`=32 WHERE `entry`=9563;
UPDATE `creature_template` SET `equipment_id`=14 WHERE `entry`=9565;
UPDATE `creature_template` SET `equipment_id`=93 WHERE `entry`=9817;
UPDATE `creature_template` SET `equipment_id`=109 WHERE `entry`=9818;
UPDATE `creature_template` SET `equipment_id`=186 WHERE `entry`=9819;
UPDATE `creature_template` SET `equipment_id`=3 WHERE `entry`=10037;
UPDATE `creature_template` SET `equipment_id`=7 WHERE `entry`=10083;
UPDATE `creature_template` SET `equipment_id`=1385 WHERE `entry`=10162;
UPDATE `creature_template` SET `equipment_id`=25 WHERE `entry`=10267;
UPDATE `creature_template` SET `equipment_id`=176 WHERE `entry`=10316;
UPDATE `creature_template` SET `equipment_id`=267 WHERE `entry`=10317;
UPDATE `creature_template` SET `equipment_id`=1446 WHERE `entry`=10318;
UPDATE `creature_template` SET `equipment_id`=1447 WHERE `entry`=10319;
UPDATE `creature_template` SET `equipment_id`=1448 WHERE `entry`=10363;
UPDATE `creature_template` SET `equipment_id`=191 WHERE `entry`=10371;
UPDATE `creature_template` SET `equipment_id`=109 WHERE `entry`=10372;
UPDATE `creature_template` SET `equipment_id`=1449 WHERE `entry`=10814;
UPDATE `creature_template` SET `equipment_id`=1450 WHERE `entry`=10899;
UPDATE `creature_template` SET `equipment_id`=34 WHERE `entry`=11703;
UPDATE `creature_template` SET `equipment_id`=117 WHERE `entry`=13177;
UPDATE `creature_template` SET `equipment_id`=1281 WHERE `entry`=14622;
UPDATE `creature_template` SET `equipment_id`=960 WHERE `entry`=14624;
UPDATE `creature_template` SET `equipment_id`=244 WHERE `entry`=14625;
UPDATE `creature_template` SET `equipment_id`=1451 WHERE `entry`=14626;
UPDATE `creature_template` SET `equipment_id`=129 WHERE `entry`=14627;
UPDATE `creature_template` SET `equipment_id`=1452 WHERE `entry`=14628;
UPDATE `creature_template` SET `equipment_id`=832 WHERE `entry`=14634;
UPDATE `creature_template` SET `equipment_id`=58 WHERE `entry`=31708;
UPDATE `creature_template` SET `equipment_id`=22 WHERE `entry`=60;
UPDATE `creature_template` SET `equipment_id`=2 WHERE `entry`=79;
UPDATE `creature_template` SET `equipment_id`=1453 WHERE `entry`=103;
UPDATE `creature_template` SET `equipment_id`=164 WHERE `entry`=472;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=476;
UPDATE `creature_template` SET `equipment_id`=1061 WHERE `entry`=587;
UPDATE `creature_template` SET `equipment_id`=9 WHERE `entry`=697;
UPDATE `creature_template` SET `equipment_id`=67 WHERE `entry`=955;
UPDATE `creature_template` SET `equipment_id`=3 WHERE `entry`=963;
UPDATE `creature_template` SET `equipment_id`=2 WHERE `entry`=1249;
UPDATE `creature_template` SET `equipment_id`=72 WHERE `entry`=1266;
UPDATE `creature_template` SET `equipment_id`=18 WHERE `entry`=1493;
UPDATE `creature_template` SET `equipment_id`=50 WHERE `entry`=1645;
UPDATE `creature_template` SET `equipment_id`=29 WHERE `entry`=2683;
UPDATE `creature_template` SET `equipment_id`=730 WHERE `entry`=2779;
UPDATE `creature_template` SET `equipment_id`=476 WHERE `entry`=3283;
UPDATE `creature_template` SET `equipment_id`=558 WHERE `entry`=3286;
UPDATE `creature_template` SET `equipment_id`=9 WHERE `entry`=4459;
UPDATE `creature_template` SET `equipment_id`=35 WHERE `entry`=4460;
UPDATE `creature_template` SET `equipment_id`=35 WHERE `entry`=4461;
UPDATE `creature_template` SET `equipment_id`=8 WHERE `entry`=5686;
UPDATE `creature_template` SET `equipment_id`=1437 WHERE `entry`=6124;
UPDATE `creature_template` SET `equipment_id`=190 WHERE `entry`=6172;
UPDATE `creature_template` SET `equipment_id`=190 WHERE `entry`=6177;
UPDATE `creature_template` SET `equipment_id`=316 WHERE `entry`=6206;
UPDATE `creature_template` SET `equipment_id`=174 WHERE `entry`=6207;
UPDATE `creature_template` SET `equipment_id`=23 WHERE `entry`=6208;
UPDATE `creature_template` SET `equipment_id`=32 WHERE `entry`=6210;
UPDATE `creature_template` SET `equipment_id`=169 WHERE `entry`=6211;
UPDATE `creature_template` SET `equipment_id`=134 WHERE `entry`=6212;
UPDATE `creature_template` SET `equipment_id`=4 WHERE `entry`=6213;
UPDATE `creature_template` SET `equipment_id`=193 WHERE `entry`=6221;
UPDATE `creature_template` SET `equipment_id`=1454 WHERE `entry`=6222;
UPDATE `creature_template` SET `equipment_id`=58 WHERE `entry`=6223;
UPDATE `creature_template` SET `equipment_id`=1454 WHERE `entry`=6224;
UPDATE `creature_template` SET `equipment_id`=109 WHERE `entry`=6392;
UPDATE `creature_template` SET `equipment_id`=936 WHERE `entry`=6407;
UPDATE `creature_template` SET `equipment_id`=88 WHERE `entry`=8320;
UPDATE `creature_template` SET `equipment_id`=1092 WHERE `entry`=8442;
UPDATE `creature_template` SET `equipment_id`=88 WHERE `entry`=9676;
UPDATE `creature_template` SET `equipment_id`=68 WHERE `entry`=25097;


REPLACE INTO `creature_addon` VALUES ('125710','0','16777472','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125711','0','16843008','0','1','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125712','0','16777472','0','1','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125713','25280','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125714','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125715','25280','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125716','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125717','25280','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125718','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125719','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125720','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125721','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125722','25280','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125723','26303','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125724','26303','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125725','26303','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125726','26303','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125727','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125728','25280','512','0','1','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125729','25280','512','0','1','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125730','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125731','25280','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125732','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125733','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125734','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125735','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125736','25280','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125737','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125738','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125739','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125740','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125741','0','512','8','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125742','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125743','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125744','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125745','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125746','25280','512','0','1','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125747','0','512','8','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125748','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125749','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125750','25280','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125751','25280','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125752','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125753','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125754','0','512','0','0','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125755','0','512','0','0','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125756','25280','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125757','25280','512','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125758','0','2048','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125759','0','16908544','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125760','0','16908544','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125761','0','16908544','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125762','25280','66048','0','256','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125763','0','131584','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125764','0','131584','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125765','0','131584','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125766','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125767','0','16908544','0','257','418','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125768','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125769','0','16908544','0','257','64','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125770','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125771','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125772','0','16908544','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125773','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125774','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125775','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125776','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125777','0','16908544','0','257','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125778','0','16908544','0','257','64','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125779','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125780','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125781','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125782','0','16908544','0','257','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125783','0','16908544','0','257','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125784','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125785','0','16908544','0','257','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125786','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125787','0','16908544','0','257','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125788','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125789','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125790','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125791','0','16908544','0','257','64','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125792','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125793','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125794','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125795','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125796','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125797','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125798','0','16908544','0','257','64','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125799','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125800','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125801','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125802','0','16908544','0','257','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125803','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125804','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125805','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125806','0','16908544','0','257','418','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125807','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125808','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125809','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125810','0','16908544','7','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125811','0','16908544','0','257','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125812','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125813','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125814','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125815','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125816','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125817','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125818','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125819','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125820','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125821','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125822','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125823','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125824','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125825','0','16908544','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125826','0','131584','9','1','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125827','0','131584','9','1','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125828','0','131584','0','1','0','4352',NULL);
REPLACE INTO `creature_addon` VALUES ('125829','0','131584','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125830','0','131584','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125831','0','131584','9','1','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125832','0','131584','9','1','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125833','0','131584','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125834','25279','16777472','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125835','0','16908544','0','1','0','1024',NULL);
REPLACE INTO `creature_addon` VALUES ('125836','0','16908544','0','1','0','1024',NULL);
REPLACE INTO `creature_addon` VALUES ('125837','0','16908544','0','1','0','1024',NULL);
REPLACE INTO `creature_addon` VALUES ('125838','0','16908544','0','257','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125839','0','131584','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125840','0','131584','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125841','0','131584','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125842','0','131584','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125843','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125844','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125845','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125846','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125847','0','16843008','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125848','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125849','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125850','0','16843008','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125851','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125852','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125853','0','16843008','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125854','0','16843008','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125855','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125856','0','16843008','0','257','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125857','0','16777472','0','257','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125858','0','16843008','0','257','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125859','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125860','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125861','0','16843008','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125862','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125863','0','16843008','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125864','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125865','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125866','0','16777472','0','257','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125867','0','16777472','0','257','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125868','0','16843008','0','257','0','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125869','0','16777472','0','1','233','256',NULL);
REPLACE INTO `creature_addon` VALUES ('125870','28108','16777472','0','1','0','0',NULL);
REPLACE INTO `creature_addon` VALUES ('125871','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125872','0','16908544','0','1','0','2048',NULL);
REPLACE INTO `creature_addon` VALUES ('125873','0','16908544','0','1','0','0',NULL);
INSERT ignore INTO `creature` VALUES ('125641','29194','0','1','25468','0','2413.92','-5524.47','377.125','5.25344','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125642','29195','0','1','25458','0','2506.22','-5663.2','377.037','2.23402','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125643','30709','1','1','0','103','-998.998','208.718','106.477','2.65449','25','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125644','30711','0','1','0','103','1507.76','283.651','-62.1717','2.75928','25','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125645','30710','530','1','0','0','9958.94','-7250.08','32.0774','2.27023','25','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125646','30717','0','1','0','103','-4807.46','-1196.28','505.815','6.28269','25','0.0','0','902','0','0','0');
INSERT ignore INTO `creature` VALUES ('125647','30715','1','1','0','0','10139.0','2312.25','1343.31','0.138178','25','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125648','30716','530','1','0','103','-3890.05','-11494.8','-136.216','0.455529','25','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125649','6491','571','1','0','0','1101.91','-4970.7','32.3032','4.65249','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125650','6491','571','1','0','0','671.581','-4927.85','3.74385','3.732','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125651','29202','0','1','26001','0','2413.87','-5612.36','420.727','0.383972','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125652','6491','571','1','0','0','1359.41','-4769.29','193.188','4.9478','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125653','6491','571','1','0','0','1957.22','-3682.37','171.882','0.0359171','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125654','6491','571','1','0','0','731.997','-2987.05','24.9835','3.86473','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125655','6491','571','1','0','0','109.589','-3701.8','1.06501','0.145873','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125656','6491','571','1','0','0','1191.72','-4115.8','149.496','0.0359173','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125657','6491','571','1','0','0','2242.66','-4650.53','218.904','3.07158','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125658','6491','571','1','0','0','1923.72','-5986.35','9.05279','4.62589','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125659','6491','571','1','0','0','210.014','-5945.17','7.17955','3.23965','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125660','6491','571','1','0','0','57.9178','-4649.08','283.569','6.17704','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125661','6491','571','1','0','0','3618.7','6805.59','172.177','0.00774095','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125662','6491','571','1','0','0','4222.44','5337.23','30.3802','5.07199','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125663','6491','571','1','0','0','4512.78','5658.14','82.2635','1.46544','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125664','6491','571','1','0','0','3041.14','3843.49','3.75779','4.52221','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125665','6491','571','1','0','0','3575.78','4087.29','22.3345','1.53298','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125666','6491','571','1','0','0','2843.05','6655.58','36.3798','4.68086','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125667','6491','571','1','0','0','2479.42','5289.27','32.4917','2.96241','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125668','6491','571','1','0','0','3041.42','4319.21','29.4391','4.33529','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125669','6491','0','1','0','0','1773.33','768.808','55.6853','0.0250183','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125670','6491','1','1','0','0','-6113.67','-1337.97','-179.625','4.02662','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125671','6491','609','1','0','0','2364.42','-5771.32','151.367','0.127121','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125672','6491','609','1','0','0','1886.78','-5784.59','102.861','4.52535','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125673','6491','609','1','0','0','2116.19','-5286.94','81.2151','4.52535','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125674','6491','571','1','0','0','5850.33','764.161','641.12','3.79493','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125675','6491','571','1','0','0','3100.18','-1983.4','83.3072','5.01701','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125676','6491','571','1','0','0','3534.13','-2882.06','204.625','1.06253','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125677','6491','571','1','0','0','4352.78','-4247.99','162.318','0.0163839','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125678','6491','571','1','0','0','3967.28','-2316.64','213.873','4.20098','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125679','6491','571','1','0','0','2933.64','-2836.78','73.6939','2.69302','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125680','6491','571','1','0','0','4323.39','-3606.85','248.0','0.233154','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125681','12798','1','1','0','0','1656.62','-4224.73','56.1481','1.68466','25','0.0','0','3400','0','0','0');
INSERT ignore INTO `creature` VALUES ('125682','12797','1','1','0','0','1643.48','-4217.4','56.1543','0.446869','25','0.0','0','4900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125683','12790','1','1','0','0','1651.96','-4213.8','55.2117','0.682488','25','0.0','0','1900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125684','12788','1','1','0','0','1651.06','-4212.53','55.2117','0.0533842','25','0.0','0','3200','0','0','0');
INSERT ignore INTO `creature` VALUES ('125685','19850','1','1','0','0','1651.85','-4209.56','55.2117','5.61086','25','0.0','0','3400','0','0','0');
INSERT ignore INTO `creature` VALUES ('125686','12789','1','1','0','0','1655.53','-4208.76','55.2114','4.36601','25','0.0','0','3200','0','0','0');
INSERT ignore INTO `creature` VALUES ('125687','12791','1','1','0','0','1658.34','-4211.68','55.199','3.24289','25','0.0','0','1700','0','0','0');
INSERT ignore INTO `creature` VALUES ('125688','12794','1','1','0','0','1641.69','-4197.39','56.1549','5.45771','25','0.0','0','3900','0','0','0');
INSERT ignore INTO `creature` VALUES ('125689','32385','1','1','0','0','1644.16','-4195.4','56.1549','5.44986','25','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125690','12793','1','1','0','0','1654.56','-4190.78','56.1557','4.56234','25','0.0','0','6500','0','0','0');
INSERT ignore INTO `creature` VALUES ('125691','32832','1','1','0','0','1660.45','-4192.31','56.1557','4.33458','25','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125692','32382','1','1','0','0','1668.63','-4197.75','56.1558','3.74082','25','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125693','32383','1','1','0','0','1671.19','-4201.64','56.1558','3.55233','25','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125694','12796','1','1','0','0','1674.73','-4211.79','56.1558','3.01825','25','0.0','0','5300','0','0','0');
INSERT ignore INTO `creature` VALUES ('125695','12795','1','1','0','0','1673.99','-4216.6','56.1558','3.01825','25','0.0','0','4200','0','0','0');
INSERT ignore INTO `creature` VALUES ('125696','12787','0','1','0','209','-8766.04','410.891','103.921','3.88886','25','0.0','0','6474','0','0','0');
INSERT ignore INTO `creature` VALUES ('125697','12786','0','1','0','209','-8769.77','407.487','103.921','0.719775','25','0.0','0','6474','0','0','0');
INSERT ignore INTO `creature` VALUES ('125698','32379','0','1','0','319','-8767.08','418.394','103.921','3.79147','25','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125699','12784','0','1','0','83','-8770.6','422.601','103.921','0.77224','25','0.0','0','5228','0','0','0');
INSERT ignore INTO `creature` VALUES ('125700','12781','0','1','0','137','-8777.33','417.362','103.921','5.96293','25','0.0','0','5228','0','0','0');
INSERT ignore INTO `creature` VALUES ('125701','12783','0','1','0','208','-8772.54','426.48','105.233','3.82351','25','0.0','0','5228','0','0','0');
INSERT ignore INTO `creature` VALUES ('125702','12780','0','1','0','207','-8779.72','426.918','105.276','3.82743','25','0.0','0','5228','0','0','0');
INSERT ignore INTO `creature` VALUES ('125703','32380','0','1','0','0','-8778.81','433.289','105.233','4.65996','25','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125704','19848','0','1','0','0','-8782.24','427.816','105.276','5.41786','25','0.0','0','6761','0','0','0');
INSERT ignore INTO `creature` VALUES ('125705','12779','0','1','0','71','-8783.76','426.464','105.276','5.46892','25','0.0','0','3660','5013','0','0');
INSERT ignore INTO `creature` VALUES ('125706','32381','0','1','0','163','-8788.49','424.876','105.233','6.15457','25','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125707','12778','0','1','0','206','-8783.54','424.032','105.276','0.720402','25','0.0','0','5228','0','0','0');
INSERT ignore INTO `creature` VALUES ('125708','32834','0','1','0','188','-8784.35','417.323','105.233','0.728252','25','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125709','12785','0','1','0','476','-8768.03','400.563','109.666','2.2048','25','0.0','0','5700','0','0','0');
INSERT ignore INTO `creature` VALUES ('125710','29194','0','1','25468','0','2413.92','-5524.47','377.125','5.25344','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125711','29195','0','1','25458','0','2506.22','-5663.2','377.037','2.23402','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125712','29196','0','1','25459','0','2527.73','-5549.21','377.036','3.735','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125713','29202','0','1','25999','0','2376.21','-5661.79','382.455','0.907571','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125714','29202','0','1','26000','0','2554.67','-5599.88','444.212','3.47321','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125715','29202','0','1','25998','0','2580.04','-5616.82','444.751','2.94961','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125716','29202','0','1','25998','0','2454.24','-5687.68','444.212','1.8326','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125717','29202','0','1','25998','0','2402.12','-5649.42','377.179','0.610865','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125718','29202','0','1','26000','0','2494.95','-5556.85','420.727','3.85718','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125719','29202','0','1','26001','0','2386.51','-5585.67','376.874','6.16101','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125720','29202','0','1','26001','0','2413.87','-5612.36','420.727','0.383972','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125721','29202','0','1','26001','0','2370.31','-5564.29','444.21','5.8294','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125722','29202','0','1','25998','0','2364.88','-5645.58','382.454','0.366519','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125723','29202','0','1','25999','0','2355.41','-5695.45','382.324','1.39626','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125724','29202','0','1','25998','0','2323.35','-5656.07','383.241','6.24828','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125725','29202','0','1','25998','0','2346.29','-5691.39','382.324','0.733038','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125726','29202','0','1','25998','0','2325.73','-5663.41','383.241','0.383972','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125727','29202','0','1','26001','0','2388.92','-5573.38','376.889','5.98648','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125728','29202','0','1','25998','0','2455.59','-5656.23','376.902','3.11873','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125729','29202','0','1','26001','0','2455.59','-5659.23','376.903','3.11851','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125730','29202','0','1','25999','0','2452.52','-5667.42','376.88','1.58825','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125731','29202','0','1','25998','0','2483.65','-5473.94','444.751','4.55531','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125732','29202','0','1','25999','0','2466.96','-5499.02','444.209','5.0091','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125733','29202','0','1','26000','0','2468.4','-5519.7','376.877','4.59022','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125734','29202','0','1','26001','0','2365.64','-5587.08','444.208','0.296706','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125735','29202','0','1','26000','0','2549.99','-5622.68','444.216','2.74017','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125736','29202','0','1','26000','0','2437.19','-5713.14','444.751','1.37881','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125737','29202','0','1','26001','0','2506.97','-5574.87','420.727','3.50811','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125738','29202','0','1','26001','0','2532.16','-5613.79','376.893','2.87979','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125739','29202','0','1','26001','0','2489.26','-5503.9','444.219','4.17134','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125740','29202','0','1','25999','0','2430.6','-5683.61','444.208','0.959931','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125741','29202','0','1','25999','0','2461.97','-5587.04','367.486','4.53786','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125742','29202','0','1','25999','0','2425.64','-5630.19','420.649','0.802851','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125743','29202','0','1','25999','0','2440.06','-5665.12','376.895','1.43117','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125744','29202','0','1','25999','0','2424.12','-5559.07','420.644','5.49779','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125745','29202','0','1','26001','0','2496.69','-5627.6','420.651','2.37365','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125746','29202','0','1','25998','0','2475.51','-5568.69','366.82','2.74293','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125747','29202','0','1','25998','0','2466.98','-5594.89','367.486','3.00197','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125748','29202','0','1','25999','0','2441.92','-5547.21','420.651','5.02655','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125749','29202','0','1','26001','0','2480.71','-5522.02','376.877','4.5204','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125750','29202','0','1','25998','0','2430.58','-5556.85','420.642','3.93526','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125751','29202','0','1','25998','0','2431.42','-5559.64','420.64','4.56953','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125752','29202','0','1','26000','0','2386.21','-5639.72','420.934','0.453786','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125753','29202','0','1','26001','0','2534.36','-5601.83','376.87','2.98451','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125754','29202','0','1','26000','0','2478.6','-5640.08','420.643','2.04204','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125755','29202','0','1','25998','0','2389.45','-5645.32','420.872','0.767945','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125756','29202','0','1','25999','0','2340.86','-5570.33','444.75','6.12611','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125757','29202','0','1','26001','0','2386.18','-5626.86','377.179','0.645772','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125758','29203','0','1','25997','0','2395.99','-5587.67','420.733','1.43117','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125759','29205','0','1','7858','0','2445.88','-5552.93','420.644','3.30713','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125760','29207','0','1','4631','0','2387.36','-5579.47','420.737','0.0','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125761','29208','0','1','570','0','2404.74','-5564.18','420.65','5.21853','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125762','27928','0','1','24935','0','2379.41','-5648.53','382.522','3.735','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125763','29210','0','1','7550','0','2421.77','-5527.67','377.131','1.5708','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125764','29210','0','1','7550','0','2421.99','-5531.33','377.042','1.63176','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125765','29210','0','1','7550','0','2422.79','-5528.04','377.133','0.047031','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125766','29212','0','1','26002','0','2522.64','-5598.56','420.732','5.72468','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125767','29212','0','1','26003','0','2446.43','-5566.67','417.962','0.887452','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125768','29212','0','1','26003','0','2511.5','-5616.82','420.727','4.60767','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125769','29212','0','1','829','0','2464.41','-5525.95','420.727','5.70723','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125770','29212','0','1','829','0','2518.15','-5593.53','420.727','4.31096','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125771','29212','0','1','829','0','2528.41','-5593.57','420.727','0.0','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125772','29212','0','1','829','0','2451.82','-5624.64','420.202','0.187337','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125773','29212','0','1','829','0','2484.62','-5535.42','421.532','1.74533','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125774','29212','0','1','26003','0','2406.26','-5597.76','421.734','1.22173','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125775','29212','0','1','26003','0','2456.27','-5538.81','420.727','1.01229','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125776','29212','0','1','26002','0','2524.09','-5591.04','421.498','0.610865','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125777','29212','0','1','26002','0','2496.43','-5620.53','420.647','1.79314','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125778','29212','0','1','829','0','2510.67','-5619.0','420.649','1.39626','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125779','29212','0','1','829','0','2470.56','-5527.15','420.734','3.7001','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125780','29212','0','1','829','0','2518.35','-5588.84','420.727','1.8675','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125781','29212','0','1','26002','0','2465.99','-5532.94','420.732','1.18682','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125782','29212','0','1','26003','0','2425.79','-5590.48','420.287','1.28811','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125783','29212','0','1','26003','0','2524.07','-5616.75','420.651','2.32019','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125784','29212','0','1','26003','0','2421.39','-5561.41','420.727','0.226893','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125785','29212','0','1','26003','0','2438.97','-5558.75','420.3','3.03014','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125786','29212','0','1','829','0','2489.54','-5545.52','421.796','4.2237','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125787','29212','0','1','26003','0','2523.71','-5606.05','420.65','2.73855','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125788','29212','0','1','26003','0','2515.32','-5580.13','420.727','1.01229','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125789','29212','0','1','26003','0','2511.68','-5588.41','420.727','3.21141','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125790','29212','0','1','829','0','2402.77','-5595.08','420.727','5.21853','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125791','29212','0','1','26002','0','2521.03','-5588.51','420.727','5.044','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125792','29212','0','1','829','0','2509.72','-5624.31','420.727','6.12611','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125793','29212','0','1','829','0','2513.61','-5598.08','420.727','0.575959','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125794','29212','0','1','26002','0','2450.15','-5536.75','421.491','1.97222','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125795','29212','0','1','26003','0','2461.3','-5536.88','421.928','3.80482','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125796','29212','0','1','26003','0','2526.53','-5584.29','420.727','3.05433','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125797','29212','0','1','829','0','2485.91','-5540.86','420.727','4.13643','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125798','29212','0','1','26002','0','2484.25','-5545.9','420.727','0.558505','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125799','29212','0','1','26002','0','2478.68','-5542.38','420.727','2.58309','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125800','29212','0','1','26003','0','2408.75','-5593.02','420.727','4.50295','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125801','29212','0','1','26002','0','2413.97','-5618.59','420.727','0.0','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125802','29212','0','1','26003','0','2477.57','-5519.21','420.551','1.14359','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125803','29212','0','1','829','0','2404.61','-5593.25','420.727','1.43117','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125804','29212','0','1','26002','0','2482.09','-5531.64','421.734','0.488692','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125805','29212','0','1','829','0','2527.19','-5613.14','420.727','1.58825','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125806','29212','0','1','26002','0','2434.46','-5645.8','420.644','3.52235','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125807','29212','0','1','829','0','2467.17','-5539.97','420.727','4.2237','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125808','29212','0','1','829','0','2522.95','-5595.36','420.727','5.39307','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125809','29212','0','1','829','0','2517.07','-5584.58','421.574','3.33358','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125810','29212','0','1','26003','0','2516.96','-5591.08','420.727','2.9147','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125811','29212','0','1','26002','0','2480.78','-5554.29','420.644','5.17473','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125812','32542','0','1','28047','0','2482.47','-5599.68','415.741','2.67035','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125813','32542','0','1','28047','0','2483.28','-5594.87','415.747','3.14159','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125814','32542','0','1','28047','0','2482.51','-5588.27','415.747','3.4383','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125815','32543','0','1','16074','0','2457.97','-5616.42','415.747','1.5708','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125816','32543','0','1','16074','0','2453.11','-5615.05','415.747','1.23918','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125817','32543','0','1','16074','0','2444.11','-5609.52','415.747','0.750492','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125818','32545','0','1','3019','0','2467.66','-5571.87','415.747','4.39823','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125819','32545','0','1','3019','0','2471.24','-5573.34','415.747','4.20624','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125820','32545','0','1','3019','0','2462.96','-5570.75','415.747','4.79965','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125821','32546','0','1','28048','0','2437.42','-5597.99','415.747','0.244346','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125822','32546','0','1','28048','0','2437.42','-5592.11','415.747','6.17846','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125823','32546','0','1','28048','0','2438.15','-5586.98','415.747','5.95157','180','05.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125824','32547','0','1','28049','0','2460.32','-5592.96','414.205','2.16421','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125825','29480','0','1','10627','0','2348.63','-5669.29','382.324','0.645772','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125826','29239','0','1','25753','0','2440.61','-5639.99','454.293','4.46682','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125827','29239','0','1','25753','0','2490.76','-5638.42','445.051','2.14675','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125828','29239','0','1','25753','0','2391.41','-5567.29','444.357','5.48033','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125829','29239','0','1','25753','0','2429.2','-5616.6','465.364','2.25362','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125830','29239','0','1','25753','0','2416.44','-5572.44','422.853','1.46918','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125831','29239','0','1','25753','0','2434.35','-5550.9','445.937','5.71892','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125832','29239','0','1','25753','0','2502.82','-5567.13','446.636','4.188','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125833','29239','0','1','25753','0','2473.97','-5618.2','481.038','0.602209','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125834','29246','0','1','27153','0','2460.33','-5593.72','367.476','3.7001','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125835','28481','0','1','11686','0','2509.34','-5560.41','423.657','4.24115','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125836','28481','0','1','11686','0','2427.14','-5544.37','423.518','3.28122','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125837','28481','0','1','11686','0','2493.41','-5642.39','423.795','0.296706','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125838','28486','0','1','25467','0','2383.75','-5649.5','382.439','4.24115','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125839','28488','0','1','26919','0','2406.48','-5543.84','376.872','0.366519','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125840','28488','0','1','26919','0','2416.65','-5514.5','377.027','5.20108','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125841','28488','0','1','26919','0','2435.75','-5525.17','376.972','3.87463','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125842','28488','0','1','26919','0','2404.68','-5521.94','377.001','5.25344','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125843','28489','0','1','25471','0','2522.35','-5553.9','377.129','0.733038','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125844','28489','0','1','25469','0','2519.86','-5549.73','377.153','0.10472','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125845','28489','0','1','25471','0','2518.74','-5554.06','376.999','0.488692','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125846','28489','0','1','25471','0','2521.03','-5552.17','377.201','0.575959','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125847','28489','0','1','25472','0','2524.19','-5556.05','377.137','0.820305','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125848','28489','0','1','25470','0','2517.61','-5551.75','377.118','0.366519','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125849','28489','0','1','25469','0','2522.06','-5558.47','377.142','1.309','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125850','28489','0','1','25472','0','2520.16','-5556.4','376.985','0.715585','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125851','28490','0','1','25477','0','2420.33','-5538.64','377.116','2.02458','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125852','28490','0','1','25476','0','2428.45','-5533.67','377.134','2.46091','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125853','28490','0','1','25475','0','2425.69','-5535.38','377.122','2.32129','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125854','28490','0','1','25478','0','2418.02','-5539.93','377.136','1.90241','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125855','28490','0','1','25477','0','2422.85','-5536.9','377.163','2.16421','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125856','28490','0','1','25475','0','2420.65','-5535.74','377.032','2.09439','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125857','28490','0','1','25476','0','2423.28','-5534.07','377.04','2.18166','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125858','28490','0','1','25478','0','2418.0','-5537.15','377.023','1.95477','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125859','28490','0','1','25476','0','2425.6','-5532.44','377.048','2.28638','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125860','28491','0','1','25481','0','2508.12','-5652.06','377.101','3.96772','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125861','28491','0','1','25480','0','2510.39','-5656.1','377.108','3.38594','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125862','28491','0','1','25482','0','2497.96','-5663.6','377.145','0.902047','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125863','28491','0','1','25480','0','2510.02','-5660.27','377.117','2.82743','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125864','28491','0','1','25482','0','2502.22','-5664.97','377.133','1.48353','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125865','28491','0','1','25479','0','2504.29','-5651.25','377.107','4.50295','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125866','28491','0','1','25481','0','2496.05','-5655.37','377.047','5.89921','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125867','28491','0','1','25482','0','2499.55','-5652.18','377.034','5.2709','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125868','28491','0','1','25480','0','2495.93','-5659.51','377.054','0.226893','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125869','28500','0','1','25498','0','2433.59','-5649.35','420.656','3.34705','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125870','29587','0','1','25496','0','2365.73','-5680.6','382.321','2.54818','180','0.0','0','1','0','0','0');
INSERT ignore INTO `creature` VALUES ('125871','29588','0','1','24719','0','2390.0','-5640.98','377.196','3.12414','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125872','29589','0','1','24719','0','2383.7','-5645.17','420.884','5.63741','180','5.0','0','1','0','0','1');
INSERT ignore INTO `creature` VALUES ('125873','23033','0','1','11686','0','2333.17','-5680.44','391.137','5.98648','180','5.0','0','1','0','0','1');
INSERT ignore INTO `gameobject` VALUES ('63152','191746','0','1','2493.37','-5642.43','420.863','2.16421','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63153','191747','0','1','2427.28','-5544.45','420.863','-0.983229','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63154','191748','0','1','2509.31','-5560.39','420.863','-2.55402','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63155','191503','0','1','2471.9','-5651.71','420.614','2.55691','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63156','191504','0','1','2466.24','-5659.79','420.589','2.46964','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63157','191505','0','1','2453.4','-5659.12','420.567','-1.67387','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63158','191506','0','1','2428.09','-5648.83','420.632','-0.154183','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63159','191507','0','1','2429.86','-5639.13','420.674','-0.241448','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63160','191508','0','1','2438.34','-5655.61','420.543','-1.67387','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63161','191538','0','1','2390.02','-5640.91','377.094','0.59341','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63162','191539','0','1','2383.65','-5645.2','420.773','0.59341','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63163','191540','0','1','2400.86','-5563.21','420.702','2.35874','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63164','191541','0','1','2404.43','-5559.71','420.702','-1.95786','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63165','190557','0','1','2427.61','-5544.96','420.644','-2.30383','0.0','0.0','0.0','1.0','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63166','190557','0','1','2493.01','-5641.83','420.644','1.85005','0.0','0.0','0.0','1.0','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63167','190557','0','1','2508.75','-5560.79','420.644','-1.09956','0.0','0.0','0.0','1.0','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63168','190557','0','1','2411.87','-5626.11','420.644','0.296705','0.0','0.0','0.0','1.0','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63169','191364','0','1','2430.61','-5730.01','157.302','2.55552','0.0','0.0','0.938191','0.346117','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63170','193981','1','1','1841.94','-4462.48','48.2316','4.09641','0.0','0.0','0.888188','-0.45948','25','0','1');
INSERT ignore INTO `gameobject` VALUES ('63171','193981','1','1','-996.195','209.51','108.851','1.98658','0.0','0.0','0.837826','0.545938','25','0','1');
INSERT ignore INTO `gameobject` VALUES ('63172','193981','0','1','1509.99','286.856','-59.5817','3.04359','0.0','0.0','0.9988','0.0489811','25','0','1');
INSERT ignore INTO `gameobject` VALUES ('63173','193981','530','1','9956.36','-7250.34','33.8348','1.82177','0.0','0.0','0.790046','0.613048','25','0','1');
INSERT ignore INTO `gameobject` VALUES ('63174','193981','0','1','-4805.54','-1195.95','507.362','1.17317','0.0','0.0','0.553519','0.832837','25','0','1');
INSERT ignore INTO `gameobject` VALUES ('63175','193981','1','1','10138.5','2315.96','1344.97','5.65953','0.0','0.0','0.306798','-0.951775','25','0','1');
INSERT ignore INTO `gameobject` VALUES ('63176','193981','530','1','-3888.4','-11498.2','-133.625','0.443744','0.0','0.0','0.220056','0.975487','25','0','1');
INSERT ignore INTO `gameobject` VALUES ('63177','191746','0','1','2493.37','-5642.43','420.863','2.16421','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63178','191747','0','1','2427.28','-5544.45','420.863','-0.983229','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63179','191748','0','1','2509.31','-5560.39','420.863','-2.55402','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63180','191503','0','1','2471.9','-5651.71','420.614','2.55691','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63181','191504','0','1','2466.24','-5659.79','420.589','2.46964','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63182','191505','0','1','2453.4','-5659.12','420.567','-1.67387','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63183','191506','0','1','2428.09','-5648.83','420.632','-0.154183','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63184','191507','0','1','2429.86','-5639.13','420.674','-0.241448','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63185','191508','0','1','2438.34','-5655.61','420.543','-1.67387','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63186','191538','0','1','2390.02','-5640.91','377.094','0.59341','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63187','191539','0','1','2383.65','-5645.2','420.773','0.59341','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63188','191540','0','1','2400.86','-5563.21','420.702','2.35874','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63189','191541','0','1','2404.43','-5559.71','420.702','-1.95786','0.0','0.0','0.292372','0.956305','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63190','190557','0','1','2427.61','-5544.96','420.644','-2.30383','0.0','0.0','0.0','1.0','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63191','190557','0','1','2493.01','-5641.83','420.644','1.85005','0.0','0.0','0.0','1.0','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63192','190557','0','1','2508.75','-5560.79','420.644','-1.09956','0.0','0.0','0.0','1.0','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63193','190557','0','1','2411.87','-5626.11','420.644','0.296705','0.0','0.0','0.0','1.0','180','100','0');
INSERT ignore INTO `gameobject` VALUES ('63194','191364','0','1','2430.61','-5730.01','157.302','2.55552','0.0','0.0','0.938191','0.346117','180','100','0');
UPDATE `creature_template` SET `minlevel` = '35', `maxlevel` = '35', `faction_A` = '126', `faction_H` = '126', unit_flags = '32768', `baseattacktime` = '2000', `rangeattacktime` = '0', `dynamicflags` = '0', `scale`='1.000000', `minhealth` = '902', `maxhealth` = '902' WHERE `entry` = '30706';
UPDATE `creature_template` SET `minlevel` = '35', `maxlevel` = '35', `faction_A` = '126', `faction_H` = '126', unit_flags = '32768', `baseattacktime` = '2000', `rangeattacktime` = '0', `dynamicflags` = '0', `scale`='1.000000', `minhealth` = '902', `maxhealth` = '902' WHERE `entry` = '30723';



-- Items descriptions
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=1132;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=2411;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=2414;
UPDATE `item_template` SET `description`='Teaches you how to make a Mighty Troll\'s Blood Elixir.' WHERE `entry`=3831;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=4401;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=5655;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=5656;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=5665;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=5668;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=5864;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=5872;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=5873;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant chest armor to increase mana by 5.' WHERE `entry`=6342;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase Spirit by 1.' WHERE `entry`=6344;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant chest armor to increase mana by 20.' WHERE `entry`=6346;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase Strength by 1.' WHERE `entry`=6347;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase its damage to beasts by 2.' WHERE `entry`=6348;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a two-handed melee weapon to increase Intellect by 3.' WHERE `entry`=6349;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase Spirit by 3.' WHERE `entry`=6375;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to increase Agility by 1.' WHERE `entry`=6377;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8485;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8486;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8487;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8488;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8489;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8490;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8491;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8492;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8494;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8495;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8496;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8497;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8499;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8500;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=8501;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=8563;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=8586;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=8588;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=8591;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=8592;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=8595;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=8629;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=8631;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=8632;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=10360;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=10361;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=10392;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=10393;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=10394;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=10398;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=10822;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=11023;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=11026;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=11027;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a two-handed melee weapon to increase Spirit by 3.' WHERE `entry`=11038;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase Agility by 1.' WHERE `entry`=11039;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a shield to increase armor by 30.' WHERE `entry`=11081;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase shadow resistance by 10.' WHERE `entry`=11098;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase Strength by 3.' WHERE `entry`=11101;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=11110;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase mining skill by 2.' WHERE `entry`=11150;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase herbalism skill by 2.' WHERE `entry`=11151;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase fishing skill by 2.' WHERE `entry`=11152;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase defense rating by 3.' WHERE `entry`=11163;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase its damage to beasts by 6.' WHERE `entry`=11164;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase its damage to elementals by 6.' WHERE `entry`=11165;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase skinning skill by 5.' WHERE `entry`=11166;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to increase Spirit by 3.' WHERE `entry`=11167;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a shield to increase Stamina by 5.' WHERE `entry`=11202;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase mining skill by 5.' WHERE `entry`=11203;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase Spirit by 7.' WHERE `entry`=11204;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase herbalism skill by 5.' WHERE `entry`=11205;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase Agility by 3.' WHERE `entry`=11206;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to often strike for 40 additional fire damage.' WHERE `entry`=11207;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to have a chance of stunning and doing additional damage against demons.' WHERE `entry`=11208;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase defense rating by 5.' WHERE `entry`=11223;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a shield to increase frost resistance by 8.' WHERE `entry`=11224;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase Stamina by 7.' WHERE `entry`=11225;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase mount speed by 2%.' WHERE `entry`=11226;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=11474;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=11825;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=11826;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=12264;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=12302;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=12303;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=12330;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=12351;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=12353;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=12354;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=12529;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=13086;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=13317;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=13321;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=13322;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=13327;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=13331;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=13332;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=13333;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=13334;
UPDATE `item_template` SET `description`='Teaches you how to summon Baron Rivendare\'s steed.  This is a very fast mount.' WHERE `entry`=13335;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=13582;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=13583;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=13584;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=15277;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=15290;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=15292;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=15293;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=15996;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to increase Stamina by 7.' WHERE `entry`=16215;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase all resistances by 5.' WHERE `entry`=16216;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a shield to increase Stamina by 7.' WHERE `entry`=16217;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase Spirit by 9.' WHERE `entry`=16218;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase Agility by 7.' WHERE `entry`=16219;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to increase Spirit by 5.' WHERE `entry`=16220;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant chest armor to increase health by 100.' WHERE `entry`=16221;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a shield to increase Spirit by 9.' WHERE `entry`=16222;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to often chill the target, reducing their movement and attack speed.  Has a reduced effect for players above level 60.' WHERE `entry`=16223;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase armor by 70.' WHERE `entry`=16224;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant chest armor to increase mana by 100.' WHERE `entry`=16242;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to increase Agility by 7.' WHERE `entry`=16245;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase Strength by 9.' WHERE `entry`=16246;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a two-handed melee weapon to increase its damage by 9.' WHERE `entry`=16247;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to often inflict a curse on the target, reducing their melee damage.' WHERE `entry`=16248;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a two-handed melee weapon to increase Intellect by 9.' WHERE `entry`=16249;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase its damage by 5.' WHERE `entry`=16250;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase Stamina by 9.' WHERE `entry`=16251;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to often heal for 75 to 125 and increase Strength by 100 for 15 sec. when attacking in melee. Has a reduced effect for players above level 60.' WHERE `entry`=16252;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant chest armor to increase all stats by 4.' WHERE `entry`=16253;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to often steal life from the enemy and give it to the wielder.  Has a reduced effect for players above level 60.' WHERE `entry`=16254;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a two-handed melee weapon to increase Spirit by 9.' WHERE `entry`=16255;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase Frost spell power by 7.' WHERE `entry`=17725;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18241;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18242;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18243;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18244;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18245;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18246;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18247;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18248;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase spell power by 30.' WHERE `entry`=18259;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase spell power by 29.' WHERE `entry`=18260;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18766;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18767;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18772;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18773;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18774;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18776;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18777;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18778;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18785;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18786;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18787;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18788;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18789;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18790;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18791;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18793;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18794;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18795;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18796;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18797;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18798;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=18902;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=19029;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=19030;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase Strength by 15.' WHERE `entry`=19444;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase Agility by 15.' WHERE `entry`=19445;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to restore 4 mana every 5 seconds.' WHERE `entry`=19446;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase spell power by 15.' WHERE `entry`=19447;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase Spirit by 20.' WHERE `entry`=19448;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase Intellect by 22.' WHERE `entry`=19449;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=19450;
UPDATE `item_template` SET `description`='Teaches you how to summon Bloodlord Mandokir\'s raptor.  This is a very fast mount.' WHERE `entry`=19872;
UPDATE `item_template` SET `description`='Teaches you how to summon High Preist Thekal\'s tiger.  This is a very fast mount.' WHERE `entry`=19902;
UPDATE `item_template` SET `description`='Teaches you how to make a Mageblood Elixir.' WHERE `entry`=20011;
UPDATE `item_template` SET `description`='Teaches you how to make a Major Troll\'s Blood Elixir.' WHERE `entry`=20014;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=20371;
UPDATE `item_template` SET `description`='Crisp, delicious and hopefully worm-free.' WHERE `entry`=20516;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase threat from all attacks and spells by 2%.' WHERE `entry`=20726;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase shadow spell power by 20.' WHERE `entry`=20727;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase fire spell power by 20.' WHERE `entry`=20729;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase spell power by 16.' WHERE `entry`=20730;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase fire resistance by 15.' WHERE `entry`=20732;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase nature resistance by 15.' WHERE `entry`=20733;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to decrease threat from all attacks and spells by 2%.' WHERE `entry`=20735;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=20769;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=21176;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This mount may only be summoned in the Temple of Ahn\'Qiraj.' WHERE `entry`=21218;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=21277;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=21301;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=21305;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=21308;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=21309;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This mount may only be summoned in the Temple of Ahn\'Qiraj.' WHERE `entry`=21321;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This mount may only be summoned in the Temple of Ahn\'Qiraj.' WHERE `entry`=21323;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This mount may only be summoned in the Temple of Ahn\'Qiraj.' WHERE `entry`=21324;
UPDATE `item_template` SET `description`='Seek out a Horde Commendation Officer to exchange signets for recognition.' WHERE `entry`=21438;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=22114;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=22235;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=22345;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a two-handed melee weapon to increase Agility by 25.' WHERE `entry`=22392;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=22395;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=22396;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase defense rating by 12.  Requires a level 35 or higher item.' WHERE `entry`=22530;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase spell power by 15.  Requires a level 35 or higher item.' WHERE `entry`=22531;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to restore 6 mana every 5 seconds.  Requires a level 35 or higher item.' WHERE `entry`=22532;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase Stamina by 12.  Requires a level 35 or higher item.' WHERE `entry`=22533;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase spell power by 15.  Requires a level 35 or higher item.' WHERE `entry`=22534;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a ring to increase physical damage by 2.  Only the enchanter\'s rings can be enchanted and enchanting a ring will cause it to become soulbound.  Requires a level 35 or higher item.' WHERE `entry`=22535;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a ring to increase spell power by 12.  Only the enchanter\'s rings can be enchanted and enchanting a ring will cause it to become soulbound.  Requires a level 35 or higher item.' WHERE `entry`=22536;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a ring to increase spell power by 11.  Only the enchanter\'s rings can be enchanted and enchanting a ring will cause it to become soulbound.  Requires a level 35 or higher item.' WHERE `entry`=22537;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a ring to increase all stats by 4.  Only the enchanter\'s rings can be enchanted, and enchanting a ring will cause it to become soulbound.  Requires a level 35 or higher item.' WHERE `entry`=22538;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a shield to increase Intellect by 12.  Requires a level 35 or higher item.' WHERE `entry`=22539;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a shield to increase block rating by 15.  Requires a level 35 or higher item.' WHERE `entry`=22540;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a shield to increase all resistances by 5.  Requires a level 35 or higher item.' WHERE `entry`=22541;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to restore 4 health and mana every 5 seconds.  Requires a level 35 or higher item.' WHERE `entry`=22542;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to increase Stamina by 12.  Requires a level 35 or higher item.' WHERE `entry`=22543;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to increase Agility by 12.  Requires a level 35 or higher item.' WHERE `entry`=22544;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to increase both hit rating and critical strike rating by 10.  Requires a level 35 or higher item.' WHERE `entry`=22545;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant chest armor to increase all stats by 6.  Requires a level 35 or higher item.' WHERE `entry`=22547;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase all resistances by 7.  Requires a level 35 or higher item.' WHERE `entry`=22548;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase Intellect by 30.  Requires a level 35 or higher item.' WHERE `entry`=22551;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase its damage by 7.  Requires a level 35 or higher item.' WHERE `entry`=22552;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase Strength by 20.  Requires a level 35 or higher item.' WHERE `entry`=22553;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a two-handed melee weapon to increase attack power by 70.  Requires a level 35 or higher item.' WHERE `entry`=22554;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase spell power by 40.  Requires a level 35 or higher item.' WHERE `entry`=22555;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a two-handed melee weapon to increase Agility by 35.  Requires a level 35 or higher item.' WHERE `entry`=22556;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to occasionally heal nearby party members for 180 to 300 when attacking in melee.  Requires a level 35 or higher item.' WHERE `entry`=22557;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to have a 3% chance on spellcast to restore 100 mana to all party members over 10 seconds.  Requires a level 35 or higher item.' WHERE `entry`=22558;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to occasionally increase Agility by 120 and attack speed slightly.  Requires a level 35 or higher item. ' WHERE `entry`=22559;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase fire and arcane spell power by 50.  Requires a level 35 or higher item.' WHERE `entry`=22560;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase frost and shadow spell power by 54.  Requires a level 35 or higher item.' WHERE `entry`=22561;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=23002;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=23005;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=23007;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=23015;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=23083;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=23199;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=23200;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=23713;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=23720;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant bracers to increase spell power by 15.  Requires a level 35 or higher item.' WHERE `entry`=24000;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant chest armor to increase all stats by 6.  Requires a level 35 or higher item.' WHERE `entry`=24003;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=24413;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be used in Outland or Northrend.' WHERE `entry`=25470;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be used in Outland or Northrend.' WHERE `entry`=25471;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.' WHERE `entry`=25472;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=25473;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.' WHERE `entry`=25474;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.' WHERE `entry`=25475;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.' WHERE `entry`=25476;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=25477;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=25527;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=25528;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=25529;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=25531;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=25532;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=25533;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=25535;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=25645;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=27445;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=27544;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=27815;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=27947;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=27984;
UPDATE `item_template` SET `description`='These explosives are a great example of fel orc \'engineering\' in action. They could make even the most accomplished goblin engineer blush.' WHERE `entry`=28039;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=28066;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=28248;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant chest armor to increase resilience rating by 15.  Requires a level 35 or higher item.' WHERE `entry`=28270;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase hit rating by 15.   Requires a level 35 or higher item.' WHERE `entry`=28271;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase spell power by 20.  Requires a level 35 or higher item.' WHERE `entry`=28272;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase spell power by 19.  Requires a level 35 or higher item.' WHERE `entry`=28273;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase spell penetration by 20.  Requires a level 35 or higher item.' WHERE `entry`=28274;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase arcane resistance by 15.  Requires a level 35 or higher item.' WHERE `entry`=28276;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase shadow resistance by 15.  Requires a level 35 or higher item.' WHERE `entry`=28277;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to give a minor movement speed increase and increase Agility by 6.  Requires a level 35 or higher item.' WHERE `entry`=28279;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to give a minor movement speed increase and increase Stamina by 9.  Requires a level 35 or higher item.' WHERE `entry`=28280;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase spell power by 40.  Requires a level 35 or higher item.' WHERE `entry`=28281;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a shield to increase Stamina by 18.  Requires a level 35 or higher item.' WHERE `entry`=28282;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=28357;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=28481;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=28523;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=28915;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=28927;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=28936;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29102;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29103;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29104;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29105;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=29220;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=29221;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=29222;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29223;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29224;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29227;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29228;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29229;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29230;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29231;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=29363;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=29364;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=29389;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29465;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29466;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29467;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=29468;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29469;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29470;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29471;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29472;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=29743;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=29744;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29745;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29746;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=29747;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=29901;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=29902;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=29903;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=29904;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=29953;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=29956;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=29957;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=29958;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=29960;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=30023;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=30360;
UPDATE `item_template` SET `description`='Teaches you how to summon Attumen the Huntsman\'s steed.  This is a very fast mount.' WHERE `entry`=30480;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is an extremely mount.' WHERE `entry`=30609;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=31031;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=31760;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=31829;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=31830;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=31831;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=31832;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=31833;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=31834;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=31835;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=31836;
UPDATE `item_template` SET `description`='Teaches you how to cut an Infused Nightseye.' WHERE `entry`=31877;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=32233;
UPDATE `item_template` SET `description`='Teaches you how to cut an Infused Shadowsong Amethyst.' WHERE `entry`=32300;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=32314;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=32316;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=32317;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=32318;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=32319;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=32330;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Nothrend.  This is a very fast mount.' WHERE `entry`=32458;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=32616;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=32617;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=32622;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=32768;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=32857;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=32858;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=32859;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=32860;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=32861;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=32862;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=33078;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase dodge rating by 12.  Requires a level 35 or higher item.' WHERE `entry`=33148;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to decrease threat from all attacks and spells by 2%.' WHERE `entry`=33150;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to decrease threat from all attacks and spells by 2%.' WHERE `entry`=33151;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase threat from all attacks and spells by 2%.' WHERE `entry`=33153;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=33154;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to increase Agility by 20.  Requires a level 35 or higher item.' WHERE `entry`=33165;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=33224;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=33225;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to occasionally ignore 840 of your enemy\'s armor.  Requires a level 60 or higher item.' WHERE `entry`=33307;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=33505;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=33506;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=33507;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=33809;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=33816;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=33818;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=33843;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=33939;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=33940;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=33941;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=33951;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=33952;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=33953;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.' WHERE `entry`=33976;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=33977;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=33993;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=33999;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be used in Outland or Northrend.' WHERE `entry`=34060;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast ride.' WHERE `entry`=34061;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=34092;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=34129;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=34425;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=34478;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=34492;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=34493;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=34535;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=34955;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=35104;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=35105;
UPDATE `item_template` SET `description`='Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry`=35106;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be used in Outland or Northrend.' WHERE `entry`=35225;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.' WHERE `entry`=35226;
UPDATE `item_template` SET `description`='Teaches you how to cut an Infused Shadowsong Amethyst.' WHERE `entry`=35240;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to give a minor movement speed increase and increase Stamina by 9.  Requires a level 35 or higher item.' WHERE `entry`=35297;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to restore 4 health and mana every 5 seconds.  Requires a level 35 or higher item.' WHERE `entry`=35298;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant boots to give a minor movement speed increase and increase Agility by 6.  Requires a level 35 or higher item.' WHERE `entry`=35299;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=35349;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=35350;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a melee weapon to cause your damaging spells and melee weapon hits to occasionally inflict additional Frost damage and slow the target.  Requires a level 60 or higher item.' WHERE `entry`=35498;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant chest armor to increase defense rating by 16.  Requires a level 35 or higher item.' WHERE `entry`=35500;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=35504;
UPDATE `item_template` SET `description`='Teaches you how to summon the mount of Kael\'thas Sunstrider.  This is a very fast mount.' WHERE `entry`=35513;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase defense rating by 12.  Requires a level 35 or higher item.' WHERE `entry`=35756;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=35906;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=37297;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is an extremely fast mount.' WHERE `entry`=37676;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=37719;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=37828;
UPDATE `item_template` SET `description`='Teaches you how to summon this mount.  This is a very fast mount.' WHERE `entry`=38576;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=38628;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.' WHERE `entry`=39656;
-- Update 1 missen vendor with extendedcost Ahlurglgr !! gglgglglgl! moar extended
UPDATE npc_vendor SET extendedcost=2419 WHERE item=36784 AND entry=25206;
UPDATE npc_vendor SET extendedcost=2415 WHERE item=36783 AND entry=25206;
UPDATE npc_vendor SET extendedcost=2414 WHERE item=37462 AND entry=25206;
UPDATE npc_vendor SET extendedcost=2418 WHERE item=37461 AND entry=25206;
UPDATE npc_vendor SET extendedcost=2414 WHERE item=37463 AND entry=25206;
UPDATE npc_vendor SET extendedcost=2416 WHERE item=37449 AND entry=25206;
UPDATE npc_vendor SET extendedcost=2413 WHERE item=17058 AND entry=25206;
UPDATE npc_vendor SET extendedcost=2416 WHERE item=38351 AND entry=25206;
UPDATE npc_vendor SET extendedcost=2413 WHERE item=17057 AND entry=25206;
UPDATE npc_vendor SET extendedcost=2413 WHERE item=38350 AND entry=25206;
UPDATE npc_vendor SET extendedcost=2417 WHERE item=37464 AND entry=25206;
UPDATE npc_vendor SET extendedcost=1007 WHERE item=15196 AND entry=5049; -- prev 0
UPDATE npc_vendor SET extendedcost=1006 WHERE item=15198 AND entry=5049; -- prev 0
UPDATE npc_vendor SET extendedcost=1003 WHERE item=19032 AND entry=5049; -- prev 0
UPDATE npc_vendor SET extendedcost=1009 WHERE item=19506 AND entry=5049; -- prev 0
UPDATE npc_vendor SET extendedcost=1994 WHERE item=31775 AND entry=5049; -- prev 0
UPDATE npc_vendor SET extendedcost=1958 WHERE item=32828 AND entry=5049; -- prev 0
UPDATE npc_vendor SET extendedcost=1007 WHERE item=15197 AND entry=5188; -- prev 0
UPDATE npc_vendor SET extendedcost=1006 WHERE item=15199 AND entry=5188; -- prev 0
UPDATE npc_vendor SET extendedcost=1003 WHERE item=19031 AND entry=5188; -- prev 0
UPDATE npc_vendor SET extendedcost=1009 WHERE item=19505 AND entry=5188; -- prev 0
UPDATE npc_vendor SET extendedcost=1994 WHERE item=31775 AND entry=5188; -- prev 0
UPDATE npc_vendor SET extendedcost=1958 WHERE item=32828 AND entry=5188; -- prev 0
UPDATE npc_vendor SET extendedcost=1007 WHERE item=15197 AND entry=5189; -- prev 0
UPDATE npc_vendor SET extendedcost=1006 WHERE item=15199 AND entry=5189; -- prev 0
UPDATE npc_vendor SET extendedcost=1003 WHERE item=19031 AND entry=5189; -- prev 0
UPDATE npc_vendor SET extendedcost=1009 WHERE item=19505 AND entry=5189; -- prev 0
UPDATE npc_vendor SET extendedcost=1994 WHERE item=31775 AND entry=5189; -- prev 0
UPDATE npc_vendor SET extendedcost=1958 WHERE item=32828 AND entry=5189; -- prev 0
UPDATE npc_vendor SET extendedcost=1007 WHERE item=15197 AND entry=5190; -- prev 0
UPDATE npc_vendor SET extendedcost=1006 WHERE item=15199 AND entry=5190; -- prev 0
UPDATE npc_vendor SET extendedcost=1003 WHERE item=19031 AND entry=5190; -- prev 0
UPDATE npc_vendor SET extendedcost=1009 WHERE item=19505 AND entry=5190; -- prev 0
UPDATE npc_vendor SET extendedcost=1994 WHERE item=31775 AND entry=5190; -- prev 0
UPDATE npc_vendor SET extendedcost=1958 WHERE item=32828 AND entry=5190; -- prev 0
UPDATE npc_vendor SET extendedcost=1007 WHERE item=15196 AND entry=5191; -- prev 0
UPDATE npc_vendor SET extendedcost=1006 WHERE item=15198 AND entry=5191; -- prev 0
UPDATE npc_vendor SET extendedcost=1003 WHERE item=19032 AND entry=5191; -- prev 0
UPDATE npc_vendor SET extendedcost=1009 WHERE item=19506 AND entry=5191; -- prev 0
UPDATE npc_vendor SET extendedcost=1994 WHERE item=31775 AND entry=5191; -- prev 0
UPDATE npc_vendor SET extendedcost=1958 WHERE item=32828 AND entry=5191; -- prev 0
UPDATE npc_vendor SET extendedcost=1007 WHERE item=15196 AND entry=5193; -- prev 0
UPDATE npc_vendor SET extendedcost=1006 WHERE item=15198 AND entry=5193; -- prev 0
UPDATE npc_vendor SET extendedcost=1003 WHERE item=19032 AND entry=5193; -- prev 0
UPDATE npc_vendor SET extendedcost=1009 WHERE item=19506 AND entry=5193; -- prev 0
UPDATE npc_vendor SET extendedcost=1994 WHERE item=31775 AND entry=5193; -- prev 0
UPDATE npc_vendor SET extendedcost=1958 WHERE item=32828 AND entry=5193; -- prev 0
UPDATE npc_vendor SET extendedcost=127 WHERE item=18606 AND entry=12781; -- prev 386
UPDATE npc_vendor SET extendedcost=2354 WHERE item=18839 AND entry=12781; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=18841 AND entry=12781; -- prev 460
UPDATE npc_vendor SET extendedcost=427 WHERE item=18854 AND entry=12781; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18856 AND entry=12781; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18857 AND entry=12781; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18859 AND entry=12781; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18863 AND entry=12781; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18864 AND entry=12781; -- prev 634
UPDATE npc_vendor SET extendedcost=2241 WHERE item=28234 AND entry=12781; -- prev 2404
UPDATE npc_vendor SET extendedcost=2241 WHERE item=28235 AND entry=12781; -- prev 2404
UPDATE npc_vendor SET extendedcost=2241 WHERE item=28236 AND entry=12781; -- prev 2404
UPDATE npc_vendor SET extendedcost=2241 WHERE item=28237 AND entry=12781; -- prev 2404
UPDATE npc_vendor SET extendedcost=2241 WHERE item=28238 AND entry=12781; -- prev 2404
UPDATE npc_vendor SET extendedcost=2253 WHERE item=28246 AND entry=12781; -- prev 129
UPDATE npc_vendor SET extendedcost=2253 WHERE item=28247 AND entry=12781; -- prev 129
UPDATE npc_vendor SET extendedcost=2269 WHERE item=28379 AND entry=12781; -- prev 165
UPDATE npc_vendor SET extendedcost=2269 WHERE item=28380 AND entry=12781; -- prev 165
UPDATE npc_vendor SET extendedcost=2241 WHERE item=30350 AND entry=12781; -- prev 2404
UPDATE npc_vendor SET extendedcost=2354 WHERE item=32455 AND entry=12781; -- prev 460
UPDATE npc_vendor SET extendedcost=127 WHERE item=18607 AND entry=12793; -- prev 386
UPDATE npc_vendor SET extendedcost=427 WHERE item=18834 AND entry=12793; -- prev 634
UPDATE npc_vendor SET extendedcost=2354 WHERE item=18839 AND entry=12793; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=18841 AND entry=12793; -- prev 460
UPDATE npc_vendor SET extendedcost=427 WHERE item=18845 AND entry=12793; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18846 AND entry=12793; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18849 AND entry=12793; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18850 AND entry=12793; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18851 AND entry=12793; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18852 AND entry=12793; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18853 AND entry=12793; -- prev 634
UPDATE npc_vendor SET extendedcost=2241 WHERE item=28239 AND entry=12793; -- prev 2404
UPDATE npc_vendor SET extendedcost=2241 WHERE item=28240 AND entry=12793; -- prev 2404
UPDATE npc_vendor SET extendedcost=2241 WHERE item=28241 AND entry=12793; -- prev 2404
UPDATE npc_vendor SET extendedcost=2241 WHERE item=28242 AND entry=12793; -- prev 2404
UPDATE npc_vendor SET extendedcost=2241 WHERE item=28243 AND entry=12793; -- prev 2404
UPDATE npc_vendor SET extendedcost=427 WHERE item=29592 AND entry=12793; -- prev 634
UPDATE npc_vendor SET extendedcost=2241 WHERE item=30343 AND entry=12793; -- prev 2404
UPDATE npc_vendor SET extendedcost=2241 WHERE item=30344 AND entry=12793; -- prev 2404
UPDATE npc_vendor SET extendedcost=2241 WHERE item=30345 AND entry=12793; -- prev 2404
UPDATE npc_vendor SET extendedcost=2241 WHERE item=30346 AND entry=12793; -- prev 2404
UPDATE npc_vendor SET extendedcost=2354 WHERE item=32455 AND entry=12793; -- prev 460
UPDATE npc_vendor SET extendedcost=1007 WHERE item=15197 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=838 WHERE item=15200 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=491 WHERE item=16335 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=986 WHERE item=16341 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=492 WHERE item=16486 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=492 WHERE item=16497 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=492 WHERE item=16532 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=1050 WHERE item=18427 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=930 WHERE item=18428 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=492 WHERE item=18429 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=931 WHERE item=18430 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=931 WHERE item=18432 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=492 WHERE item=18434 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=931 WHERE item=18435 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=931 WHERE item=18436 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=931 WHERE item=18437 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=774 WHERE item=18461 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=427 WHERE item=18834 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=427 WHERE item=18845 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=427 WHERE item=18846 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=427 WHERE item=18849 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=427 WHERE item=18850 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=427 WHERE item=18851 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=427 WHERE item=18852 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=427 WHERE item=18853 AND entry=12799; -- prev 0
UPDATE npc_vendor SET extendedcost=427 WHERE item=18854 AND entry=12805; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18856 AND entry=12805; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18857 AND entry=12805; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18858 AND entry=12805; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18859 AND entry=12805; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18862 AND entry=12805; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18863 AND entry=12805; -- prev 634
UPDATE npc_vendor SET extendedcost=427 WHERE item=18864 AND entry=12805; -- prev 634
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17349 AND entry=13216; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17352 AND entry=13216; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=19316 AND entry=13216; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=19317 AND entry=13216; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17349 AND entry=13217; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17352 AND entry=13217; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=19316 AND entry=13217; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=19317 AND entry=13217; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17349 AND entry=13218; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17352 AND entry=13218; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=19316 AND entry=13218; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=19317 AND entry=13218; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17349 AND entry=13219; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17352 AND entry=13219; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=19316 AND entry=13219; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=19317 AND entry=13219; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17349 AND entry=14753; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17352 AND entry=14753; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17349 AND entry=14754; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17352 AND entry=14754; -- prev 460
UPDATE npc_vendor SET extendedcost=1054 WHERE item=21565 AND entry=14754; -- prev 0
UPDATE npc_vendor SET extendedcost=1055 WHERE item=21566 AND entry=14754; -- prev 0
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17349 AND entry=15126; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17352 AND entry=15126; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17349 AND entry=15127; -- prev 460
UPDATE npc_vendor SET extendedcost=2354 WHERE item=17352 AND entry=15127; -- prev 460
UPDATE npc_vendor SET extendedcost=427 WHERE item=20044 AND entry=15127; -- prev 0
UPDATE npc_vendor SET extendedcost=427 WHERE item=20051 AND entry=15127; -- prev 0
UPDATE npc_vendor SET extendedcost=501 WHERE item=20056 AND entry=15127; -- prev 0
UPDATE npc_vendor SET extendedcost=933 WHERE item=20118 AND entry=15127; -- prev 0
UPDATE npc_vendor SET extendedcost=887 WHERE item=20119 AND entry=15127; -- prev 0
UPDATE npc_vendor SET extendedcost=841 WHERE item=20120 AND entry=15127; -- prev 0
UPDATE npc_vendor SET extendedcost=933 WHERE item=20121 AND entry=15127; -- prev 0
UPDATE npc_vendor SET extendedcost=887 WHERE item=20122 AND entry=15127; -- prev 0
UPDATE npc_vendor SET extendedcost=841 WHERE item=20123 AND entry=15127; -- prev 0
UPDATE npc_vendor SET extendedcost=1007 WHERE item=15197 AND entry=16610; -- prev 0
UPDATE npc_vendor SET extendedcost=1006 WHERE item=15199 AND entry=16610; -- prev 0
UPDATE npc_vendor SET extendedcost=1003 WHERE item=19031 AND entry=16610; -- prev 0
UPDATE npc_vendor SET extendedcost=1009 WHERE item=19505 AND entry=16610; -- prev 0
UPDATE npc_vendor SET extendedcost=1994 WHERE item=31775 AND entry=16610; -- prev 0
UPDATE npc_vendor SET extendedcost=1958 WHERE item=32828 AND entry=16610; -- prev 0
UPDATE npc_vendor SET extendedcost=532 WHERE item=19319 AND entry=16709; -- prev 0
UPDATE npc_vendor SET extendedcost=532 WHERE item=19320 AND entry=16709; -- prev 0
UPDATE npc_vendor SET extendedcost=1007 WHERE item=15196 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=1006 WHERE item=15198 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=1003 WHERE item=19032 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=1009 WHERE item=19506 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=1994 WHERE item=31775 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32785 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32786 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32787 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32788 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32789 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32790 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32791 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32792 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32795 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32796 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32797 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32798 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32799 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32800 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32801 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32802 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32803 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32804 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32805 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32807 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32808 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32809 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32810 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32811 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32812 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32813 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32814 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32816 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32817 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32818 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32820 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32821 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=1958 WHERE item=32828 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32979 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32980 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32981 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32988 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32989 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32990 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=169 WHERE item=32997 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32998 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32999 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=2248 WHERE item=33065 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=2248 WHERE item=33066 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=2248 WHERE item=33067 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=2248 WHERE item=33068 AND entry=16766; -- prev 0
UPDATE npc_vendor SET extendedcost=2520 WHERE item=22999 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2520 WHERE item=23122 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2520 WHERE item=23123 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2522 WHERE item=40492 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2521 WHERE item=40593 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2520 WHERE item=40601 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2518 WHERE item=43068 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2518 WHERE item=43070 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2518 WHERE item=43073 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2518 WHERE item=43074 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2518 WHERE item=43077 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2518 WHERE item=43078 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2518 WHERE item=43081 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2518 WHERE item=43082 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2519 WHERE item=43530 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=2519 WHERE item=43531 AND entry=16786; -- prev 0
UPDATE npc_vendor SET extendedcost=171 WHERE item=32785 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=171 WHERE item=32786 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=171 WHERE item=32787 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=171 WHERE item=32788 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=171 WHERE item=32789 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=171 WHERE item=32790 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=171 WHERE item=32791 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=171 WHERE item=32792 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=171 WHERE item=32793 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=171 WHERE item=32794 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=171 WHERE item=32795 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=171 WHERE item=32796 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=172 WHERE item=32797 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=172 WHERE item=32798 AND entry=23447; -- prev 0
UPDATE npc_vendor SET extendedcost=172 WHERE item=32799 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=172 WHERE item=32800 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=172 WHERE item=32801 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=172 WHERE item=32802 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=172 WHERE item=32803 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=172 WHERE item=32804 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=172 WHERE item=32805 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=172 WHERE item=32806 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=172 WHERE item=32807 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=172 WHERE item=32808 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=169 WHERE item=32809 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=169 WHERE item=32810 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=169 WHERE item=32811 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=169 WHERE item=32812 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=169 WHERE item=32813 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=169 WHERE item=32814 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=169 WHERE item=32816 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=169 WHERE item=32817 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=169 WHERE item=32818 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=169 WHERE item=32819 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=169 WHERE item=32820 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=169 WHERE item=32821 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=172 WHERE item=32979 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=169 WHERE item=32980 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=171 WHERE item=32981 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=172 WHERE item=32988 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=169 WHERE item=32989 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=171 WHERE item=32990 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=169 WHERE item=32997 AND entry=23447; -- prev 1935
UPDATE npc_vendor SET extendedcost=172 WHERE item=32998 AND entry=23447; -- prev 1923
UPDATE npc_vendor SET extendedcost=171 WHERE item=32999 AND entry=23447; -- prev 1911
UPDATE npc_vendor SET extendedcost=2425 WHERE item=33056 AND entry=23447; -- prev 129
UPDATE npc_vendor SET extendedcost=2425 WHERE item=33057 AND entry=23447; -- prev 129
UPDATE npc_vendor SET extendedcost=2425 WHERE item=33064 AND entry=23447; -- prev 129
UPDATE npc_vendor SET extendedcost=2248 WHERE item=33065 AND entry=23447; -- prev 127
UPDATE npc_vendor SET extendedcost=2248 WHERE item=33066 AND entry=23447; -- prev 127
UPDATE npc_vendor SET extendedcost=2248 WHERE item=33067 AND entry=23447; -- prev 127
UPDATE npc_vendor SET extendedcost=2248 WHERE item=33068 AND entry=23447; -- prev 127
UPDATE npc_vendor SET extendedcost=1959 WHERE item=35716 AND entry=23483; -- prev 0
UPDATE npc_vendor SET extendedcost=1959 WHERE item=35717 AND entry=23483; -- prev 0
UPDATE npc_vendor SET extendedcost=1959 WHERE item=35716 AND entry=23484; -- prev 0
UPDATE npc_vendor SET extendedcost=1959 WHERE item=35717 AND entry=23484; -- prev 0
UPDATE npc_vendor SET extendedcost=2275 WHERE item=33927 AND entry=23710; -- prev 2274
UPDATE npc_vendor SET extendedcost=2276 WHERE item=37571 AND entry=23710; -- prev 0
UPDATE npc_vendor SET extendedcost=2398 WHERE item=37750 AND entry=23710; -- prev 0
UPDATE npc_vendor SET extendedcost=2399 WHERE item=37816 AND entry=23710; -- prev 0
UPDATE npc_vendor SET extendedcost=2424 WHERE item=39476 AND entry=23710; -- prev 0
UPDATE npc_vendor SET extendedcost=0 WHERE item=33976 AND entry=24468; -- prev 2273
UPDATE npc_vendor SET extendedcost=0 WHERE item=33977 AND entry=24468; -- prev 2273
UPDATE npc_vendor SET extendedcost=2276 WHERE item=33862 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=2276 WHERE item=33863 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=2274 WHERE item=33864 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=2275 WHERE item=33868 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=2275 WHERE item=33927 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=2275 WHERE item=33966 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=2274 WHERE item=33967 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=2274 WHERE item=33968 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=2274 WHERE item=33969 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=2275 WHERE item=34008 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=2276 WHERE item=37599 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=2398 WHERE item=37750 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=2399 WHERE item=37816 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=2424 WHERE item=39477 AND entry=24495; -- prev 0
UPDATE npc_vendor SET extendedcost=0 WHERE item=33976 AND entry=24510; -- prev 2273
UPDATE npc_vendor SET extendedcost=0 WHERE item=33977 AND entry=24510; -- prev 2273
UPDATE npc_vendor SET extendedcost=2413 WHERE item=17057 AND entry=25206; -- prev 0
UPDATE npc_vendor SET extendedcost=2413 WHERE item=17058 AND entry=25206; -- prev 0
UPDATE npc_vendor SET extendedcost=2415 WHERE item=36783 AND entry=25206; -- prev 0
UPDATE npc_vendor SET extendedcost=2418 WHERE item=36784 AND entry=25206; -- prev 0
UPDATE npc_vendor SET extendedcost=2416 WHERE item=37449 AND entry=25206; -- prev 0
UPDATE npc_vendor SET extendedcost=2418 WHERE item=37461 AND entry=25206; -- prev 0
UPDATE npc_vendor SET extendedcost=2414 WHERE item=37462 AND entry=25206; -- prev 0
UPDATE npc_vendor SET extendedcost=2414 WHERE item=37463 AND entry=25206; -- prev 0
UPDATE npc_vendor SET extendedcost=2417 WHERE item=37464 AND entry=25206; -- prev 0
UPDATE npc_vendor SET extendedcost=2413 WHERE item=38350 AND entry=25206; -- prev 0
UPDATE npc_vendor SET extendedcost=2416 WHERE item=38351 AND entry=25206; -- prev 0
UPDATE npc_vendor SET extendedcost=1357 WHERE item=31982 AND entry=26091; -- prev 1358
UPDATE npc_vendor SET extendedcost=1497 WHERE item=31979 AND entry=26092; -- prev 1485
UPDATE npc_vendor SET extendedcost=1485 WHERE item=31981 AND entry=26092; -- prev 1494
UPDATE npc_vendor SET extendedcost=1491 WHERE item=31982 AND entry=26092; -- prev 1497
UPDATE npc_vendor SET extendedcost=1494 WHERE item=31983 AND entry=26092; -- prev 1491
UPDATE npc_vendor SET extendedcost=2349 WHERE item=34599 AND entry=26123; -- prev 0
UPDATE npc_vendor SET extendedcost=2349 WHERE item=34599 AND entry=26124; -- prev 0
UPDATE npc_vendor SET extendedcost=2275 WHERE item=33047 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2276 WHERE item=33862 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2276 WHERE item=33863 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2274 WHERE item=33864 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2275 WHERE item=33868 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2275 WHERE item=33927 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2275 WHERE item=33966 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2274 WHERE item=33967 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2274 WHERE item=33968 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2274 WHERE item=33969 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2276 WHERE item=37571 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2398 WHERE item=37750 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2399 WHERE item=37816 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2424 WHERE item=39476 AND entry=27478; -- prev 0
UPDATE npc_vendor SET extendedcost=2276 WHERE item=33862 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2276 WHERE item=33863 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2274 WHERE item=33864 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2275 WHERE item=33868 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2275 WHERE item=33927 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2275 WHERE item=33966 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2274 WHERE item=33967 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2274 WHERE item=33968 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2274 WHERE item=33969 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2275 WHERE item=34008 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2276 WHERE item=37599 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2398 WHERE item=37750 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2399 WHERE item=37816 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2424 WHERE item=39477 AND entry=27489; -- prev 0
UPDATE npc_vendor SET extendedcost=2422 WHERE item=38353 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2422 WHERE item=38354 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2422 WHERE item=38355 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38356 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38357 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2421 WHERE item=38358 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2421 WHERE item=38359 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38360 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38361 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38362 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38363 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38364 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38365 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38366 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38367 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38368 AND entry=27730; -- prev 0
UPDATE npc_vendor SET extendedcost=2422 WHERE item=38353 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2422 WHERE item=38354 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2422 WHERE item=38355 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38356 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38357 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2421 WHERE item=38358 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2421 WHERE item=38359 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38360 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38361 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38362 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38363 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38364 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38365 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38366 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38367 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=2420 WHERE item=38368 AND entry=27760; -- prev 0
UPDATE npc_vendor SET extendedcost=1994 WHERE item=31775 AND entry=28776; -- prev 0
UPDATE npc_vendor SET extendedcost=1958 WHERE item=32828 AND entry=28776; -- prev 0
UPDATE npc_vendor SET extendedcost=2500 WHERE item=43462 AND entry=29744; -- prev 0
UPDATE npc_vendor SET extendedcost=2500 WHERE item=43470 AND entry=29744; -- prev 0
UPDATE npc_vendor SET extendedcost=2501 WHERE item=43472 AND entry=29744; -- prev 0
UPDATE npc_vendor SET extendedcost=2501 WHERE item=43473 AND entry=29744; -- prev 0
UPDATE npc_vendor SET extendedcost=2500 WHERE item=43499 AND entry=29744; -- prev 0
UPDATE npc_vendor SET extendedcost=2500 WHERE item=43462 AND entry=30472; -- prev 0
UPDATE npc_vendor SET extendedcost=2500 WHERE item=43470 AND entry=30472; -- prev 0
UPDATE npc_vendor SET extendedcost=2501 WHERE item=43472 AND entry=30472; -- prev 0
UPDATE npc_vendor SET extendedcost=2501 WHERE item=43473 AND entry=30472; -- prev 0
UPDATE npc_vendor SET extendedcost=2500 WHERE item=43499 AND entry=30472; -- prev 0
UPDATE npc_vendor SET extendedcost=2480 WHERE item=43007 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43018 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43019 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43020 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43021 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43022 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43023 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43024 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43025 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43026 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43027 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43028 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43029 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43030 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43031 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43032 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43033 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43034 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43035 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43036 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43037 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43505 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43506 AND entry=31031; -- prev 0
UPDATE npc_vendor SET extendedcost=2480 WHERE item=43007 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43018 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43019 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43020 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43021 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43022 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43023 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43024 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43025 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43026 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43027 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43028 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43029 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43030 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43031 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43032 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43033 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43034 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43035 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43036 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43037 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43505 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2478 WHERE item=43506 AND entry=31032; -- prev 0
UPDATE npc_vendor SET extendedcost=2546 WHERE item=44067 AND entry=31101; -- prev 0
UPDATE npc_vendor SET extendedcost=2546 WHERE item=44068 AND entry=31101; -- prev 0
UPDATE npc_vendor SET extendedcost=2549 WHERE item=44069 AND entry=31101; -- prev 0
UPDATE npc_vendor SET extendedcost=2549 WHERE item=44075 AND entry=31101; -- prev 0
UPDATE npc_vendor SET extendedcost=2540 WHERE item=40801 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=40802 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=40803 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=40925 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=40999 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41005 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41135 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41141 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41284 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41291 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41765 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41771 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41872 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41938 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41969 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=42015 AND entry=31579; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=40801 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=40802 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=40803 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=40925 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=40999 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41005 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41135 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41141 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41284 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41291 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41765 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41771 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41872 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41938 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=41969 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2540 WHERE item=42015 AND entry=31581; -- prev 2539
UPDATE npc_vendor SET extendedcost=2483 WHERE item=43236 AND entry=32334; -- prev 0

-- random
-- some quest texts to wdb values
UPDATE `quest_template` SET `Details`='You have served the Deathstalkers well, $N, but perhaps it is time for you to venture outward. While you have shown aptitude in the ways of stealth and deception, you still require much training.$B$BThe Deathstalkers have allies within the Shattered Hand. Seek out those that would assist us - find Shenthul in Orgrimmar.

',`Objectives`='Journey to Orgrimmar and speak with Shenthul at the Cleft of Shadow.

' WHERE `entry`=2378;
UPDATE `quest_template` SET `Objectives`='Slay Fineous Darkvire and recover the great hammer, Ironfel. Take Ironfel to the Shrine of Thaurissan and place it on the statue of Franclorn Forgewright.

' WHERE `entry`=3802;
UPDATE `quest_template` SET `Objectives`='Travel to Blackrock Depths and slay Bael\'Gar.$B$BYou only know that the giant resides inside Blackrock Depths. Remember to use the Altered Black Dragonflight Molt on Bael\'Gar\'s remains to capture the Fiery Essence.$B$BReturn the Encased Fiery Essence to Cyrus Therepentous.

' WHERE `entry`=4024;
UPDATE `quest_template` SET `Objectives`='Venture to Blackrock Depths and destroy the vile aggressors!$B$BWarlord Goretooth wants you to kill 15 Anvilrage Guardsmen, 10 Anvilrage Wardens and 5 Anvilrage Footmen. Return to him once your task is complete.

' WHERE `entry`=4081;
UPDATE `quest_template` SET `Details`='This is grim news, $N. To discover that our mortal enemies are merely pawns of a much greater threat is disheartening. There is no possible way that Lakeshire could survive an attack from both the Blackrock orcs and the black dragonflight. Should Lakeshire fall to this menace, Darkshire would fall next, and then what? Goldshire? Stormwind itself?$B$BYou must take this information to King Varian Wrynn in Stormwind at once! If this does not merit the aid of Stormwind, nothing will and all is lost.

' WHERE `entry`=4184;
UPDATE `quest_template` SET `Objectives`='Take Wrynn\'s Decree to Magistrate Solomon in Lakeshire.

' WHERE `entry`=4186;
UPDATE `quest_template` SET `Details`='Master want weeds. Us gots big hands and not good at picking. You help us and we not hurt you. Us need gloom weed. Many weeds around here and near road.$b$bWhen you have gloom weed you take to Master Holland in Brill graveyard.

' WHERE `entry`=5481;
UPDATE `quest_template` SET `Details`='Behold - the Hand of Iruxos. A gruesome sight indeed.$B$BYou must possess it if the demon portals at Mannoroc Coven are to be banished... which is what I now ask you to do. The Demon threat is increasing and we must close these portals to stem the tide of demons to this world. Good luck, $N... and be wary of the portal guardians.

',`Objectives`='Banish 6 Portals at Mannoroc Coven and return to Taiga Wisemane at Shadowprey Village.

' WHERE `entry`=5581;
UPDATE `quest_template` SET `Details`='Welcome to the World of Warcraft!$B$BAs special thanks for purchasing the World of Warcraft Collector\'s Edition, turn in this gift voucher to Merissa Stilwell in Goldshire.  You\'ll then be given a gift: a little companion to join you on your quest for adventure and glory.$B$BThanks again, and enjoy your stay in the World of Warcraft!

' WHERE `entry`=5805;
UPDATE `quest_template` SET `Details`='Welcome to the World of Warcraft!$B$BAs special thanks for purchasing the World of Warcraft Collector\'s Edition, turn in this gift voucher to Jaeleil in Azure Watch.  You\'ll then be given a gift: a little companion to join you on your quest for adventure and glory.$B$BThanks again, and enjoy your stay in the World of Warcraft!

' WHERE `entry`=9278;
UPDATE `quest_template` SET `Details`='I fear that these dwarves do not understand what they have built upon. This area was once the ancestral grounds for the Shadowmoon orcs. I speak of spirits, $r.$B$BFor nearly twenty years they have laid dormant beneath the Wildhammer Stronghold, but recently, something has riled them up.$B$BVenture beyond the gates of Wildhammer and seek out the pools and rivers of fel lava found across this land. Near the lava will be ever-burning ash. Bring me this ash so that I may craft something that will help us.

' WHERE `entry`=10642;
UPDATE `quest_template` SET `Details`='Four trials you must pass before you are deemed worthy by the naaru.$B$BWithin the Shattered Halls of Hellfire Citadel are three of your people. They are held there by the merciless one, Kargath Bladefist. He seeks to execute them as a sign of his virility and power. You must save these prisoners before such an atrocity can come to pass. As proof of deed, bring me the unused axe of the executioner. It must not have a drop of blood on its blade!

' WHERE `entry`=10884;
UPDATE `quest_template` SET `Objectives`='Win an Alterac Valley battleground match and return to an Alliance Brigadier General at any Alliance capital city, Dalaran or Shattrath.

' WHERE `entry`=11336;
UPDATE `quest_template` SET `Objectives`='Win a Warsong Gulch battleground match and return to a Horde Warbringer at any Horde capital city, Dalaran or Shattrath.

' WHERE `entry`=11342;
-- creature_template
-- update dalaran guards flags
UPDATE `creature_template` SET `npcflag`=(npcflag|268435456) where entry in (29255, 29254);

-- Some duplicated creatures to remove
DELETE FROM `creature` WHERE `guid` IN (120674,120643,120791,120771,120698,120657,120601,120732,120828,120701,120731,
    120778,120749,120684,120660,120787,120659,120649,120654);
-- Barber places in Stormwind and Ironforge
DELETE FROM gameobject WHERE guid = '1801';
DELETE FROM gameobject WHERE guid = '1821';
DELETE FROM gameobject WHERE guid = '26392';
DELETE FROM gameobject WHERE guid = '26393';
DELETE FROM gameobject WHERE guid = '61996';
DELETE FROM gameobject WHERE guid = '26394';
DELETE FROM gameobject WHERE guid = '26391';
DELETE FROM gameobject WHERE guid = '26397';
DELETE FROM gameobject WHERE guid = '26395';
DELETE FROM gameobject WHERE guid = '26396';
DELETE FROM gameobject WHERE guid = '26398';
INSERT IGNORE INTO `creature` VALUES (96270,29141,0,1,25955,0,-4829.64,-918.703,502.299,3.45575,180,0.0,0,955,0,0,0);
INSERT IGNORE INTO `creature` VALUES (97112,29142,0,1,25624,0,-8744.62,657.759,105.175,3.1765,180,0.0,0,1220,0,0,0);
INSERT IGNORE INTO `creature_addon` VALUES (96270,0,50398208,0,257,0,0,NULL);
INSERT IGNORE INTO `creature_addon` VALUES (97112,0,50332672,0,257,0,0,NULL);
INSERT IGNORE INTO `gameobject` VALUES (54958,190680,0,1,-4836.21,-925.143,502.22,1.67551,0.0,0.0,0.904455,0.426569,180,0,1);
INSERT IGNORE INTO `gameobject` VALUES (54959,190681,0,1,-4838.56,-925.495,502.22,1.69297,0.0,0.0,0.904455,0.426569,180,0,1);
INSERT IGNORE INTO `gameobject` VALUES (54960,190683,0,1,-4826.54,-921.986,502.49,-1.45735,0.0,0.0,0.904455,0.426569,180,0,1);
INSERT IGNORE INTO `gameobject` VALUES (54962,190684,0,1,-4820.6,-921.132,502.49,-1.45735,0.0,0.0,0.904455,0.426569,180,0,1);
INSERT IGNORE INTO `gameobject` VALUES (54964,190710,0,1,-8749.47,651.336,105.383,-1.26536,0.0,0.0,0.944089,-0.329691,180,0,1);
INSERT IGNORE INTO `gameobject` VALUES (54965,190711,0,1,-8743.94,653.021,105.383,-1.26536,0.0,0.0,0.944089,-0.329691,180,0,1);
INSERT IGNORE INTO `gameobject` VALUES (54966,190712,0,1,-8739.03,654.5,105.364,-1.26536,0.0,0.0,0.944089,-0.329691,180,0,1);
INSERT IGNORE INTO `gameobject` VALUES (55002,190714,0,1,-8750.38,661.053,105.017,-1.34137,0.0,0.0,0.944089,-0.329691,180,0,1);

-- page text update
UPDATE `page_text` SET `text`='More rapid than eagles his coursers they came,$B$BAnd he whistled, and shouted, and called them by name;$B$B\"Now, Mercer! now, Chilton! now, Jordan and Kaplan!$B$BOn, Nagle! on Pardo! on, Goodman and Metzen!$B$BTo the top of the porch! to the top of the wall!$B$BNow dash away! dash away! dash away all!\"
' WHERE `entry`=2844;

-- Redone all rogue trainers
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=917 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=917 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=917 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=918 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=918 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=918 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=1234 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=1234 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=1234 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=1411 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=1411 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=1411 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=2130 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=2130 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=2130 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=3170 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=3170 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=3170 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=3327 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=3327 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=3327 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=3328 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=3328 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=3328 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=3401 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=3401 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=3401 AND `spell`=17348;
INSERT IGNORE INTO `npc_trainer` VALUES (3594,408,10000,0,0,30);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,674,300,0,0,10);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,703,1200,0,0,14);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1725,4000,0,0,22);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1758,1200,0,0,14);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1759,4000,0,0,22);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1760,10000,0,0,30);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1766,800,0,0,12);
UPDATE `npc_trainer` SET `reqlevel`=0 WHERE `entry`=3594 AND `spell`=1784;
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1785,3000,0,0,20);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1786,20000,0,0,40);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1787,54000,0,0,60);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1804,1800,0,0,16);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1833,6000,0,0,26);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1842,10000,0,0,30);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1856,4000,0,0,22);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1857,27000,0,0,42);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1860,20000,0,0,40);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1943,3000,0,0,20);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,1966,1800,0,0,16);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,2070,8000,0,0,28);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,2094,14000,0,0,34);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,2589,800,0,0,12);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,2590,3000,0,0,20);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,2591,8000,0,0,28);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,2836,5000,0,0,24);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,2983,300,0,0,10);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,3127,800,0,0,12);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,5171,300,0,0,10);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,5277,200,0,0,8);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,5938,100000,0,0,70);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,6760,200,0,0,8);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,6761,1800,0,0,16);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,6762,5000,0,0,24);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,6768,8000,0,0,28);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,6770,300,0,0,10);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,6774,27000,0,0,42);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8621,18000,0,0,38);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8623,12000,0,0,32);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8624,20000,0,0,40);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8631,4000,0,0,22);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8632,10000,0,0,30);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8633,18000,0,0,38);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8637,20000,0,0,40);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8639,8000,0,0,28);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8640,16000,0,0,36);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8643,35000,0,0,50);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8647,1200,0,0,14);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8649,6000,0,0,26);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8650,16000,0,0,36);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8676,2900,0,0,18);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8696,14000,0,0,34);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8721,16000,0,0,36);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8724,6000,0,0,26);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,8725,14000,0,0,34);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11197,31000,0,0,46);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11198,50000,0,0,56);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11267,27000,0,0,42);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11268,35000,0,0,50);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11269,52000,0,0,58);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11273,29000,0,0,44);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11274,46000,0,0,52);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11275,54000,0,0,60);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11279,29000,0,0,44);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11280,46000,0,0,52);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11281,54000,0,0,60);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11289,31000,0,0,46);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11290,48000,0,0,54);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11293,31000,0,0,46);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11294,48000,0,0,54);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11297,33000,0,0,48);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11299,33000,0,0,48);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11300,50000,0,0,56);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11303,46000,0,0,52);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,11305,52000,0,0,58);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,17347,384,0,0,46);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,17348,650,0,0,58);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,25300,72000,0,0,60);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,25302,50000,0,0,60);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,26669,35000,0,0,50);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,26679,72000,0,0,64);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,26839,50000,0,0,61);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,26861,50000,0,0,62);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,26862,100000,0,0,70);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,26863,110000,0,0,68);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,26864,2700,0,0,70);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,26865,140000,0,0,64);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,26866,99000,0,0,66);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,26867,120000,0,0,68);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,26884,100000,0,0,70);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,26889,59000,0,0,62);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,27441,80000,0,0,66);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,27448,72000,0,0,64);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,31016,65000,0,0,60);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,31224,89000,0,0,66);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,32645,59000,0,0,62);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,32684,100000,0,0,69);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,34411,5500,0,0,50);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,34412,6500,0,0,60);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,34413,7500,0,0,70);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48637,300000,0,0,76);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48638,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48656,300000,0,0,74);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48657,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48658,300000,0,0,72);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48659,300000,0,0,78);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48660,15000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48663,15000,0,0,75);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48666,15000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48667,300000,0,0,73);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48668,300000,0,0,79);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48669,300000,0,0,77);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48671,300000,0,0,74);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48672,300000,0,0,79);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48673,100000,0,0,70);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48674,300000,0,0,76);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48675,300000,0,0,75);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48676,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48689,140000,0,0,70);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48690,300000,0,0,75);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,48691,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,51722,3000,0,0,20);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,51723,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,51724,300000,0,0,71);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,57934,300000,0,0,75);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,57992,300000,0,0,74);
INSERT IGNORE INTO `npc_trainer` VALUES (3594,57993,300000,0,0,80);
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=3599 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=3599 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=3599 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=4163 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=4163 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=4163 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=4214 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=4214 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=4214 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=4215 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=4215 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=4215 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=4582 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=4582 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=4582 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=4583 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=4583 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=4583 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=4584 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=4584 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=4584 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=5165 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=5165 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=5165 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=5166 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=5166 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=5166 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=5167 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=5167 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=5167 AND `spell`=17348;
INSERT IGNORE INTO `npc_trainer` VALUES (6707,53,100,0,0,4);
UPDATE `npc_trainer` SET `spellcost`=300 WHERE `entry`=6707 AND `spell`=674;
INSERT IGNORE INTO `npc_trainer` VALUES (6707,921,100,0,0,4);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,1776,100,0,0,6);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,1784,10,0,0,0);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,3127,800,0,0,12);
UPDATE `npc_trainer` SET `spellcost`=100000 WHERE `entry`=6707 AND `spell`=5938;
UPDATE `npc_trainer` SET `spellcost`=8000 WHERE `entry`=6707 AND `spell`=6768;
UPDATE `npc_trainer` SET `spellcost`=20000 WHERE `entry`=6707 AND `spell`=8637;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=6707 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=72000 WHERE `entry`=6707 AND `spell`=25300;
UPDATE `npc_trainer` SET `spellcost`=100000 WHERE `entry`=6707 AND `spell`=26862;
UPDATE `npc_trainer` SET `spellcost`=2700 WHERE `entry`=6707 AND `spell`=26864;
UPDATE `npc_trainer` SET `spellcost`=100000 WHERE `entry`=6707 AND `spell`=26884;
UPDATE `npc_trainer` SET `spellcost`=100000 WHERE `entry`=6707 AND `spell`=32684;
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48637,300000,0,0,76);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48638,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48656,300000,0,0,74);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48657,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48658,300000,0,0,72);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48659,300000,0,0,78);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48660,15000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48663,15000,0,0,75);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48666,15000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48667,300000,0,0,73);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48668,300000,0,0,79);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48669,300000,0,0,77);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48671,300000,0,0,74);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48672,300000,0,0,79);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48673,100000,0,0,70);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48674,300000,0,0,76);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48675,300000,0,0,75);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48676,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48689,140000,0,0,70);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48690,300000,0,0,75);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,48691,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,51722,3000,0,0,20);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,51723,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,51724,300000,0,0,71);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,57934,300000,0,0,75);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,57992,300000,0,0,74);
INSERT IGNORE INTO `npc_trainer` VALUES (6707,57993,300000,0,0,80);
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=13283 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=13283 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=13283 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=16279 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=16279 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=16279 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=16684 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=16684 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=16684 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=16685 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=16685 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=16685 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=10,`reqlevel`=0 WHERE `entry`=16686 AND `spell`=1784;
UPDATE `npc_trainer` SET `spellcost`=384 WHERE `entry`=16686 AND `spell`=17347;
UPDATE `npc_trainer` SET `spellcost`=650 WHERE `entry`=16686 AND `spell`=17348;
UPDATE `npc_trainer` SET `reqlevel`=4 WHERE `entry`=26329 AND `spell`=53;
UPDATE `npc_trainer` SET `reqlevel`=30 WHERE `entry`=26329 AND `spell`=408;
UPDATE `npc_trainer` SET `reqlevel`=14 WHERE `entry`=26329 AND `spell`=703;
UPDATE `npc_trainer` SET `reqlevel`=4 WHERE `entry`=26329 AND `spell`=921;
UPDATE `npc_trainer` SET `reqlevel`=22 WHERE `entry`=26329 AND `spell`=1725;
UPDATE `npc_trainer` SET `reqlevel`=6 WHERE `entry`=26329 AND `spell`=1757;
UPDATE `npc_trainer` SET `reqlevel`=14 WHERE `entry`=26329 AND `spell`=1758;
UPDATE `npc_trainer` SET `reqlevel`=22 WHERE `entry`=26329 AND `spell`=1759;
UPDATE `npc_trainer` SET `reqlevel`=30 WHERE `entry`=26329 AND `spell`=1760;
UPDATE `npc_trainer` SET `reqlevel`=12 WHERE `entry`=26329 AND `spell`=1766;
UPDATE `npc_trainer` SET `reqlevel`=6 WHERE `entry`=26329 AND `spell`=1776;
UPDATE `npc_trainer` SET `reqlevel`=20 WHERE `entry`=26329 AND `spell`=1785;
UPDATE `npc_trainer` SET `reqlevel`=40 WHERE `entry`=26329 AND `spell`=1786;
UPDATE `npc_trainer` SET `reqlevel`=60 WHERE `entry`=26329 AND `spell`=1787;
UPDATE `npc_trainer` SET `reqlevel`=26 WHERE `entry`=26329 AND `spell`=1833;
UPDATE `npc_trainer` SET `reqlevel`=30 WHERE `entry`=26329 AND `spell`=1842;
UPDATE `npc_trainer` SET `reqlevel`=22 WHERE `entry`=26329 AND `spell`=1856;
UPDATE `npc_trainer` SET `reqlevel`=42 WHERE `entry`=26329 AND `spell`=1857;
UPDATE `npc_trainer` SET `reqlevel`=40 WHERE `entry`=26329 AND `spell`=1860;
UPDATE `npc_trainer` SET `reqlevel`=20 WHERE `entry`=26329 AND `spell`=1943;
UPDATE `npc_trainer` SET `reqlevel`=16 WHERE `entry`=26329 AND `spell`=1966;
UPDATE `npc_trainer` SET `reqlevel`=28 WHERE `entry`=26329 AND `spell`=2070;
UPDATE `npc_trainer` SET `reqlevel`=34 WHERE `entry`=26329 AND `spell`=2094;
UPDATE `npc_trainer` SET `reqlevel`=12 WHERE `entry`=26329 AND `spell`=2589;
UPDATE `npc_trainer` SET `reqlevel`=20 WHERE `entry`=26329 AND `spell`=2590;
UPDATE `npc_trainer` SET `reqlevel`=28 WHERE `entry`=26329 AND `spell`=2591;
UPDATE `npc_trainer` SET `reqlevel`=24 WHERE `entry`=26329 AND `spell`=2836;
UPDATE `npc_trainer` SET `reqlevel`=10 WHERE `entry`=26329 AND `spell`=2983;
UPDATE `npc_trainer` SET `reqlevel`=10 WHERE `entry`=26329 AND `spell`=5171;
UPDATE `npc_trainer` SET `reqlevel`=8 WHERE `entry`=26329 AND `spell`=5277;
UPDATE `npc_trainer` SET `spellcost`=100000,`reqlevel`=70 WHERE `entry`=26329 AND `spell`=5938;
UPDATE `npc_trainer` SET `reqlevel`=8 WHERE `entry`=26329 AND `spell`=6760;
UPDATE `npc_trainer` SET `reqlevel`=16 WHERE `entry`=26329 AND `spell`=6761;
UPDATE `npc_trainer` SET `reqlevel`=24 WHERE `entry`=26329 AND `spell`=6762;
UPDATE `npc_trainer` SET `spellcost`=8000,`reqlevel`=28 WHERE `entry`=26329 AND `spell`=6768;
UPDATE `npc_trainer` SET `reqlevel`=10 WHERE `entry`=26329 AND `spell`=6770;
UPDATE `npc_trainer` SET `reqlevel`=42 WHERE `entry`=26329 AND `spell`=6774;
UPDATE `npc_trainer` SET `reqlevel`=38 WHERE `entry`=26329 AND `spell`=8621;
UPDATE `npc_trainer` SET `reqlevel`=32 WHERE `entry`=26329 AND `spell`=8623;
UPDATE `npc_trainer` SET `reqlevel`=40 WHERE `entry`=26329 AND `spell`=8624;
UPDATE `npc_trainer` SET `reqlevel`=22 WHERE `entry`=26329 AND `spell`=8631;
UPDATE `npc_trainer` SET `reqlevel`=30 WHERE `entry`=26329 AND `spell`=8632;
UPDATE `npc_trainer` SET `reqlevel`=38 WHERE `entry`=26329 AND `spell`=8633;
UPDATE `npc_trainer` SET `reqlevel`=40 WHERE `entry`=26329 AND `spell`=8637;
UPDATE `npc_trainer` SET `reqlevel`=28 WHERE `entry`=26329 AND `spell`=8639;
UPDATE `npc_trainer` SET `reqlevel`=36 WHERE `entry`=26329 AND `spell`=8640;
UPDATE `npc_trainer` SET `reqlevel`=50 WHERE `entry`=26329 AND `spell`=8643;
UPDATE `npc_trainer` SET `reqlevel`=14 WHERE `entry`=26329 AND `spell`=8647;
UPDATE `npc_trainer` SET `reqlevel`=26 WHERE `entry`=26329 AND `spell`=8649;
UPDATE `npc_trainer` SET `reqlevel`=36 WHERE `entry`=26329 AND `spell`=8650;
UPDATE `npc_trainer` SET `reqlevel`=18 WHERE `entry`=26329 AND `spell`=8676;
UPDATE `npc_trainer` SET `reqlevel`=34 WHERE `entry`=26329 AND `spell`=8696;
UPDATE `npc_trainer` SET `reqlevel`=36 WHERE `entry`=26329 AND `spell`=8721;
UPDATE `npc_trainer` SET `reqlevel`=26 WHERE `entry`=26329 AND `spell`=8724;
UPDATE `npc_trainer` SET `reqlevel`=34 WHERE `entry`=26329 AND `spell`=8725;
UPDATE `npc_trainer` SET `reqlevel`=46 WHERE `entry`=26329 AND `spell`=11197;
UPDATE `npc_trainer` SET `reqlevel`=56 WHERE `entry`=26329 AND `spell`=11198;
UPDATE `npc_trainer` SET `reqlevel`=42 WHERE `entry`=26329 AND `spell`=11267;
UPDATE `npc_trainer` SET `reqlevel`=50 WHERE `entry`=26329 AND `spell`=11268;
UPDATE `npc_trainer` SET `reqlevel`=58 WHERE `entry`=26329 AND `spell`=11269;
UPDATE `npc_trainer` SET `reqlevel`=44 WHERE `entry`=26329 AND `spell`=11273;
UPDATE `npc_trainer` SET `reqlevel`=52 WHERE `entry`=26329 AND `spell`=11274;
UPDATE `npc_trainer` SET `reqlevel`=60 WHERE `entry`=26329 AND `spell`=11275;
UPDATE `npc_trainer` SET `reqlevel`=44 WHERE `entry`=26329 AND `spell`=11279;
UPDATE `npc_trainer` SET `reqlevel`=52 WHERE `entry`=26329 AND `spell`=11280;
UPDATE `npc_trainer` SET `reqlevel`=60 WHERE `entry`=26329 AND `spell`=11281;
UPDATE `npc_trainer` SET `reqlevel`=46 WHERE `entry`=26329 AND `spell`=11289;
UPDATE `npc_trainer` SET `reqlevel`=54 WHERE `entry`=26329 AND `spell`=11290;
UPDATE `npc_trainer` SET `reqlevel`=46 WHERE `entry`=26329 AND `spell`=11293;
UPDATE `npc_trainer` SET `reqlevel`=54 WHERE `entry`=26329 AND `spell`=11294;
UPDATE `npc_trainer` SET `reqlevel`=48 WHERE `entry`=26329 AND `spell`=11297;
UPDATE `npc_trainer` SET `reqlevel`=48 WHERE `entry`=26329 AND `spell`=11299;
UPDATE `npc_trainer` SET `reqlevel`=56 WHERE `entry`=26329 AND `spell`=11300;
UPDATE `npc_trainer` SET `reqlevel`=52 WHERE `entry`=26329 AND `spell`=11303;
UPDATE `npc_trainer` SET `reqlevel`=58 WHERE `entry`=26329 AND `spell`=11305;
UPDATE `npc_trainer` SET `spellcost`=384,`reqlevel`=46 WHERE `entry`=26329 AND `spell`=17347;
UPDATE `npc_trainer` SET `reqlevel`=58 WHERE `entry`=26329 AND `spell`=17348;
UPDATE `npc_trainer` SET `spellcost`=72000,`reqlevel`=60 WHERE `entry`=26329 AND `spell`=25300;
UPDATE `npc_trainer` SET `reqlevel`=60 WHERE `entry`=26329 AND `spell`=25302;
UPDATE `npc_trainer` SET `reqlevel`=50 WHERE `entry`=26329 AND `spell`=26669;
UPDATE `npc_trainer` SET `reqlevel`=64 WHERE `entry`=26329 AND `spell`=26679;
UPDATE `npc_trainer` SET `reqlevel`=61 WHERE `entry`=26329 AND `spell`=26839;
UPDATE `npc_trainer` SET `reqlevel`=62 WHERE `entry`=26329 AND `spell`=26861;
UPDATE `npc_trainer` SET `spellcost`=100000,`reqlevel`=70 WHERE `entry`=26329 AND `spell`=26862;
UPDATE `npc_trainer` SET `reqlevel`=68 WHERE `entry`=26329 AND `spell`=26863;
UPDATE `npc_trainer` SET `reqlevel`=70 WHERE `entry`=26329 AND `spell`=26864;
UPDATE `npc_trainer` SET `reqlevel`=64 WHERE `entry`=26329 AND `spell`=26865;
UPDATE `npc_trainer` SET `reqlevel`=66 WHERE `entry`=26329 AND `spell`=26866;
UPDATE `npc_trainer` SET `reqlevel`=68 WHERE `entry`=26329 AND `spell`=26867;
UPDATE `npc_trainer` SET `spellcost`=100000,`reqlevel`=70 WHERE `entry`=26329 AND `spell`=26884;
UPDATE `npc_trainer` SET `reqlevel`=62 WHERE `entry`=26329 AND `spell`=26889;
UPDATE `npc_trainer` SET `reqlevel`=66 WHERE `entry`=26329 AND `spell`=27441;
UPDATE `npc_trainer` SET `reqlevel`=64 WHERE `entry`=26329 AND `spell`=27448;
UPDATE `npc_trainer` SET `reqlevel`=60 WHERE `entry`=26329 AND `spell`=31016;
UPDATE `npc_trainer` SET `reqlevel`=66 WHERE `entry`=26329 AND `spell`=31224;
UPDATE `npc_trainer` SET `reqlevel`=62 WHERE `entry`=26329 AND `spell`=32645;
UPDATE `npc_trainer` SET `spellcost`=100000,`reqlevel`=69 WHERE `entry`=26329 AND `spell`=32684;
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48637,300000,0,0,76);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48638,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48656,300000,0,0,74);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48657,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48658,300000,0,0,72);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48659,300000,0,0,78);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48660,15000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48663,15000,0,0,75);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48666,15000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48667,300000,0,0,73);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48668,300000,0,0,79);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48669,300000,0,0,77);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48671,300000,0,0,74);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48672,300000,0,0,79);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48673,100000,0,0,70);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48674,300000,0,0,76);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48675,300000,0,0,75);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48676,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48689,140000,0,0,70);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48690,300000,0,0,75);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,48691,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,51722,3000,0,0,20);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,51723,300000,0,0,80);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,51724,300000,0,0,71);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,57934,300000,0,0,75);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,57992,300000,0,0,74);
INSERT IGNORE INTO `npc_trainer` VALUES (26329,57993,300000,0,0,80);
DELETE FROM `npc_trainer` WHERE `entry`=917 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=917 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=917 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=917 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=917 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=917 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=917 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=917 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=917 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=918 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=918 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=918 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=918 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=918 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=918 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=918 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=918 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=918 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=1234 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=1234 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=1234 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=1234 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=1234 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=1234 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=1234 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=1234 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=1234 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=1411 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=1411 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=1411 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=1411 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=1411 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=1411 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=1411 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=1411 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=1411 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=2130 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=2130 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=2130 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=2130 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=2130 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=2130 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=2130 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=2130 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=2130 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=3170 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=3170 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=3170 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=3170 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=3170 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=3170 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=3170 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=3170 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=3170 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=3327 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=3327 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=3327 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=3327 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=3327 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=3327 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=3327 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=3327 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=3327 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=3328 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=3328 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=3328 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=3328 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=3328 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=3328 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=3328 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=3328 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=3328 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=3401 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=3401 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=3401 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=3401 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=3401 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=3401 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=3401 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=3401 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=3401 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=3599 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=3599 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=3599 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=3599 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=3599 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=3599 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=3599 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=3599 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=3599 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=4163 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=4163 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=4163 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=4163 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=4163 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=4163 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=4163 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=4163 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=4163 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=4214 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=4214 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=4214 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=4214 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=4214 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=4214 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=4214 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=4214 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=4214 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=4215 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=4215 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=4215 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=4215 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=4215 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=4215 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=4215 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=4215 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=4215 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=4582 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=4582 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=4582 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=4582 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=4582 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=4582 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=4582 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=4582 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=4582 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=4583 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=4583 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=4583 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=4583 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=4583 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=4583 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=4583 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=4583 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=4583 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=4584 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=4584 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=4584 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=4584 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=4584 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=4584 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=4584 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=4584 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=4584 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=5165 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=5165 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=5165 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=5165 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=5165 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=5165 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=5165 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=5165 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=5165 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=5166 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=5166 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=5166 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=5166 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=5166 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=5166 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=5166 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=5166 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=5166 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=5167 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=5167 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=5167 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=5167 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=5167 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=5167 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=5167 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=5167 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=5167 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=6707 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=6707 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=6707 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=6707 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=6707 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=6707 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=6707 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=6707 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=6707 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=13283 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=13283 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=13283 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=13283 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=13283 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=13283 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=13283 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=13283 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=13283 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=16279 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=16279 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=16279 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=16279 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=16279 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=16279 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=16279 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=16279 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=16279 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=16684 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=16684 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=16684 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=16684 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=16684 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=16684 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=16684 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=16684 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=16684 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=16685 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=16685 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=16685 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=16685 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=16685 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=16685 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=16685 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=16685 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=16685 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=16686 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=16686 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=16686 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=16686 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=16686 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=16686 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=16686 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=16686 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=16686 AND `spell`=38768;
DELETE FROM `npc_trainer` WHERE `entry`=26329 AND `spell`=1767;
DELETE FROM `npc_trainer` WHERE `entry`=26329 AND `spell`=1768;
DELETE FROM `npc_trainer` WHERE `entry`=26329 AND `spell`=1769;
DELETE FROM `npc_trainer` WHERE `entry`=26329 AND `spell`=1777;
DELETE FROM `npc_trainer` WHERE `entry`=26329 AND `spell`=8629;
DELETE FROM `npc_trainer` WHERE `entry`=26329 AND `spell`=11285;
DELETE FROM `npc_trainer` WHERE `entry`=26329 AND `spell`=11286;
DELETE FROM `npc_trainer` WHERE `entry`=26329 AND `spell`=38764;
DELETE FROM `npc_trainer` WHERE `entry`=26329 AND `spell`=38768;

-- GO loots
INSERT IGNORE INTO `gameobject_loot_template` VALUES (24387,38575,100,0,1,1,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (24734,38656,100,0,1,1,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (24733,38653,100,0,1,1,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (24742,38688,100,0,1,1,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (24750,40392,0,1,1,1,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (24750,40391,0,1,1,1,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (24750,40393,0,1,1,1,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (24750,39063,-100,0,1,1,0,0,0);

-- Pages
INSERT IGNORE INTO `page_text` VALUES (3370,'<Penned by the skilled hand of Archmage Ansirem Runeweaer>',3371);
INSERT IGNORE INTO `page_text` VALUES (3371,'Divination is the school of magic dedicated to gathering information. Powerful divinations can allow the mage to see targets from a great distance, or even view what may normally be invisible. One of the most common uses of divination magic is scrying, which is the art of seeing something that may be far away - perhaps even on another plane of existence',3372);
INSERT IGNORE INTO `page_text` VALUES (3372,"I'd like to take this time to remind my apprentices' that scrying pools are not to be used for displaying students of the opposite sex on a pay per view basis. Consider this your last warning.",3373);
INSERT IGNORE INTO `page_text` VALUES (3373,'The legendary archmage known as Medivh is perhaps the greatest known master of divination. His potent spells allowed him to peer into the world of Draenor from our home in Azeroth - and perhaps even beyond. We can only speculate at the true depths of the power that Medivh once held.',0);
INSERT IGNORE INTO `page_text` VALUES (3379,'<Penned by the skilled hand of Archmage Ansirem Runeweaver>',3380);
INSERT IGNORE INTO `page_text` VALUES (3380,'Illusion is the art of deceiving reality itself. The mist of illusion can make a mage invisible or inaudible to the world or twist the image of a location into something entirely different. Illusion can be used for disguise for manipulation. Illusions exist in the divination school. It is not viable to base your entire career on illusionary magic.',3381);
INSERT IGNORE INTO `page_text` VALUES (3381,"Contrary to popular belief, illusions are far more than mere parlor tricks. The sell of invisibility is among the most integral in a battle mage's repertoire. As you will often find yourself in dangerous situations and in need of a quick method for a strategic retreat. Illusions can also be used to deceive your opponents into thinking that you are elsewhere, or even trick your enemies into fighting each other. This is no easy task, but the accomplished illusionist can turn allies into enemies - and his or her own enemies into allies.",3382);
INSERT IGNORE INTO `page_text` VALUES (3382,'The former archmage Jandace Barov - may her soul rest in peace - was an excellent example of a talented illusionist. In life, she developed a spell that displayed several images of her body that were nearly indistinguishable form her real form. These images duplicated her actions from different locations, making it nearly impossible for her enemies to find her. It was almost infallible. Which brings me to another lesson - almost is simply not good enough.',0);

-- New npc_text
UPDATE `npc_text` SET `text0_1`='Hello $r, it is a pleasure to make your acquaintance.$B',`em0_0`=0,`em0_1`=2 WHERE `ID`=838;
UPDATE `npc_text` SET `text0_0`='Warriors can usually be found either at the Pig and Whistle Tavern or the Barracks in Old Town. Tell ya though, the tavern is probably a better place to look.',`text0_1`='Warriors can usually be found either at the Pig and Whistle Tavern or the Barracks in Old Town. Tell ya though, the tavern is probably a better place to look.' WHERE `ID`=901;
UPDATE `npc_text` SET `text0_0`='Do ye have some new treasures that ye want to keep safe n\' sound?  Then ye\'ll be wanting to store them at The Vault with the Stonemantles.  $B$BYe\'ll find The Vault just a hammer\'s throw northeast from the entrance to Ironforge.',`text1_0`='The bank?  Oh, ye mean The Vault!  No safer place to store yer valuables than The Vault. Ye\'ll find it just northeast of the entrance to Ironforge. ',`text1_1`='The bank?  Oh, ye mean The Vault!  No safer place to store yer valuables than The Vault. Ye\'ll find it just northeast of the entrance to Ironforge. ' WHERE `ID`=2761;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1 WHERE `ID`=2764;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1,`em1_0`=0,`em1_1`=1 WHERE `ID`=2768;
UPDATE `npc_text` SET `text1_0`='Bah!  Mailboxes...  all I get is junk mail lately!  $B$BIncrease the size of this... decrease the size of that... act now for your free Sword of Dragonslaying.  I have to change my mailbox number every other month!  $B$BWell, ye can\'t say I didn\'t warn ye.  If you\'re looking for the mailbox it\'s just outside the Stonefire Tavern.',`text1_1`='Bah!  Mailboxes...  all I get is junk mail lately!  $B$BIncrease the size of this... decrease the size of that... act now for your free Sword of Dragonslaying.  I have to change my mailbox number every other month!  $B$BWell, ye can\'t say I didn\'t warn ye.  If you\'re looking for the mailbox it\'s just outside the Stonefire Tavern.' WHERE `ID`=2769;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1 WHERE `ID`=2770;
UPDATE `npc_text` SET `text0_0`='That wee wizardly lass, Bink, over in the Hall of Mysteries would probably be able to help ye out with any magical needs you have.  $B$BThe Hall of Mysteries is just north of the gates of Ironforge.',`text0_1`='That wee wizardly lass, Bink, over in the Hall of Mysteries would probably be able to help ye out with any magical needs you have.$B$BThe Hall of Mysteries is just north of the gates of Ironforge.',`em0_0`=0,`em0_1`=1,`em1_0`=0,`em1_1`=1 WHERE `ID`=2771;
UPDATE `npc_text` SET `text0_0`='Ah, Braenna Flintcrag.  She has magic hands, that one.  Braenna is the one to see about Priestly matters.  $B$BYe\'ll want to travel north from the gates of Ironforge to the Hall of Mysteries.  That\'s where ye\'ll find her.',`text0_1`='Ah, Braenna Flintcrag.  She has magic hands, that one.  Braenna is the one to see about Priestly matters.  $B$BYe\'ll want to travel north from the gates of Ironforge to the Hall of Mysteries.  That\'s where ye\'ll find her.',`em0_0`=0,`em0_1`=1 WHERE `ID`=2772;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1,`em1_0`=0,`em1_1`=1 WHERE `ID`=2773;
UPDATE `npc_text` SET `text1_0`='All the roguish types hang out in The Forlorn Cavern, north of the gates of Ironforge.  I\'d wager ye\'ll find Fenthwick there, no doubt counting the coin of another cut purse.  I\'ll catch him one of these days!  $B$BIn the meantime I\'ll have my eye on you as well, $glad : lass;.',`text1_1`='All the roguish types hang out in The Forlorn Cavern, north of the gates of Ironforge.  I\'d wager ye\'ll find Fenthwick there, no doubt counting the coin of another cut purse.  I\'ll catch him one of these days!  $B$BIn the meantime I\'ll have my eye on you as well, $glad : lass;.' WHERE `ID`=2774;
UPDATE `npc_text` SET `text0_0`='Och! Ye seek training in the way of the warrior, do ye?  Kelstrum Stonebreaker will put ye through yer paces!  Just march yerself over to the Hall of Arms east of the gates of Ironforge. ',`text0_1`='Och! Ye seek training in the way of the warrior, do ye?  Kelstrum Stonebreaker will put ye through yer paces!  Just march yerself over to the Hall of Arms east of the gates of Ironforge. ',`em0_0`=0,`em0_1`=1,`text1_0`='Kelstrum is a loudmouth and a braggart... and if that weren\'t enough he\'s also one of the most skilled warriors ye\'ll ever meet!  $B$BI tell ye, if ye\'re looking to be trained in the ways of a warrior, that\'s who ye should be talking to.  I\'m sure he can be found over in the Hall of Arms east of the Gates of Ironforge.',`text1_1`='Kelstrum is a loudmouth and a braggart... and if that weren\'t enough he\'s also one of the most skilled warriors ye\'ll ever meet!  $B$BI tell ye, if ye\'re looking to be trained in the ways of a warrior, that\'s who ye should be talking to.  I\'m sure he can be found over in the Hall of Arms east of the Gates of Ironforge.' WHERE `ID`=2776;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1,`text1_0`='Yer looking for an Alchemy trainer are ye?  Just came from there, I did.  Ye\'ll find Ms. Berryfizz over in Tinker Town where the gnomes gather.  $B$B::sigh:: ...why o\' why didn\'t I take the blue potion.',`text1_1`='Yer looking for an Alchemy trainer are ye?  Just came from there, I did.  Ye\'ll find Ms. Berryfizz over in Tinker Town where the gnomes gather.  $B$B::sigh:: ...why o\' why didn\'t I take the blue potion.',`em1_0`=0,`em1_1`=1 WHERE `ID`=2794;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=5,`em0_3`=1,`text1_0`='Are ye really askin\' me where the Blacksmith is?  Have ye not heard of The Great Forge!?  All our best blacksmiths gather there to craft their weapons and armor!  $B$BIt\'s dead smack in the middle of Ironforge, and that\'s where you\'ll find one of our most brilliant blacksmiths, Bengus Deepforge.  ',`text1_1`='Are ye really askin\' me where the Blacksmith is?  Have ye not heard of The Great Forge!?  All our best blacksmiths gather there to craft their weapons and armor!  $B$BIt\'s dead smack in the middle of Ironforge, and that\'s where you\'ll find one of our most brilliant blacksmiths, Bengus Deepforge.  ' WHERE `ID`=2795;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1 WHERE `ID`=2796;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1,`text1_0`='Och!  Ye should be careful what ye get enchanted $glad : lass;.  I had me mug enchanted so it wouldn\'t spill a drop, but now I can\'t drink from it!  Such a tragedy.  $B$BYou be sure to heed me advice when ye see Gimble.  He\'ll be in his shop right by the Gryphon Master at The Great Forge.',`text1_1`='Och!  Ye should be careful what ye get enchanted $glad : lass;.  I had me mug enchanted so it wouldn\'t spill a drop, but now I can\'t drink from it!  Such a tragedy.  $B$BYou be sure to heed me advice when ye see Gimble.  He\'ll be in his shop right by the Gryphon Master at The Great Forge.' WHERE `ID`=2797;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1 WHERE `ID`=2799;
UPDATE `npc_text` SET `text0_0`='Fimble Finespindle has a shop set up on the northwest side of The Great Forge.  I wager he could show ye how to make some fine armor.',`text0_1`='Fimble Finespindle has a shop set up on the northwest side of The Great Forge.  I wager he could show ye how to make some fine armor.',`em0_0`=0,`em0_1`=1 WHERE `ID`=2802;
UPDATE `npc_text` SET `text1_0`='It is Vesprystus that you seek.  He watches over the hippogryphs that come and go from the base of Teldrassil.  You will find him through the portal in western Darnassus that will take you to Rut\'theran Village.',`text1_1`='It is Vesprystus that you seek.  He watches over the hippogryphs that come and go from the base of Teldrassil.  You will find him through the portal in western Darnassus that will take you to Rut\'theran Village.' WHERE `ID`=3018;
UPDATE `npc_text` SET `text0_0`='You will find Sildinair at the Warrior\'s Terrace among the guards, her keen eyes scanning the forest for enemies that might dare to enter our fair city.  ',`text0_1`='You will find Sildinair at the Warrior\'s Terrace among the guards, her keen eyes scanning the forest for enemies that might dare to enter our fair city.  ',`prob0`=1.0,`text1_1`='Sildinair has trained many of the Sentinels who guard our beloved city.  I am certain she can make a warrior out of the likes of you.  Seek her out at the Warrior\'s Terrace near the entrance to our city.',`prob1`=1.0 WHERE `ID`=3033;
UPDATE `npc_text` SET `text0_0`='Here among the craftsmen of Darnassus, there is a millenium of knowledge for the benefit of your chosen craft.  Now tell me, which craft do you find the most intriguing?',`text0_1`='Here among the craftsmen of Darnassus, there is a millenium of knowledge for the benefit of your chosen craft.  Now tell me, which craft do you find the most intriguing?' WHERE `ID`=3034;
UPDATE `npc_text` SET `text1_0`='As a culture we believe in letting nothing go to waste.  When we are forced to slay a creature we take what we can to make sure its sacrifice was not in vain.  $B$BIf you wish to learn the proper way to take the skin of a slain beast, then seek out Eladriel in the Craftsmen\'s Terrace.',`text1_1`='As a culture we believe in letting nothing go to waste.  When we are forced to slay a creature we take what we can to make sure its sacrifice was not in vain.  $B$BIf you wish to learn the proper way to take the skin of a slain beast, then seek out Eladriel in the Craftsmen\'s Terrace.' WHERE `ID`=3042;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1 WHERE `ID`=3218;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=3 WHERE `ID`=3234;
UPDATE `npc_text` SET `text0_0`='I\'m sorry, I\'m a bit busy right now making horseshoes for Verner Osgood in Lakeshire. ' WHERE `ID`=3405;
UPDATE `npc_text` SET `text0_0`='You don\'t have the stomach for the gryphon ride, huh.  Well lucky for you, we have an alternative where you can keep your feet on the ground... more or less.  It\'s the gnomish mover of people, the Deeprun Tram.  Conveniently located in the back of the Dwarven District.',`text0_1`='You don\'t have the stomach for the gryphon ride, huh.  Well lucky for you, we have an alternative where you can keep your feet on the ground... more or less.  It\'s the gnomish mover of people, the Deeprun Tram.  Conveniently located in the back of the Dwarven District.' WHERE `ID`=3813;
UPDATE `npc_text` SET `text1_0`='Oh, the tram, the tram...  everyone wants to ride the tram.  What happened to the good ol\' days of flying on the back of a gryphon, gripping the saddle for dear life as you flew up high in the sky above?  $B$BBah!  You go take the tram then... it\'s over in Tinker Town with the rest of the gnomish contraptions.',`text1_1`='Oh, the tram, the tram...  everyone wants to ride the tram.  What happened to the good ol\' days of flying on the back of a gryphon, gripping the saddle for dear life as you flew up high in the sky above?  $B$BBah!  You go take the tram then... it\'s over in Tinker Town with the rest of the gnomish contraptions.' WHERE `ID`=3814;
UPDATE `npc_text` SET `text0_1`='I\'ve heard that there\'s a dwarf in Stormwind who has achieved some fame for his hunting skill.  Maybe you should go see if he could help you.',`prob0`=1.0 WHERE `ID`=4266;
UPDATE `npc_text` SET `text1_0`='I\'d wager Keryn Sylvius knows the type you\'re looking for. The company Keryn keeps is less than honorable. She usually hangs out in the Lion\'s Pride Inn.',`text1_1`='I\'d wager Keryn Sylvius knows the type you\'re looking for. The company Keryn keeps is less than honorable. She usually hangs out in the Lion\'s Pride Inn.' WHERE `ID`=4270;
UPDATE `npc_text` SET `text0_0`='Tomas may not be the best cook around, but he has a few dishes that hit the spot.  He\'s currently working in the Lion\'s Pride Inn if you\'d like to learn the profession.',`text0_1`='Tomas may not be the best cook around, but he has a few dishes that hit the spot.  He\'s currently working in the Lion\'s Pride Inn if you\'d like to learn the profession.',`text1_0`='Why don\'t you try looking in the Lion\'s Pride Inn?  The cook there might be able to teach you a few good recipes.',`text1_1`='Why don\'t you try looking in the Lion\'s Pride Inn?  The cook there might be able to teach you a few good recipes.' WHERE `ID`=4276;
UPDATE `npc_text` SET `text1_0`='You want to learn to be a tailor?  Hmmm... I believe there\'s a tailor over in the Eastvale Logging Camp that may be able to get you started.  ',`text1_1`='You want to learn to be a tailor?  Hmmm... I believe there\'s a tailor over in the Eastvale Logging Camp that may be able to get you started.  ' WHERE `ID`=4285;
UPDATE `npc_text` SET `text0_0`='Well then, it seems we\'re both looking for Hogral Bakkan.  He\'s a dwarf to be sure, so sooner or later he\'ll be heading for the Thunderbrew Distillery for an ale -- he might even be there now.',`text0_1`='Well then, it seems we\'re both looking for Hogral Bakkan.  He\'s a dwarf to be sure, so sooner or later he\'ll be heading for the Thunderbrew Distillery for an ale -- he might even be there now.' WHERE `ID`=4297;
UPDATE `npc_text` SET `text0_1`='Hello there! My name\'s Jenna! And you? ' WHERE `ID`=5121;
UPDATE `npc_text` SET `text0_0`='On the northern dock, you can board a ship that will carry you to Rut\'theran Village and Darnassus.  From the southern dock, you can find passage across the Great Sea to Stormwind Harbor.  The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' WHERE `ID`=5480;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1 WHERE `ID`=5894;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1,`em0_3`=5 WHERE `ID`=5920;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=2,`em0_3`=1 WHERE `ID`=5943;
UPDATE `npc_text` SET `text0_1`='I can direct you to other weapon masters if you prefer. What interests you?' WHERE `ID`=6292;
UPDATE `npc_text` SET `text0_0`='What weapon were ye lookin\' to learn?' WHERE `ID`=6294;
UPDATE `npc_text` SET `text0_1`='Aw, don\'t want to train with me? What other weapon catches your eye?' WHERE `ID`=6296;
UPDATE `npc_text` SET `text0_0`='Welcome to the Explorers\' League.  If you need information, and it is in book form, then I might be able to help you out.' WHERE `ID`=6383;
UPDATE `npc_text` SET `text0_0`='Well met master of Rod and Reel!   If you be willing to test your skills against the best fisher-folk in the lands then listen up!   On this very Sunday there be a contest in Stranglethorn where the master angler will be chosen!$B$B' WHERE `ID`=7712;
UPDATE `npc_text` SET `text0_0`='Greetings, $c - I\'m a Commendation Officer acting on behalf of Darnassus.  It is my duty to assist adventurers who have received Alliance Commendation Signets.$B$BI accept signets in different quantities, but the most beneficial exchange for you is to hand in a set of ten at once.  I will enter your deeds into our records when you hand in your signets.  As a result, you will earn recognition from Darnassus for your duty and service.$B',`text0_1`='Greetings, $c - I\'m a Commendation Officer acting on behalf of Darnassus.  It is my duty to assist adventurers who have received Alliance Commendation Signets.$B$BI accept signets in different quantities, but the most beneficial exchange for you is to hand in a set of ten at once.  I will enter your deeds into our records when you hand in your signets.  As a result, you will earn recognition from Darnassus for your duty and service.$B$B',`em0_0`=0,`em0_1`=66,`em0_3`=1 WHERE `ID`=8126;
UPDATE `npc_text` SET `text0_0`='Greetings, $c - I\'m a Commendation Officer acting on behalf of the Gnomeregan Exiles.  It is my duty to assist adventurers who have received Alliance Commendation Signets.$B$BI accept signets in different quantities, but the most beneficial exchange for you is to hand in a set of ten at once.  I will enter your deeds into our records when you hand in your signets.  As a result, you will earn recognition from the Gnomeregan Exiles for your duty and service.$B',`text0_1`='Greetings, $c - I\'m a Commendation Officer acting on behalf of the Gnomeregan Exiles.  It is my duty to assist adventurers who have received Alliance Commendation Signets.$B$BI accept signets in different quantities, but the most beneficial exchange for you is to hand in a set of ten at once.  I will enter your deeds into our records when you hand in your signets.  As a result, you will earn recognition from the Gnomeregan Exiles for your duty and service.$B' WHERE `ID`=8128;
UPDATE `npc_text` SET `text0_0`='Greetings, $c - I\'m a Commendation Officer acting on behalf of Ironforge.  It is my duty to assist adventurers who have received Alliance Commendation Signets.$B$BI accept signets in different quantities, but the most beneficial exchange for you is to hand in a set of ten at once.  I will enter your deeds into our records when you hand in your signets.  As a result, you will earn recognition from Ironforge for your duty and service.$B',`em0_0`=0,`em0_1`=66,`em0_3`=1 WHERE `ID`=8129;
UPDATE `npc_text` SET `em0_0`=0,`em0_3`=1 WHERE `ID`=9063;
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10101,'You want what?! I\'ve heard something about one of those odd draenei creatures in the Valley of Heroes. Maybe she knows; I don\'t.','You want what?! I\'ve heard something about one of those odd draenei creatures in the Valley of Heroes. Maybe she knows; I don\'t.',0,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
UPDATE `npc_text` SET `em0_1`=25 WHERE `ID`=10214;
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10217,'','You will find the the battlemasters gathered at the Warrior\'s Terrace.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
UPDATE `npc_text` SET `text0_0`='Ilyenia Moonfire, the night elf weapon master who resides at the Warrior\'s Terrace in Darnassus, can train you in the use of bows.',`text0_1`='Ilyenia Moonfire, the night elf weapon master who resides at the Warrior\'s Terrace in Darnassus, can train you in the use of bows.' WHERE `ID`=10748;
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10749,'Bixi Wobblebonk in this very shop can train ye in daggers. If ye\'re still looking abroad, anyone else - Woo Ping in Stormwind, Handiir in the Exodar, and Ilyenia Moonfire in Darnassus - can show ye a thing or two. Me, I was never one fer knife fights.','Bixi Wobblebonk in this very shop can train ye in daggers. If ye\'re still looking abroad, anyone else - Woo Ping in Stormwind, Handiir in the Exodar, and Ilyenia Moonfire in Darnassus - can show ye a thing or two. Me, I was never one fer knife fights.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10750,'Ilyenia Moonfire, the night elf weapon master on the Warrior\'s Terrace in Darnassus, or Buliwyf, the dwarf weapon master within the Timberline Arms in Ironforge, can train you in the use of fist weapons.','Ilyenia Moonfire, the night elf weapon master on the Warrior\'s Terrace in Darnassus, or Buliwyf, the dwarf weapon master within the Timberline Arms in Ironforge, can train you in the use of fist weapons.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10754,'The dwarven weapon master Buliwyf can train you in both one and two-handed axes. He\'s found in the Timberline Arms in Ironforge.','The dwarven weapon master Buliwyf can train you in both one and two-handed axes. He\'s found in the Timberline Arms in Ironforge.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10756,'Woo Ping is the master of polearms. He trains his students at Weller\'s Arsenal in Stormwind.','Woo Ping is the master of polearms. He trains his students at Weller\'s Arsenal in Stormwind.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10757,'Staves are taught by both Woo Ping, the master found at Weller\'s Arsenal in Stormwind, and Ilyenia Moonfire, who trains the night elves on the Warrior\'s Terrace in Darnassus.','Staves are taught by both Woo Ping, the master found at Weller\'s Arsenal in Stormwind, and Ilyenia Moonfire, who trains the night elves on the Warrior\'s Terrace in Darnassus.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10758,'There are two masters of the sword: Handiir and Woo Ping. The former can be found in the Trader\'s Tier of the Exodar, and the latter in Weller\'s Arsenal within Stormwind.','There are two masters of the sword: Handiir and Woo Ping. The former can be found in the Trader\'s Tier of the Exodar, and the latter in Weller\'s Arsenal within Stormwind.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10759,'Both Ilyenia Moonfire on the Warrior\'s Terrace of Darnassus and Bixi Wobblebonk of the Timberline Arms in Ironforge can show you how to use throwing weapons properly.','Both Ilyenia Moonfire on the Warrior\'s Terrace of Darnassus and Bixi Wobblebonk of the Timberline Arms in Ironforge can show you how to use throwing weapons properly.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10760,'Ilyenia Moonfire, the night elf weapon master who resides at the Warrior\'s Terrace in Darnassus, can show ye how to use a bow.','Ilyenia Moonfire, the night elf weapon master who resides at the Warrior\'s Terrace in Darnassus, can show ye how to use a bow.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10761,'My plucky companion Bixi Wobblebonk here can train ye in crossbows. If ye\'re looking for other trainers, though, ye might want to try Ilyenia Moonfire on the Warrior\'s Terrace in Darnassus, or maybe the draenei weapon master, Handiir, in the Trader\'s Tier within the Exodar.','',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10762,'Bixi here can teach ye how to lob throwin\' weapons.  If Darnassus is more yer speed, talk to Ilyenia Moonfire on the Warrior\'s Terrace there.','Bixi here can teach ye how to lob throwin\' weapons.  If Darnassus is more yer speed, talk to Ilyenia Moonfire on the Warrior\'s Terrace there.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10766,'Maces are a specialty of Buliwyf\'s! He\'s around this shop somewhere, grousing. If his training techniques aren\'t your style, I hear the draenei weapon master in the Exodar, Handiir, knows his way around the weapon too! He\'s up on the Trader\'s Tier there.','Maces are a specialty of Buliwyf\'s! He\'s around this shop somewhere, grousing. If his training techniques aren\'t your style, I hear the draenei weapon master in the Exodar, Handiir, knows his way around the weapon too! He\'s up on the Trader\'s Tier there.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (10842,'Well now, you can find Farseer Javad in the area of The Great Forge, just a bit to the North on the East side.','Well now, you can find Farseer Javad in the area of The Great Forge, just a bit to the North on the East side.',0,1.0,0,1,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
UPDATE `npc_text` SET `prob0`=1.0 WHERE `ID`=12198;
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (12246,'The wisps and I watch the seas for any lost souls.','The wisps and I watch the seas for any lost souls.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (12247,'The seas are a dangerous place, $c.  We must be alert.','The seas are a dangerous place, $c.  We must be alert.',7,1.0,0,1,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (12248,'I\'m afraid I cannot speak with you at the moment.','I\'m afraid I cannot speak with you at the moment.',7,1.0,0,1,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (12263,'Sorry, but we\'ll have to speak some other time. Farewell.','',7,1.0,0,274,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (12276,'On behalf of the crew of the Moonspray, I welcome you $c.  I hope you take advantage of our provisions before parting with us.','',7,1.0,0,2,2,1,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (12278,'Elune has blessed us many times over with all the discoveries we have made.  But we must remain vigilant, $c.','Elune has blessed us many times over with all the discoveries we have made.  But we must remain vigilant, $c.',7,1.0,0,1,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (13439,'Trying to reach Auberdine or Valiance Keep?  You can find Stormwind Harbor if you head through the Canals, between the Cathedral District and the Park.','Trying to reach Auberdine or Valiance Keep?  You can find Stormwind Harbor if you head through the Canals, between the Cathedral District and the Park.',7,1.0,0,0,0,0,0,0,'Stormwind Harbor is the fastest way to get to Auberdine or Valiance Keep.  You can find it between the Cathedral District and the Park.','Stormwind Harbor is the fastest way to get to Auberdine or Valiance Keep.  You can find it between the Cathedral District and the Park.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (13882,'Jelinik\'s Barber Shop is in the northern section of the Trade District.','Jelenik\'s Barber Shop is in the northern section of the Trade District.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (13884,'Elise Brightletter is near the Great Forge adjacent to the Flight Master.','Elise Brightletter is near the Great Forge adjacent to the Flight Master.',0,1.0,0,5,0,1,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);
INSERT IGNORE INTO `npc_text` (ID,text0_0,text0_1,lang0,prob0,em0_0,em0_1,em0_2,em0_3,em0_4,em0_5,text1_0,text1_1,lang1,prob1,em1_0,em1_1,em1_2,em1_3,em1_4,em1_5,text2_0,text2_1,lang2,prob2,em2_0,em2_1,em2_2,em2_3,em2_4,em2_5,text3_0,text3_1,lang3,prob3,em3_0,em3_1,em3_2,em3_3,em3_4,em3_5,text4_0,text4_1,lang4,prob4,em4_0,em4_1,em4_2,em4_3,em4_4,em4_5,text5_0,text5_1,lang5,prob5,em5_0,em5_1,em5_2,em5_3,em5_4,em5_5,text6_0,text6_1,lang6,prob6,em6_0,em6_1,em6_2,em6_3,em6_4,em6_5,text7_0,text7_1,lang7,prob7,em7_0,em7_1,em7_2,em7_3,em7_4,em7_5) VALUES
   (13885,'You can find the barber shop on the west portion of The Commons.','You can find the barber shop on the west portion of The Commons.',7,1.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0,'','',0,0.0,0,0,0,0,0,0);

   
-- wdb
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`) values('43504','15','0','-1','Winter Veil Gift','33535','1','4','1','0','0','0','32767','-1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`) values('43349','4','0','-1','Tabard of Brute Force','54723','4','32768','1','0','0','19','-1','-1','1','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`) values('44707','15','5','-1','Reins of the Green Proto-Drake','56308','4','0','1','2000000','0','0','-1','-1','80','80','762','300','0','0','0','0','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','55884','0','-1','0','-1','330','3000','61294','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','Teaches you how to summon this mount.  Can only be summoned in Outland or Northrend.  This is a very fast mount.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','0');
-- insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`) values('21302','9','0','-1','Handbook of Deadly Poison V','1134','3','64','1','400000','100000','0','31240','-1','60','60','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','25347','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Teaches Deadly Poison (Rank 5).','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','0');
-- insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`) values('21293','9','0','-1','Tablet of Grace of Air Totem III','33585','3','64','1','400000','100000','0','31296','-1','60','60','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','25359','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Teaches Grace of Air Totem (Rank 3).','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9702','1','You\'ll find Greatfather Winter in the center of the Valley of Strength. Just look for the tree.','You\'ll find Greatfather Winter in the center of the Valley of Strength. Just look for the tree.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9706','1','The celebration of the feast of Winter Veil is a source of great warmth during the cold seasons, and its heart is in Orgrimmar.','The celebration of the feast of Winter Veil is a source of great warmth during the cold seasons, and its heart is in Orgrimmar.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9962','1','Smokeywood Pastures has set up shop in Orgrimmar and Ironforge. I wonder what they\'ll dream up this year?','Smokeywood Pastures has set up shop in Orgrimmar and Ironforge. I wonder what they\'ll dream up this year?','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9718','1','You\'ll find Greatfather Winter in the center of the Valley of Strength. Just look for the tree.','You\'ll find Greatfather Winter in the center of the Valley of Strength. Just look for the tree.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('13889','1','The barber is in the Cleft of Shadow.','The barber is in the Cleft of Shadow.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
UPDATE `page_text` SET `text`='The devastating Second War against the orcish horde left the Alliance of Lordaeron in a state of shock and disarray. The bloodthirsty orcs, led by the mighty warchief, Orgrim Doomhammer, not only smashed their way through the dwarf-held lands of Khaz Modan, but had razed many of Lordaeron\'s central provinces as well. The unrelenting orcs even succeeded in ravaging the
elves\' remote kingdom of Quel\'Thalas before their rampage was finally stopped.' WHERE `entry`=627;
UPDATE `page_text` SET `text`='The Alliance armies led by Sir Anduin Lothar, Uther the Lightbringer, and Admiral Daelin Proudmoore pushed the orcs south into the shattered land of Azeroth - the first kingdom to fall before the orcs\' ruthless onslaught.

The Alliance forces under Sir Lothar managed to push Doomhammer\'s clans out of Lordaeron and back into the orc-controlled lands of Azeroth. Lothar\'s forces surrounded the orcs\' volcanic citadel of Blackrock Spire and laid siege to their defenses.' WHERE `entry`=628;
UPDATE `page_text` SET `text`='There was nothing left for the ragged, scattered orc survivors but to flee to the last standing bastion of orcish power - the dark portal.

Turalyon and his warriors chased the remaining orcs through the festering Swamp of Sorrows and into the corrupted Blasted Lands where the dark portal stood. There, at the foot of the colossal portal, the broken horde and the rugged Alliance clashed in what would be the last, bloodiest battle of the Second War. ' WHERE `entry`=631;
UPDATE `page_text` SET `text`='These demon plates were worn by the creature that first cursed our people with bloodlust. By the heroic act of one brave orc - he was defeated. Mannoroth the Destructor is no more. Let these plates always remind us of how far we\'ve come and how hard we fought to regain our honor.

- Thrall, Warchief of the Horde' WHERE `entry`=1762;
UPDATE `page_text` SET `text`='The proud Aegwynn, believing herself to be a match for the menacing god, unleashed her powers against Sargeras\' avatar. With disconcerting ease, Aegwynn battered the demonlord with her powers and succeeded in killing his physical shell. Fearing that Sargeras\' spirit would linger on, Aegwynn locked the ruined husk of his body within one of the ancient halls of Kalimdor that had been blasted to the bottom of the sea when the Well of Eternity collapsed. ' WHERE `entry`=1912;
UPDATE `page_text` SET `text`='After ten thousand years, the mighty demon Archimonde and his host emerged once again upon the world of Azeroth. Yet Dalaran was not their final destination. Under orders from Kil\'jaeden himself, Archimonde and his demons followed the undead Scourge to Kalimdor, bent on destroying Nordrassil, the World Tree.' WHERE `entry`=2073;
UPDATE `page_text` SET `text`='Jaded by generations of hate, the orcs and humans would have none of it. Medivh was forced to deal with each race separately, using prophecy and trickery to guide them across the sea to the legendary land of Kalimdor. The orcs and humans soon encountered the long-hidden civilization of the Kaldorei.' WHERE `entry`=2075;
UPDATE `page_text` SET `text`='The orcs, led by Thrall, suffered a series of setbacks on their journey across Kalimdor\'s Barrens. Though they befriended Cairne Bloodhoof and his mighty tauren warriors, many orcs began to succumb to the demonic bloodlust that had plagued them for years. Thrall\'s greatest lieutenant, Grom Hellscream, even betrayed the Horde by giving himself over to his baser instincts.' WHERE `entry`=2076;
UPDATE `page_text` SET `text`='Calling upon her ancient love, Malfurion Stormrage, Tyrande succeeded in galvanizing her defenses and driving the Legion back. With Malfurion\'s help, nature herself rose up to vanquish the Legion and its Scourge allies.' WHERE `entry`=2080;
UPDATE `page_text` SET `text`='While searching for more of the hibernating druids, Malfurion found the ancient barrow prison in which he had chained his brother, Illidan. Convinced that Illidan would aid them against the Legion, Tyrande set him free. Though Illidan did aid them for a time, he eventually fled to pursue his own interests.' WHERE `entry`=2081;
UPDATE `page_text` SET `text`='The night elves braced themselves and fought the Burning Legion with grim determination. The Legion had never ceased in its desire for the Well of Eternity, long the source of strength for the World Tree and itself the heart of the night elf kingdom. If their planned assault on the Tree was successful, the demons would literally tear the world apart.' WHERE `entry`=2082;
UPDATE `page_text` SET `text`='The Prophet is powerful, and communicates with the spirits of our ancestors. But he is a fool! He has no idea the true power he possesses. On his person is the Amulet of Spirits--it is where most of his strength comes from.

I have learned that the Amulet is powerful, but it is incomplete.' WHERE `entry`=2592;
UPDATE `page_text` SET `text`='We call upon you, Zanza of Zuldazar.

Bless those that ask for your help, Loa Zanza. Bless those that would ally with the Zandalarian
people.

Aid us in this time of need. Aid us Loa. Give us the power to strike down our enemies. Give us the power to once more defeat the Blood God.
' WHERE `entry`=2785;
UPDATE `page_text` SET `text`='More rapid than eagles his coursers they came,$B$BAnd he whistled, and shouted, and called them by name;$B$B\"Now, Mercer! now, Chilton! now, Jordan and Kaplan!$B$BOn, Nagle! on Pardo! on, Goodman and Metzen!$B$BTo the top of the porch! to the top of the wall!$B$BNow dash away! dash away! dash away all!\"
' WHERE `entry`=2844;
UPDATE `npc_text` SET `text0_0`='To get down safely, I provide wings to those in need. ' WHERE `ID`=2054;
UPDATE `npc_text` SET `text7_0`='Don\'t forget to stock up on wrapping paper this holiday season!  Nothing says \"Wondrous Winter Veil\" like wrapped armors and weapons for your friends and family.',`text7_1`='Don\'t forget to stock up on wrapping paper this holiday season!  Nothing says \"Wondrous Winter Veil\" like wrapped armors and weapons for your friends and family.' WHERE `ID`=6194;
UPDATE `npc_text` SET `text3_0`='Yeah, sure, go ahead and tell ol\' Greatfather Winter what you\'d like for this Winter Veil.$B$BHo ho hurry up.' WHERE `ID`=6250;
UPDATE `npc_text` SET `em0_0`=0,`em0_2`=0,`em0_3`=1,`em0_5`=5 WHERE `ID`=6934;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=6,`em1_0`=0,`em1_1`=71,`em2_0`=0,`em2_1`=1,`em3_0`=0,`em3_1`=1 WHERE `ID`=7354;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=5,`em1_0`=0,`em1_1`=5,`em2_0`=0,`em2_1`=5,`em3_0`=0,`em3_1`=94 WHERE `ID`=7366;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1,`em0_3`=5 WHERE `ID`=7376;
UPDATE `npc_text` SET `text5_0`='We\'ve managed to squeeze through Thunder Bluff twice now!  ' WHERE `ID`=12289;
UPDATE `npc_text` SET `text0_0`='You can\'t blame me for our mishaps... I can\'t even see where I\'m going!$b$bThough maybe that means you can blame me...$b$bNo!  Wait!  I can dock this ship just fine... It\'s gotta be the orders the captain issues!  Maybe he likes pushing us to our limits and testing out our survival and repair skills.' WHERE `ID`=12292;
UPDATE `npc_text` SET `text3_0`='You need something fixed? Use the Vend-O-Tron D-Luxe.',`text3_1`='You need something fixed? Use the Vend-O-Tron D-Luxe.' WHERE `ID`=12315;
UPDATE `npc_text` SET `text0_0`='I run the tightest airship in Azeroth. She used to be fitted with twin light cannons and enough bombs to flatten a city, you know... her mere shadow was enough to rout armies.$b$bWhat? Of course it\'s true!' WHERE `ID`=12318;
UPDATE `npc_text` SET `text0_0`='Barber? That is Naznik! He on top floor of Trade Quarter, near bank.',`text0_1`='Barber? That is Naznik! He on top floor of Trade Quarter, near bank.' WHERE `ID`=13891;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=1489;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=2292;
UPDATE `item_template` SET `StatsCount`=5 WHERE `entry`=2801;
UPDATE `item_template` SET `name`='Captain Sanders\' Shirt' WHERE `entry`=3342;
UPDATE `item_template` SET `name`='Captain Sanders\' Sash' WHERE `entry`=3344;
UPDATE `item_template` SET `name`='Weak Troll\'s Blood Elixir' WHERE `entry`=3382;
UPDATE `item_template` SET `name`='Strong Troll\'s Blood Elixir' WHERE `entry`=3388;
UPDATE `item_template` SET `name`='Recipe: Mighty Troll\'s Blood Elixir' WHERE `entry`=3831;
UPDATE `item_template` SET `name`='(Deprecated) Blinding Powder' WHERE `entry`=5530;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.',`Flags`=64,`spellid_1`=55884,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellid_2`=10698,`spelltrigger_2`=6,`bonding`=0 WHERE `entry`=8498;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=9383;
UPDATE `item_template` SET `StatsCount`=1 WHERE `entry`=9422;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=9431;
UPDATE `item_template` SET `StatsCount`=1,`TotemCategory`=165 WHERE `entry`=9465;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=9491;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=9510;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=10368;
UPDATE `item_template` SET `name`='Common Parchment' WHERE `entry`=10648;
UPDATE `item_template` SET `name`='The Dragon\'s Eye' WHERE `entry`=10829;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=12462;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=12604;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=12606;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=13260;
UPDATE `item_template` SET `name`='Heavy Scorpid Gauntlets' WHERE `entry`=15078;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=18546;
UPDATE `item_template` SET `StatsCount`=4 WHERE `entry`=18692;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=19131;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=19134;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=19135;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=19353;
UPDATE `item_template` SET `StatsCount`=1 WHERE `entry`=19364;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=19368;
UPDATE `item_template` SET `name`='Formula: Enchant Bracer - Healing Power' WHERE `entry`=19447;
UPDATE `item_template` SET `StatsCount`=1 WHERE `entry`=19921;
UPDATE `item_template` SET `StatsCount`=1 WHERE `entry`=19968;
UPDATE `item_template` SET `name`='Major Troll\'s Blood Elixir' WHERE `entry`=20004;
UPDATE `item_template` SET `name`='Mageblood Elixir' WHERE `entry`=20007;
UPDATE `item_template` SET `name`='Recipe: Mageblood Elixir' WHERE `entry`=20011;
UPDATE `item_template` SET `name`='Recipe: Major Troll\'s Blood Elixir' WHERE `entry`=20014;
UPDATE `item_template` SET `StatsCount`=4 WHERE `entry`=20629;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=20631;
UPDATE `item_template` SET `StatsCount`=4 WHERE `entry`=20638;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant gloves to increase frost spell power by 20.' WHERE `entry`=20728;
UPDATE `item_template` SET `description`='Teaches you how to permanently enchant a cloak to increase dodge rating by 12.' WHERE `entry`=20736;
UPDATE `item_template` SET `name`='Apprentice\'s Staff' WHERE `entry`=20978;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=21468;
UPDATE `item_template` SET `StatsCount`=1 WHERE `entry`=21483;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=21484;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=21491;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=21806;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=22302;
UPDATE `item_template` SET `StatsCount`=1 WHERE `entry`=22339;
UPDATE `item_template` SET `name`='Nesingwary Longrifle' WHERE `entry`=25278;
UPDATE `item_template` SET `name`='Tawny Wind Rider' WHERE `entry`=25474;
UPDATE `item_template` SET `name`='Blue Wind Rider' WHERE `entry`=25475;
UPDATE `item_template` SET `name`='Green Wind Rider' WHERE `entry`=25476;
UPDATE `item_template` SET `name`='Swift Red Wind Rider' WHERE `entry`=25477;
UPDATE `item_template` SET `name`='Sunstrider\'s Gauntlets' WHERE `entry`=25481;
UPDATE `item_template` SET `name`='Swift Green Wind Rider' WHERE `entry`=25531;
UPDATE `item_template` SET `name`='Swift Yellow Wind Rider' WHERE `entry`=25532;
UPDATE `item_template` SET `name`='Swift Purple Wind Rider' WHERE `entry`=25533;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=27814;
UPDATE `item_template` SET `StatsCount`=3 WHERE `entry`=27823;
UPDATE `item_template` SET `StatsCount`=3,`stat_type3`=31 WHERE `entry`=27845;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=29151;
UPDATE `item_template` SET `name`='Arcanum of the Defender' WHERE `entry`=29186;
UPDATE `item_template` SET `name`='Arcanum of Renewal' WHERE `entry`=29189;
UPDATE `item_template` SET `name`='Arcanum of Renewal' WHERE `entry`=29190;
UPDATE `item_template` SET `name`='Arcanum of Power' WHERE `entry`=29191;
UPDATE `item_template` SET `name`='Arcanum of Ferocity' WHERE `entry`=29192;
UPDATE `item_template` SET `name`='Arcanum of the Gladiator' WHERE `entry`=29193;
UPDATE `item_template` SET `name`='Arcanum of Nature Warding' WHERE `entry`=29194;
UPDATE `item_template` SET `name`='Arcanum of Arcane Warding' WHERE `entry`=29195;
UPDATE `item_template` SET `name`='Arcanum of Fire Warding' WHERE `entry`=29196;
UPDATE `item_template` SET `name`='Arcanum of Fire Warding' WHERE `entry`=29197;
UPDATE `item_template` SET `name`='Arcanum of Frost Warding' WHERE `entry`=29198;
UPDATE `item_template` SET `name`='Arcanum of Shadow Warding' WHERE `entry`=29199;
UPDATE `item_template` SET `Flags`=64,`spellcharges_1`=-1 WHERE `entry`=30360;
UPDATE `item_template` SET `spelltrigger_1`=1,`spelltrigger_2`=1 WHERE `entry`=30678;
UPDATE `item_template` SET `name`='Arcanum of the Outcast' WHERE `entry`=30846;
UPDATE `item_template` SET `StatsCount`=2 WHERE `entry`=31921;
UPDATE `item_template` SET `StatsCount`=2,`stat_type1`=32 WHERE `entry`=31922;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.',`Flags`=64,`spellid_1`=55884,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellid_2`=40549,`spelltrigger_2`=6 WHERE `entry`=32588;
UPDATE `item_template` SET `spellid_1`=0,`spellcooldown_1`=-1,`spellid_3`=45052,`spellcooldown_3`=300000 WHERE `entry`=34430;
UPDATE `item_template` SET `description`='Teaches you how to summon this companion.',`Flags`=67108928,`spellid_1`=55884,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellid_2`=49964,`spelltrigger_2`=6 WHERE `entry`=38050;
UPDATE `item_template` SET `BuyPrice`=100000000,`SellPrice`=25000000 WHERE `entry`=43958;
  
-- 1 GO
INSERT INTO gameobject_template
  (entry, type, displayId, name, castBarCaption, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, size)
VALUES
  (193195, 2, 6395, "Pulsing Crystal", "", 0, 9352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2);

-- Seph's _fixes
-- Hellfire Channeler should not be immune to interrupt
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`&~'33554432' WHERE `entry` = '17256';
-- High Botanist Freywinn's adds called Frayer Protector's give +4 Sha'tar rep and is wrong
DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = '19953');
-- Recipe: Free Action Potion was missing from Kor'geld
DELETE FROM `npc_vendor` WHERE (`entry` = '3348') AND (`item` = '5642');
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
('3348', '5642', '0', '0', '0');
-- Freshly Drawn Blood dropfix
DELETE FROM `creature_loot_template` WHERE `item` = '30850';
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
('18859', '30850', '100', '0', '1', '1', '9', '10641', '0');
-- Silithid Swarm misc
UPDATE `creature_template` SET `minlevel` = '49', `maxlevel` = '50', `minhealth` = '1', `maxhealth` = '1', `minmana` = '0', `maxmana` = '0' WHERE `entry` = '4196';
-- Silithid Swarm Passive
DELETE FROM `creature_template_addon` WHERE (`entry` = '4196');
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
('4196', '0', '16908544', '0', '4097', '0', '0', '6590 0');
-- Earthgrab totem of creatures fix
UPDATE `creature_template` SET `minhealth` = '15', `maxhealth` = '15', `minmana` = '0', `maxmana` = '0', `mindmg` = '0', `maxdmg` = '0', `attackpower` = '0', `rangeattacktime` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `spell1` = '31983' WHERE `entry` = '6066';
-- Fleet Master Firallon misc
UPDATE `creature_template` SET `minlevel` = '41', `maxlevel` = '42', `minhealth` = '2064', `maxhealth` = '2064', `armor` = '680' WHERE `entry` = '2546';

-- NF's fixes
--
-- spell
--

INSERT IGNORE INTO `spell_target_position` VALUES 
(54029,571,5849.159,602.093,651.130,2.364),
(54028,571,5758.786,678.359,642.726,5.572);
INSERT IGNORE INTO `spell_target_position` VALUES 
(59901,1,-8369.485,-4253.097,-204.257,3.783),
(53141,571,5807.811,587.977,660.939,1.663),
(61419,571,5848.319,853.494,843.216,4.817),
(61420,571,5820.179,835.536,680.335,3.703),
(59314,571,5765.134,862.609,865.294,4.552),
(59316,571,5797.498,794.935,661.867,4.582);

--
-- go
--

UPDATE `gameobject_template` SET `flags`=`flags`|8 WHERE `type`=11;
UPDATE `gameobject_template` SET `name`='Portal to Dalaran' WHERE `entry`=191164;

UPDATE `gameobject` SET `state`=1 WHERE `id` IN (1735,2040,2047,2653,165658,181555,181569,1731,1732,1733,1734,89634,171938,183395);

--
-- creature
--

UPDATE `creature_template` SET `InhabitType`=`InhabitType`|4 WHERE `entry` IN (24673,23772,24440,23689,23693,26174,25464,25349,25364,24770,25721,26127,32492,32189,31137,21659,22974,22972,22980,21999,18996,18963,17536,24172,24272,23935,23557,28274,31702,30332,30330,29694,29625,29570,29808,29460,29458,28378,22317,17307);

UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `id` IN (29754,27046,23777,27064,25284,31787,24439,24464,28778,11152,25490,25492,28240,28739,31773,24824,28408,31836,29667,29672,29673,29676,29674,32638,32639);
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry` IN (27046,30051,20556,31416,31522,31523);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (28913,28907);

UPDATE `creature_template` SET `speed`='0.01' WHERE `entry` IN (22461,23907,31243,27607,25493,25492,25490,28938,25455,25444);

INSERT IGNORE INTO `game_event_creature` VALUES (106515,2),(106516,2);
INSERT IGNORE INTO `game_event_gameobject` VALUES (55005,2),(55028,2);

--
-- quest
--

UPDATE `quest_template` SET `StartScript`=74 WHERE `entry`=74;
UPDATE `quest_template` SET `CompleteScript`=67 WHERE `entry`=67;
UPDATE `quest_template` SET `CompleteScript`=231 WHERE `entry`=231;
DELETE FROM `quest_end_scripts` WHERE `id` IN (67,231);
INSERT INTO `quest_end_scripts` VALUES (67,0,10,2044,300000,0,-10953.321,1568.472,46.978,3.392),(231,0,10,3301,30000,0,-10237.961,353.657,50.951,2.700);
DELETE FROM `quest_start_scripts` WHERE `id`=74;
INSERT INTO `quest_start_scripts` VALUES (74,0,10,2044,300000,0,-10953.321,988.509,98.984,5.349);

--

UPDATE `quest_template` SET `SrcSpell`=45883 WHERE `entry`=11681;
UPDATE `quest_template` SET `SrcSpell`=46064 WHERE `entry`=11733;

--

UPDATE `quest_template` SET `MinLevel`=71 WHERE `entry` IN (12181);
UPDATE `quest_template` SET `MinLevel`=68 WHERE `entry` IN (12117,12118,12482,12566,12790,13094,13095);
UPDATE `quest_template` SET `MinLevel`=72 WHERE `entry` IN (12143,12145,12146,12147,12142,12144,12149,12148,12077,12496,12264,12454,12265,12049,12052,12050,12076,12262,12261,12043,12469,12458,12045,12075,12046,12047,12112,12044,12079,12266,12459,12263,12447,12078,12080,12150,12456,12151,12470,12267);
UPDATE `quest_template` SET `MinLevel`=73 WHERE `entry` IN (12488,12487,12468,12257,12433,12443);
UPDATE `quest_template` SET `MinLevel`=74 WHERE `entry` IN (12542,12545,12789,12791,12794,12796,12432,12437);
UPDATE `quest_template` SET `MinLevel`=77 WHERE `entry` IN (13124,13126,13127,13128,13078);
UPDATE `quest_template` SET `MinLevel`=80 WHERE `entry` IN (13343,13375,13372);
UPDATE `quest_template` SET `MinLevel`=70 WHERE `entry` IN (11864,11867,11866,11869,11876,11879,11878,11884,11871,11870,11892,11868,11872,11865,11423);
UPDATE `quest_template` SET `MinLevel`=69 WHERE `entry` IN (11570,11563,11562,11645,11650,11569,11564,11702,11704,11571,11560,11565,11561,11559,12486);
UPDATE `quest_template` SET `MinLevel`=80 WHERE `entry` IN (13412,13413,13414,13246);
UPDATE `quest_template` SET `MinLevel`=68 WHERE `ZoneOrSort`=3537 AND `MinLevel`=0 AND `entry` NOT IN (12156,12108,12103,12087,11790,12490,11621);
UPDATE `quest_template` SET `MinLevel`=71 WHERE `ZoneOrSort`=65 AND `MinLevel`=0;
UPDATE `quest_template` SET `MinLevel`=69 WHERE `ZoneOrSort`=4024 AND `MinLevel`=0 AND `entry` NOT IN (11939);
UPDATE `quest_template` SET `MinLevel`=69 WHERE `ZoneOrSort`=4265 AND `MinLevel`=0;

UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|1 WHERE `entry`=11867;
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|2 WHERE `entry`=11708;
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|2 WHERE `QuestFlags`=QuestFlags|4;

UPDATE `quest_template` SET `PrevQuestId`=11672 WHERE `entry`=11727;
UPDATE `quest_template` SET `PrevQuestId`=11727 WHERE `entry`=11797;
UPDATE `quest_template` SET `PrevQuestId`=11797 WHERE `entry`=11889;
UPDATE `quest_template` SET `PrevQuestId`=11889 WHERE `entry`=11897;
UPDATE `quest_template` SET `PrevQuestId`=-11789 WHERE `entry`=11920;
UPDATE `quest_template` SET `PrevQuestId`=11920 WHERE `entry`=11791;
UPDATE `quest_template` SET `PrevQuestId`=11791 WHERE `entry`=12141;
UPDATE `quest_template` SET `NextQuestId`=11613 WHERE `entry`=12141;
UPDATE `quest_template` SET `PrevQuestId`=11613 WHERE `entry`=11619;
UPDATE `quest_template` SET `PrevQuestId`=11619 WHERE `entry`=11620;
UPDATE `quest_template` SET `PrevQuestId`=11620 WHERE `entry`=11625;
UPDATE `quest_template` SET `PrevQuestId`=11625 WHERE `entry`=11626;
UPDATE `quest_template` SET `PrevQuestId`=11791 WHERE `entry`=11792;
UPDATE `quest_template` SET `PrevQuestId`=11792 WHERE `entry`=11793;
UPDATE `quest_template` SET `PrevQuestId`=11793 WHERE `entry`=11794;
UPDATE `quest_template` SET `PrevQuestId`=11791 WHERE `entry`=11792;
UPDATE `quest_template` SET `PrevQuestId`=11792 WHERE `entry`=11793;
UPDATE `quest_template` SET `PrevQuestId`=11793 WHERE `entry`=11794;
UPDATE `quest_template` SET `PrevQuestId`=11897 WHERE `entry`=11928;
UPDATE `quest_template` SET `PrevQuestId`=11928 WHERE `entry`=11901;
UPDATE `quest_template` SET `PrevQuestId`=11901 WHERE `entry`=11902;
UPDATE `quest_template` SET `PrevQuestId`=11902 WHERE `entry`=11903;
UPDATE `quest_template` SET `PrevQuestId`=11903 WHERE `entry`=11904;
UPDATE `quest_template` SET `PrevQuestId`=11904 WHERE `entry`=11962;
UPDATE `quest_template` SET `PrevQuestId`=11962 WHERE `entry`=11963;
UPDATE `quest_template` SET `PrevQuestId`=11963 WHERE `entry`=11965;
UPDATE `quest_template` SET `PrevQuestId`=11902 WHERE `entry`=11913;
UPDATE `quest_template` SET `PrevQuestId`=11901 WHERE `entry`=11908;
UPDATE `quest_template` SET `PrevQuestId`=11897 WHERE `entry`=11927;
UPDATE `quest_template` SET `PrevQuestId`=11927 WHERE `entry`=11599;
UPDATE `quest_template` SET `PrevQuestId`=11599 WHERE `entry`=11600;
UPDATE `quest_template` SET `PrevQuestId`=11600 WHERE `entry`=11601;
UPDATE `quest_template` SET `PrevQuestId`=11601 WHERE `entry`=11603;
UPDATE `quest_template` SET `PrevQuestId`=11603 WHERE `entry`=11604;
UPDATE `quest_template` SET `PrevQuestId`=11604 WHERE `entry`=11932;
UPDATE `quest_template` SET `PrevQuestId`=11932 WHERE `entry`=12086;
UPDATE `quest_template` SET `PrevQuestId`=12086 WHERE `entry`=11944;
UPDATE `quest_template` SET `PrevQuestId`=11944 WHERE `entry`=12088;
UPDATE `quest_template` SET `PrevQuestId`=11956 WHERE `entry`=11938;
UPDATE `quest_template` SET `PrevQuestId`=11938 WHERE `entry`=11942;
UPDATE `quest_template` SET `PrevQuestId`=11942 WHERE `entry`=12019;
UPDATE `quest_template` SET `PrevQuestId`=11897 WHERE `entry`=11707;
UPDATE `quest_template` SET `PrevQuestId`=11707 WHERE `entry`=11708;
UPDATE `quest_template` SET `PrevQuestId`=11708 WHERE `entry`=11712;
UPDATE `quest_template` SET `PrevQuestId`=11712 WHERE `entry`=11788;
UPDATE `quest_template` SET `PrevQuestId`=11788 WHERE `entry`=11798;
UPDATE `quest_template` SET `PrevQuestId`=11708 WHERE `entry`=11710;
UPDATE `quest_template` SET `PrevQuestId`=11710 WHERE `entry`=11692;
UPDATE `quest_template` SET `PrevQuestId`=11692 WHERE `entry`=11693;
UPDATE `quest_template` SET `PrevQuestId`=11693 WHERE `entry`=11694;
UPDATE `quest_template` SET `PrevQuestId`=11694 WHERE `entry`=11698;
UPDATE `quest_template` SET `PrevQuestId`=11694 WHERE `entry`=11697;
UPDATE `quest_template` SET `PrevQuestId`=11697 WHERE `entry`=11699;
UPDATE `quest_template` SET `PrevQuestId`=11699 WHERE `entry`=11700;
UPDATE `quest_template` SET `PrevQuestId`=11700 WHERE `entry`=11701;
UPDATE `quest_template` SET `PrevQuestId`=11708 WHERE `entry`=11645;
UPDATE `quest_template` SET `PrevQuestId`=11645 WHERE `entry`=11650;
UPDATE `quest_template` SET `PrevQuestId`=11650 WHERE `entry`=11653;
UPDATE `quest_template` SET `PrevQuestId`=11653 WHERE `entry`=11658;
UPDATE `quest_template` SET `PrevQuestId`=11658 WHERE `entry`=11670;
UPDATE `quest_template` SET `PrevQuestId`=11729 WHERE `entry`=11730;
UPDATE `quest_template` SET `PrevQuestId`=11712 WHERE `entry`=11725;
UPDATE `quest_template` SET `PrevQuestId`=11725 WHERE `entry`=11726;
UPDATE `quest_template` SET `PrevQuestId`=11726 WHERE `entry`=11728;
UPDATE `quest_template` SET `PrevQuestId`=11728 WHERE `entry`=11795;
UPDATE `quest_template` SET `PrevQuestId`=11795 WHERE `entry`=11796;
UPDATE `quest_template` SET `PrevQuestId`=11796 WHERE `entry`=11873;
UPDATE `quest_template` SET `PrevQuestId`=11873 WHERE `entry`=11713;
UPDATE `quest_template` SET `PrevQuestId`=11713 WHERE `entry`=11715;
UPDATE `quest_template` SET `PrevQuestId`=11715 WHERE `entry`=11718;
UPDATE `quest_template` SET `PrevQuestId`=11718 WHERE `entry`=11723;
UPDATE `quest_template` SET `ExclusiveGroup`=11595 WHERE `entry` IN (11595,11596,11597);
UPDATE `quest_template` SET `NextQuestId`=11598 WHERE `entry` IN (11595,11596,11597);
UPDATE `quest_template` SET `PrevQuestId`=11598 WHERE `entry`=11602;
UPDATE `quest_template` SET `PrevQuestId`=11602 WHERE `entry`=11634;
UPDATE `quest_template` SET `PrevQuestId`=11634 WHERE `entry`=11636;
UPDATE `quest_template` SET `PrevQuestId`=11636 WHERE `entry`=11642;
UPDATE `quest_template` SET `PrevQuestId`=11642 WHERE `entry`=11643;
UPDATE `quest_template` SET `PrevQuestId`=11642 WHERE `entry`=11644;
UPDATE `quest_template` SET `NextQuestId`=11651 WHERE `entry` IN (11643,11644);
UPDATE `quest_template` SET `ExclusiveGroup`=-11643 WHERE `entry` IN (11643,11644);
UPDATE `quest_template` SET `PrevQuestId`=11651 WHERE `entry`=11652;
UPDATE `quest_template` SET `PrevQuestId`=11598 WHERE `entry`=11614;
UPDATE `quest_template` SET `PrevQuestId`=11614 WHERE `entry`=11615;
UPDATE `quest_template` SET `PrevQuestId`=11615 WHERE `entry`=11616;
UPDATE `quest_template` SET `PrevQuestId`=11616 WHERE `entry`=11618;
UPDATE `quest_template` SET `PrevQuestId`=11618 WHERE `entry`=11686;
UPDATE `quest_template` SET `PrevQuestId`=11686 WHERE `entry`=11703;
UPDATE `quest_template` SET `PrevQuestId`=11703 WHERE `entry`=11705;
UPDATE `quest_template` SET `PrevQuestId`=11705 WHERE `entry`=11709;
UPDATE `quest_template` SET `PrevQuestId`=11709 WHERE `entry`=11711;
UPDATE `quest_template` SET `PrevQuestId`=11711 WHERE `entry`=11714;
UPDATE `quest_template` SET `PrevQuestId`=11716 WHERE `entry`=11717;
UPDATE `quest_template` SET `PrevQuestId`=11717 WHERE `entry`=11719;
UPDATE `quest_template` SET `PrevQuestId`=11719 WHERE `entry`=11720;
UPDATE `quest_template` SET `PrevQuestId`=11720 WHERE `entry`=11721;
UPDATE `quest_template` SET `PrevQuestId`=11721 WHERE `entry`=11722;
UPDATE `quest_template` SET `ExclusiveGroup`=11652 WHERE `entry` IN (11705,11652,11722);
UPDATE `quest_template` SET `NextQuestId`=11916 WHERE `entry` IN (11705,11652,11722);
UPDATE `quest_template` SET `PrevQuestId`=11606 WHERE `entry`=11608;
UPDATE `quest_template` SET `PrevQuestId`=11618 WHERE `entry`=11676;
UPDATE `quest_template` SET `PrevQuestId`=11618 WHERE `entry`=11688;
UPDATE `quest_template` SET `PrevQuestId`=11688 WHERE `entry`=11690;
UPDATE `quest_template` SET `PrevQuestId`=11598 WHERE `entry`=11888;
UPDATE `quest_template` SET `PrevQuestId`=11888 WHERE `entry`=11890;
UPDATE `quest_template` SET `PrevQuestId`=11890 WHERE `entry`=11895;
UPDATE `quest_template` SET `PrevQuestId`=11895 WHERE `entry`=11896;
UPDATE `quest_template` SET `PrevQuestId`=11896 WHERE `entry`=11907;
UPDATE `quest_template` SET `PrevQuestId`=11598 WHERE `entry`=12486;
UPDATE `quest_template` SET `PrevQuestId`=12486 WHERE `entry`=11624;
UPDATE `quest_template` SET `PrevQuestId`=11624 WHERE `entry`=11627;
UPDATE `quest_template` SET `PrevQuestId`=11627 WHERE `entry`=11649;
UPDATE `quest_template` SET `PrevQuestId`=11649 WHERE `entry`=11629;
UPDATE `quest_template` SET `PrevQuestId`=11629 WHERE `entry`=11631;
UPDATE `quest_template` SET `PrevQuestId`=11631 WHERE `entry`=11635;
UPDATE `quest_template` SET `PrevQuestId`=11635 WHERE `entry`=11637;
UPDATE `quest_template` SET `PrevQuestId`=11637 WHERE `entry`=11638;
UPDATE `quest_template` SET `PrevQuestId`=11631 WHERE `entry`=11639;
UPDATE `quest_template` SET `PrevQuestId`=11881 WHERE `entry`=11893;
UPDATE `quest_template` SET `PrevQuestId`=11893 WHERE `entry`=11894;
UPDATE `quest_template` SET `PrevQuestId`=11894 WHERE `entry`=11628;
UPDATE `quest_template` SET `PrevQuestId`=11628 WHERE `entry`=11630;
UPDATE `quest_template` SET `PrevQuestId`=11630 WHERE `entry`=11633;
UPDATE `quest_template` SET `PrevQuestId`=11633 WHERE `entry`=11640;
UPDATE `quest_template` SET `PrevQuestId`=11640 WHERE `entry`=11898;
UPDATE `quest_template` SET `PrevQuestId`=11898 WHERE `entry`=11929;
UPDATE `quest_template` SET `PrevQuestId`=11929 WHERE `entry`=11930;
UPDATE `quest_template` SET `PrevQuestId`=11930 WHERE `entry`=11977;
UPDATE `quest_template` SET `PrevQuestId`=11977 WHERE `entry`=11978;
UPDATE `quest_template` SET `PrevQuestId`=11978 WHERE `entry`=11983;
UPDATE `quest_template` SET `PrevQuestId`=11983 WHERE `entry`=12008;
UPDATE `quest_template` SET `PrevQuestId`=11654 WHERE `entry`=11659;
UPDATE `quest_template` SET `PrevQuestId`=11633 WHERE `entry`=11647;
UPDATE `quest_template` SET `PrevQuestId`=11633 WHERE `entry`=11641;
UPDATE `quest_template` SET `PrevQuestId`=11684 WHERE `entry`=11685;
UPDATE `quest_template` SET `PrevQuestId`=11685 WHERE `entry`=11695;
UPDATE `quest_template` SET `PrevQuestId`=11695 WHERE `entry`=11706;
UPDATE `quest_template` SET `PrevQuestId`=11674 WHERE `entry`=11675;
UPDATE `quest_template` SET `PrevQuestId`=11675 WHERE `entry`=11677;
UPDATE `quest_template` SET `PrevQuestId`=11677 WHERE `entry`=11678;
UPDATE `quest_template` SET `PrevQuestId`=11678 WHERE `entry`=11687;
UPDATE `quest_template` SET `PrevQuestId`=11687 WHERE `entry`=11689;
UPDATE `quest_template` SET `PrevQuestId`=11677 WHERE `entry`=11683;
UPDATE `quest_template` SET `PrevQuestId`=11899 WHERE `entry`=11909;
UPDATE `quest_template` SET `PrevQuestId`=11655 WHERE `entry`=11656;
UPDATE `quest_template` SET `PrevQuestId`=11656 WHERE `entry`=11662;
UPDATE `quest_template` SET `PrevQuestId`=11660 WHERE `entry`=11661;
UPDATE `quest_template` SET `PrevQuestId`=11576 WHERE `entry`=11582;
UPDATE `quest_template` SET `PrevQuestId`=11582 WHERE `entry`=12728;
UPDATE `quest_template` SET `PrevQuestId`=11598 WHERE `entry`=11574;
UPDATE `quest_template` SET `PrevQuestId`=11897 WHERE `entry`=11575;
UPDATE `quest_template` SET `NextQuestId`=11587 WHERE `entry`=11574;
UPDATE `quest_template` SET `NextQuestId`=11587 WHERE `entry`=11575;
UPDATE `quest_template` SET `PrevQuestId`=11587 WHERE `entry`=11590;
UPDATE `quest_template` SET `PrevQuestId`=11590 WHERE `entry`=11646;
UPDATE `quest_template` SET `PrevQuestId`=11646 WHERE `entry`=11648;
UPDATE `quest_template` SET `PrevQuestId`=11648 WHERE `entry`=11663;
UPDATE `quest_template` SET `PrevQuestId`=11663 WHERE `entry`=11671;
UPDATE `quest_template` SET `PrevQuestId`=11671 WHERE `entry`=11679;
UPDATE `quest_template` SET `PrevQuestId`=11679 WHERE `entry`=11680;
UPDATE `quest_template` SET `PrevQuestId`=11680 WHERE `entry`=11681;
UPDATE `quest_template` SET `PrevQuestId`=11681 WHERE `entry`=11682;
UPDATE `quest_template` SET `PrevQuestId`=11682 WHERE `entry`=11733;
UPDATE `quest_template` SET `PrevQuestId`=11864 WHERE `entry`=11866;
UPDATE `quest_template` SET `PrevQuestId`=11866 WHERE `entry`=11867;
UPDATE `quest_template` SET `PrevQuestId`=11864 WHERE `entry`=11884;
UPDATE `quest_template` SET `PrevQuestId`=11864 WHERE `entry`=11876;
UPDATE `quest_template` SET `PrevQuestId`=11876 WHERE `entry`=11878;
UPDATE `quest_template` SET `PrevQuestId`=11878 WHERE `entry`=11879;
UPDATE `quest_template` SET `PrevQuestId`=11864 WHERE `entry`=11865;
UPDATE `quest_template` SET `PrevQuestId`=11865 WHERE `entry`=11868;
UPDATE `quest_template` SET `PrevQuestId`=11864 WHERE `entry`=11869;
UPDATE `quest_template` SET `PrevQuestId`=11869 WHERE `entry`=11870;
UPDATE `quest_template` SET `PrevQuestId`=11870 WHERE `entry`=11871;
UPDATE `quest_template` SET `PrevQuestId`=11871 WHERE `entry`=11872;
UPDATE `quest_template` SET `ExclusiveGroup`=-11884 WHERE `entry` IN (11884,11866,11868,11872,11879);
UPDATE `quest_template` SET `NextQuestId`=11892 WHERE `entry` IN (11884,11866,11868,11872,11879);
UPDATE `quest_template` SET `PrevQuestId`=11949 WHERE `entry`=11950;
UPDATE `quest_template` SET `PrevQuestId`=11950 WHERE `entry`=11961;
UPDATE `quest_template` SET `PrevQuestId`=11961 WHERE `entry`=11968;
UPDATE `quest_template` SET `PrevQuestId`=11968 WHERE `entry`=12117;
UPDATE `quest_template` SET `PrevQuestId`=11612 WHERE `entry`=11617;
UPDATE `quest_template` SET `PrevQuestId`=11617 WHERE `entry`=11623;
UPDATE `quest_template` SET `PrevQuestId`=11605 WHERE `entry`=11607;
UPDATE `quest_template` SET `PrevQuestId`=11607 WHERE `entry`=11609;
UPDATE `quest_template` SET `PrevQuestId`=11609 WHERE `entry`=11610;
UPDATE `quest_template` SET `PrevQuestId`=11571 WHERE `entry`=11570;
UPDATE `quest_template` SET `PrevQuestId`=11571 WHERE `entry`=11559;
UPDATE `quest_template` SET `PrevQuestId`=11559 WHERE `entry`=11561;
UPDATE `quest_template` SET `PrevQuestId`=11559 WHERE `entry`=11560;
UPDATE `quest_template` SET `PrevQuestId`=11560 WHERE `entry`=11562;
UPDATE `quest_template` SET `PrevQuestId`=11562 WHERE `entry`=11563;
UPDATE `quest_template` SET `PrevQuestId`=11563 WHERE `entry`=11565;
UPDATE `quest_template` SET `PrevQuestId`=11565 WHERE `entry`=11566;
UPDATE `quest_template` SET `PrevQuestId`=13413 WHERE `entry`=13414;
UPDATE `quest_template` SET `PrevQuestId`=13412 WHERE `entry`=13413;
UPDATE `quest_template` SET `PrevQuestId`=11918 WHERE `entry`=11936;
UPDATE `quest_template` SET `PrevQuestId`=11936 WHERE `entry`=11919;
UPDATE `quest_template` SET `PrevQuestId`=11919 WHERE `entry`=11931;
UPDATE `quest_template` SET `PrevQuestId`=11919 WHERE `entry`=11940;
UPDATE `quest_template` SET `PrevQuestId`=11941 WHERE `entry`=11943;
UPDATE `quest_template` SET `PrevQuestId`=11943 WHERE `entry`=11946;
UPDATE `quest_template` SET `PrevQuestId`=11946 WHERE `entry`=11951;
UPDATE `quest_template` SET `PrevQuestId`=11951 WHERE `entry`=11957;
UPDATE `quest_template` SET `PrevQuestId`=11957 WHERE `entry`=11967;
UPDATE `quest_template` SET `PrevQuestId`=11967 WHERE `entry`=11969;
UPDATE `quest_template` SET `PrevQuestId`=11969 WHERE `entry`=11973;
UPDATE `quest_template` SET `PrevQuestId`=11900 WHERE `entry`=11905;
UPDATE `quest_template` SET `PrevQuestId`=11912 WHERE `entry`=11914;
UPDATE `quest_template` SET `PrevQuestId`=11504 WHERE `entry`=11507;
UPDATE `quest_template` SET `PrevQuestId`=11507 WHERE `entry`=11508;
UPDATE `quest_template` SET `PrevQuestId`=11508 WHERE `entry`=11509;
UPDATE `quest_template` SET `PrevQuestId`=11509 WHERE `entry`=11510;
UPDATE `quest_template` SET `PrevQuestId`=11510 WHERE `entry`=11567;
UPDATE `quest_template` SET `PrevQuestId`=11510 WHERE `entry`=11512;
UPDATE `quest_template` SET `PrevQuestId`=11510 WHERE `entry`=11511;
UPDATE `quest_template` SET `PrevQuestId`=11510 WHERE `entry`=11519;
UPDATE `quest_template` SET `ExclusiveGroup`=-11511 WHERE `entry` IN (11567,11512,11511,11530);
UPDATE `quest_template` SET `NextQuestId`=11568 WHERE `entry` IN (11567,11512,11511,11530);
UPDATE `quest_template` SET `PrevQuestId`=11568 WHERE `entry`=11572;
UPDATE `quest_template` SET `PrevQuestId`=11456 WHERE `entry`=11457;
UPDATE `quest_template` SET `PrevQuestId`=11457 WHERE `entry`=11458;
UPDATE `quest_template` SET `PrevQuestId`=11458 WHERE `entry`=12118;
UPDATE `quest_template` SET `PrevQuestId`=11509 WHERE `entry`=11434;
UPDATE `quest_template` SET `PrevQuestId`=11434 WHERE `entry`=11455;
UPDATE `quest_template` SET `PrevQuestId`=11455 WHERE `entry`=11473;
UPDATE `quest_template` SET `PrevQuestId`=11473 WHERE `entry`=11459;
UPDATE `quest_template` SET `PrevQuestId`=11459 WHERE `entry`=11476;
UPDATE `quest_template` SET `PrevQuestId`=11476 WHERE `entry`=11479;
UPDATE `quest_template` SET `PrevQuestId`=11479 WHERE `entry`=11480;
UPDATE `quest_template` SET `PrevQuestId`=11480 WHERE `entry`=11471;
UPDATE `quest_template` SET `PrevQuestId`=11434 WHERE `entry`=11464;
UPDATE `quest_template` SET `PrevQuestId`=11464 WHERE `entry`=11466;
UPDATE `quest_template` SET `PrevQuestId`=11466 WHERE `entry`=11467;
UPDATE `quest_template` SET `PrevQuestId`=11469 WHERE `entry`=11472;
UPDATE `quest_template` SET `PrevQuestId`=11509 WHERE `entry`=11469;
UPDATE `quest_template` SET `ExclusiveGroup`=11411 WHERE `entry` IN (11411,12566);
UPDATE `quest_template` SET `PrevQuestId`=12181 WHERE `entry`=12182;
UPDATE `quest_template` SET `ExclusiveGroup`=-12182 WHERE `entry` IN (12182,12189);
UPDATE `quest_template` SET `NextQuestId`=12188 WHERE `entry` IN (12182,12189);
UPDATE `quest_template` SET `PrevQuestId`=12188 WHERE `entry`=12200;
UPDATE `quest_template` SET `PrevQuestId`=12200 WHERE `entry`=12218;
UPDATE `quest_template` SET `PrevQuestId`=12218 WHERE `entry`=12221;
UPDATE `quest_template` SET `PrevQuestId`=13124 WHERE `entry`=13126;
UPDATE `quest_template` SET `PrevQuestId`=13126 WHERE `entry`=13127;
UPDATE `quest_template` SET `PrevQuestId`=13127 WHERE `entry`=13128;
UPDATE `quest_template` SET `PrevQuestId`=11901 WHERE `entry`=11908;
UPDATE `quest_template` SET `PrevQuestId`=11908 WHERE `entry`=12035;

UPDATE `quest_template` SET `PrevQuestId`=11958 WHERE `entry`=11959;
UPDATE `quest_template` SET `PrevQuestId`=11959 WHERE `entry`=12009;
UPDATE `quest_template` SET `PrevQuestId`=11959 WHERE `entry`=12028;
UPDATE `quest_template` SET `PrevQuestId`=12028 WHERE `entry`=12030;
UPDATE `quest_template` SET `PrevQuestId`=12030 WHERE `entry`=12031;
UPDATE `quest_template` SET `PrevQuestId`=12031 WHERE `entry`=12032;
UPDATE `quest_template` SET `PrevQuestId`=12011 WHERE `entry`=12016;
UPDATE `quest_template` SET `PrevQuestId`=12016 WHERE `entry`=12017;
UPDATE `quest_template` SET `PrevQuestId`=11959 WHERE `entry`=12011;
UPDATE `quest_template` SET `PrevQuestId`=12148 WHERE `entry`=12149;
UPDATE `quest_template` SET `PrevQuestId`=12149 WHERE `entry`=12150;
UPDATE `quest_template` SET `PrevQuestId`=12150 WHERE `entry`=12151;
UPDATE `quest_template` SET `NextQuestId`=12148 WHERE `entry`=12146;
UPDATE `quest_template` SET `NextQuestId`=12148 WHERE `entry`=12147;
UPDATE `quest_template` SET `ExclusiveGroup`=12171 WHERE `entry` IN (12171,12297);
UPDATE `quest_template` SET `ExclusiveGroup`=12174 WHERE `entry` IN (12174,12298);
UPDATE `quest_template` SET `PrevQuestId`=12235 WHERE `entry`=12237;
UPDATE `quest_template` SET `PrevQuestId`=12237 WHERE `entry`=12251;
UPDATE `quest_template` SET `PrevQuestId`=12251 WHERE `entry`=12253;
UPDATE `quest_template` SET `PrevQuestId`=12253 WHERE `entry`=12309;
UPDATE `quest_template` SET `PrevQuestId`=12309 WHERE `entry`=12311;
UPDATE `quest_template` SET `PrevQuestId`=12251 WHERE `entry`=12438;
UPDATE `quest_template` SET `PrevQuestId`=12251 WHERE `entry`=12441;
UPDATE `quest_template` SET `PrevQuestId`=12251 WHERE `entry`=12442;
UPDATE `quest_template` SET `PrevQuestId`=12251 WHERE `entry`=12464;
UPDATE `quest_template` SET `PrevQuestId`=12251 WHERE `entry`=12282;
UPDATE `quest_template` SET `PrevQuestId`=12282 WHERE `entry`=12287;
UPDATE `quest_template` SET `PrevQuestId`=12287 WHERE `entry`=12290;
UPDATE `quest_template` SET `PrevQuestId`=12290 WHERE `entry`=12291;
UPDATE `quest_template` SET `PrevQuestId`=12291 WHERE `entry`=12301;
UPDATE `quest_template` SET `PrevQuestId`=12301 WHERE `entry`=12305;
UPDATE `quest_template` SET `PrevQuestId`=12305 WHERE `entry`=12475;
UPDATE `quest_template` SET `PrevQuestId`=12475 WHERE `entry`=12478;
UPDATE `quest_template` SET `PrevQuestId`=12305 WHERE `entry`=12476;
UPDATE `quest_template` SET `PrevQuestId`=12305 WHERE `entry`=12477;
UPDATE `quest_template` SET `PrevQuestId`=12251 WHERE `entry`=12275;
UPDATE `quest_template` SET `PrevQuestId`=12275 WHERE `entry`=12276;
UPDATE `quest_template` SET `PrevQuestId`=12276 WHERE `entry`=12277;
UPDATE `quest_template` SET `PrevQuestId`=12251 WHERE `entry`=12272;
UPDATE `quest_template` SET `PrevQuestId`=12251 WHERE `entry`=12269;
UPDATE `quest_template` SET `ExclusiveGroup`=-12272 WHERE `entry` IN (12272,12277);
UPDATE `quest_template` SET `NextQuestId`=12281 WHERE `entry` IN (12272,12277);
UPDATE `quest_template` SET `ExclusiveGroup`=-12281 WHERE `entry` IN (12281,12321);
UPDATE `quest_template` SET `NextQuestId`=12325 WHERE `entry` IN (12281,12321);
UPDATE `quest_template` SET `PrevQuestId`=12311 WHERE `entry`=12312;
UPDATE `quest_template` SET `PrevQuestId`=12312 WHERE `entry`=12319;
UPDATE `quest_template` SET `PrevQuestId`=12319 WHERE `entry`=12320;
UPDATE `quest_template` SET `PrevQuestId`=12320 WHERE `entry`=12321;
UPDATE `quest_template` SET `PrevQuestId`=12325 WHERE `entry`=12326;
UPDATE `quest_template` SET `PrevQuestId`=12326 WHERE `entry`=12455;
UPDATE `quest_template` SET `PrevQuestId`=12455 WHERE `entry`=12457;
UPDATE `quest_template` SET `PrevQuestId`=12457 WHERE `entry`=12463;
UPDATE `quest_template` SET `PrevQuestId`=12463 WHERE `entry`=12465;
UPDATE `quest_template` SET `PrevQuestId`=12465 WHERE `entry`=12466;
UPDATE `quest_template` SET `PrevQuestId`=12466 WHERE `entry`=12467;
UPDATE `quest_template` SET `PrevQuestId`=12467 WHERE `entry`=12472;
UPDATE `quest_template` SET `PrevQuestId`=12472 WHERE `entry`=12473;
UPDATE `quest_template` SET `PrevQuestId`=12473 WHERE `entry`=12474;
UPDATE `quest_template` SET `PrevQuestId`=12474 WHERE `entry`=12495;
UPDATE `quest_template` SET `NextQuestId`=12497 WHERE `entry`=12495;
UPDATE `quest_template` SET `PrevQuestId`=12497 WHERE `entry`=12498;
UPDATE `quest_template` SET `PrevQuestId`=12498 WHERE `entry`=12499;

UPDATE `quest_template` SET `PrevQuestId`=12545 WHERE `entry`=12789;
UPDATE `quest_template` SET `PrevQuestId`=12470 WHERE `entry`=13343;
UPDATE `quest_template` SET `PrevQuestId`=11243 WHERE `entry`=11244;
UPDATE `quest_template` SET `PrevQuestId`=11244 WHERE `entry`=11255;
UPDATE `quest_template` SET `PrevQuestId`=11255 WHERE `entry`=11290;
UPDATE `quest_template` SET `PrevQuestId`=11291 WHERE `entry`=11291;
UPDATE `quest_template` SET `PrevQuestId`=11244 WHERE `entry`=11273;
UPDATE `quest_template` SET `PrevQuestId`=11273 WHERE `entry`=11274;
UPDATE `quest_template` SET `PrevQuestId`=11274 WHERE `entry`=11276;
UPDATE `quest_template` SET `PrevQuestId`=11276 WHERE `entry`=11277;
UPDATE `quest_template` SET `PrevQuestId`=11277 WHERE `entry`=11299;
UPDATE `quest_template` SET `PrevQuestId`=11299 WHERE `entry`=11300;
UPDATE `quest_template` SET `PrevQuestId`=11300 WHERE `entry`=11278;
UPDATE `quest_template` SET `PrevQuestId`=11278 WHERE `entry`=11448;
UPDATE `quest_template` SET `PrevQuestId`=11448 WHERE `entry`=11474;
UPDATE `quest_template` SET `PrevQuestId`=11474 WHERE `entry`=11475;
UPDATE `quest_template` SET `PrevQuestId`=11475, `NextQuestId`=11485, `ExclusiveGroup`=-11483 WHERE `entry`=11483;
UPDATE `quest_template` SET `PrevQuestId`=11475, `NextQuestId`=11485, `ExclusiveGroup`=-11483 WHERE `entry`=11484;
UPDATE `quest_template` SET `PrevQuestId`=11485 WHERE `entry`=11489;
UPDATE `quest_template` SET `PrevQuestId`=11489 WHERE `entry`=11491;
UPDATE `quest_template` SET `PrevQuestId`=11491, `NextQuestId`=11501, `ExclusiveGroup`=-11494 WHERE `entry`=11494;
UPDATE `quest_template` SET `PrevQuestId`=11491, `NextQuestId`=11501, `ExclusiveGroup`=-11494 WHERE `entry`=11495;
UPDATE `quest_template` SET `NextQuestId`=11157 WHERE `entry`=11501;
UPDATE `quest_template` SET `PrevQuestId`=11244 WHERE `entry`=11420;
UPDATE `quest_template` SET `PrevQuestId`=11420 WHERE `entry`=11426;
UPDATE `quest_template` SET `PrevQuestId`=11426 WHERE `entry`=11427;
UPDATE `quest_template` SET `PrevQuestId`=11427 WHERE `entry`=11429;
UPDATE `quest_template` SET `PrevQuestId`=11429 WHERE `entry`=11430;
UPDATE `quest_template` SET `PrevQuestId`=11430 WHERE `entry`=11421;
UPDATE `quest_template` SET `PrevQuestId`=11421 WHERE `entry`=11436;
UPDATE `quest_template` SET `PrevQuestId`=11244 WHERE `entry`=11333;
UPDATE `quest_template` SET `PrevQuestId`=11333 WHERE `entry`=11343;
UPDATE `quest_template` SET `PrevQuestId`=11343 WHERE `entry`=11344;
UPDATE `quest_template` SET `PrevQuestId`=11244 WHERE `entry`=11251;
UPDATE `quest_template` SET `PrevQuestId`=11244 WHERE `entry`=11252;
UPDATE `quest_template` SET `PrevQuestId`=11244 WHERE `entry`=11288;
UPDATE `quest_template` SET `PrevQuestId`=11288 WHERE `entry`=11289;
UPDATE `quest_template` SET `PrevQuestId`=11278 WHERE `entry`=11477;
UPDATE `quest_template` SET `PrevQuestId`=11278 WHERE `entry`=11478;
UPDATE `quest_template` SET `PrevQuestId`=11278 WHERE `entry`=11460;
UPDATE `quest_template` SET `PrevQuestId`=11460 WHERE `entry`=11465;
UPDATE `quest_template` SET `PrevQuestId`=11465 WHERE `entry`=11468;
UPDATE `quest_template` SET `PrevQuestId`=11468 WHERE `entry`=11470;
UPDATE `quest_template` SET `PrevQuestId`=11157 WHERE `entry`=11187;
UPDATE `quest_template` SET `PrevQuestId`=11187 WHERE `entry`=11188;
UPDATE `quest_template` SET `PrevQuestId`=11188 WHERE `entry`=11199;
UPDATE `quest_template` SET `PrevQuestId`=11199 WHERE `entry`=11202;
UPDATE `quest_template` SET `PrevQuestId`=11202 WHERE `entry`=11327;
UPDATE `quest_template` SET `PrevQuestId`=11327 WHERE `entry`=11328;
UPDATE `quest_template` SET `PrevQuestId`=11328 WHERE `entry`=11330;
UPDATE `quest_template` SET `PrevQuestId`=11330 WHERE `entry`=11331;
UPDATE `quest_template` SET `PrevQuestId`=11331 WHERE `entry`=11332;
UPDATE `quest_template` SET `PrevQuestId`=11332 WHERE `entry`=11248;
UPDATE `quest_template` SET `PrevQuestId`=11248, `NextQuestId`=11250, `ExclusiveGroup`=-11245 WHERE `entry`=11245;
UPDATE `quest_template` SET `PrevQuestId`=11248, `NextQuestId`=11250, `ExclusiveGroup`=-11245 WHERE `entry`=11246;
UPDATE `quest_template` SET `PrevQuestId`=11248, `NextQuestId`=11250, `ExclusiveGroup`=-11245 WHERE `entry`=11247;
UPDATE `quest_template` SET `PrevQuestId`=11250 WHERE `entry`=11235;
UPDATE `quest_template` SET `PrevQuestId`=11235 WHERE `entry`=11236;
UPDATE `quest_template` SET `PrevQuestId`=11235 WHERE `entry`=11452;
UPDATE `quest_template` SET `PrevQuestId`=11250 WHERE `entry`=11237;
UPDATE `quest_template` SET `PrevQuestId`=11237 WHERE `entry`=11238;
UPDATE `quest_template` SET `PrevQuestId`=11248 WHERE `entry`=11249;
UPDATE `quest_template` SET `PrevQuestId`=11250 WHERE `entry`=11231;
UPDATE `quest_template` SET `PrevQuestId`=11231 WHERE `entry`=11239;
UPDATE `quest_template` SET `PrevQuestId`=11239 WHERE `entry`=11432;
UPDATE `quest_template` SET `PrevQuestId`=11188 WHERE `entry`=11218;
UPDATE `quest_template` SET `PrevQuestId`=11218 WHERE `entry`=11240;
UPDATE `quest_template` SET `PrevQuestId`=11188 WHERE `entry`=11224;
UPDATE `quest_template` SET `PrevQuestId`=11240 WHERE `entry`=11175;
UPDATE `quest_template` SET `PrevQuestId`=11240 WHERE `entry`=11176;
UPDATE `quest_template` SET `PrevQuestId`=11176 WHERE `entry`=11390;
UPDATE `quest_template` SET `PrevQuestId`=11390 WHERE `entry`=11391;
UPDATE `quest_template` SET `PrevQuestId`=11395 WHERE `entry`=11396;
UPDATE `quest_template` SET `PrevQuestId`=11322 WHERE `entry`=11325;
UPDATE `quest_template` SET `PrevQuestId`=11325 WHERE `entry`=11414;
UPDATE `quest_template` SET `PrevQuestId`=11414 WHERE `entry`=11416;
UPDATE `quest_template` SET `PrevQuestId`=11416 WHERE `entry`=11326;
UPDATE `quest_template` SET `PrevQuestId`=11250 WHERE `entry`=11406;
UPDATE `quest_template` SET `PrevQuestId`=11250 WHERE `entry`=11269;
UPDATE `quest_template` SET `PrevQuestId`=11269 WHERE `entry`=11418;
UPDATE `quest_template` SET `PrevQuestId`=11250 WHERE `entry`=11329;
UPDATE `quest_template` SET `PrevQuestId`=11329 WHERE `entry`=11410;
UPDATE `quest_template` SET `PrevQuestId`=11329 WHERE `entry`=11346;
UPDATE `quest_template` SET `PrevQuestId`=11346 WHERE `entry`=11349;
UPDATE `quest_template` SET `PrevQuestId`=11349 WHERE `entry`=11348;
UPDATE `quest_template` SET `PrevQuestId`=11329 WHERE `entry`=11355;
UPDATE `quest_template` SET `PrevQuestId`=11355 WHERE `entry`=11358;
UPDATE `quest_template` SET `PrevQuestId`=11358 WHERE `entry`=11359;
--
UPDATE `quest_template` SET `PrevQuestId`=11167 WHERE `entry`=11168;
UPDATE `quest_template` SET `PrevQuestId`=11168 WHERE `entry`=11170;
UPDATE `quest_template` SET `PrevQuestId`=11170 WHERE `entry`=11304;
UPDATE `quest_template` SET `PrevQuestId`=11304 WHERE `entry`=11305;
UPDATE `quest_template` SET `PrevQuestId`=11305 WHERE `entry`=11306;
UPDATE `quest_template` SET `PrevQuestId`=11306 WHERE `entry`=11307;
UPDATE `quest_template` SET `PrevQuestId`=11307 WHERE `entry`=11308;
UPDATE `quest_template` SET `PrevQuestId`=11308 WHERE `entry`=11309;
UPDATE `quest_template` SET `PrevQuestId`=11309 WHERE `entry`=11310;
UPDATE `quest_template` SET `PrevQuestId`=11227 WHERE `entry`=11253;
UPDATE `quest_template` SET `PrevQuestId`=11253 WHERE `entry`=11254;
UPDATE `quest_template` SET `PrevQuestId`=11254 WHERE `entry`=11295;
UPDATE `quest_template` SET `PrevQuestId`=11295 WHERE `entry`=11282;
UPDATE `quest_template` SET `PrevQuestId`=11282, `NextQuestId`=11303, `ExclusiveGroup`=-11283 WHERE `entry`=11283;
UPDATE `quest_template` SET `PrevQuestId`=11282, `NextQuestId`=11303, `ExclusiveGroup`=-11283 WHERE `entry`=11285;
UPDATE `quest_template` SET `PrevQuestId`=11303 WHERE `entry`=12481;
UPDATE `quest_template` SET `PrevQuestId`=11270 WHERE `entry`=11221;
UPDATE `quest_template` SET `PrevQuestId`=11221 WHERE `entry`=11229;
UPDATE `quest_template` SET `PrevQuestId`=11229 WHERE `entry`=11230;
UPDATE `quest_template` SET `PrevQuestId`=11230 WHERE `entry`=11232;
UPDATE `quest_template` SET `PrevQuestId`=11232 WHERE `entry`=11233;
UPDATE `quest_template` SET `PrevQuestId`=11233 WHERE `entry`=11234;
UPDATE `quest_template` SET `PrevQuestId`=11279 WHERE `entry`=11280;
UPDATE `quest_template` SET `PrevQuestId`=11275 WHERE `entry`=11281;
UPDATE `quest_template` SET `PrevQuestId`=11256, `NextQuestId`=11261, `ExclusiveGroup`=-11257 WHERE `entry`=11257;
UPDATE `quest_template` SET `PrevQuestId`=11256, `NextQuestId`=11261, `ExclusiveGroup`=-11257 WHERE `entry`=11258;
UPDATE `quest_template` SET `PrevQuestId`=11256, `NextQuestId`=11261, `ExclusiveGroup`=-11257 WHERE `entry`=11259;
UPDATE `quest_template` SET `PrevQuestId`=11256 WHERE `entry`=11260;
UPDATE `quest_template` SET `PrevQuestId`=11260 WHERE `entry`=11265;
UPDATE `quest_template` SET `PrevQuestId`=11265 WHERE `entry`=11268;
UPDATE `quest_template` SET `PrevQuestId`=11265 WHERE `entry`=11433;
UPDATE `quest_template` SET `PrevQuestId`=11261 WHERE `entry`=11263;
UPDATE `quest_template` SET `PrevQuestId`=11263 WHERE `entry`=11264;
UPDATE `quest_template` SET `PrevQuestId`=11263 WHERE `entry`=11453;
UPDATE `quest_template` SET `PrevQuestId`=11261 WHERE `entry`=11266;
UPDATE `quest_template` SET `PrevQuestId`=11266 WHERE `entry`=11267;
UPDATE `quest_template` SET `PrevQuestId`=11261 WHERE `entry`=11287;
UPDATE `quest_template` SET `PrevQuestId`=11287 WHERE `entry`=11286;
UPDATE `quest_template` SET `PrevQuestId`=11286 WHERE `entry`=11317;
UPDATE `quest_template` SET `PrevQuestId`=11317 WHERE `entry`=11323;
UPDATE `quest_template` SET `PrevQuestId`=11323 WHERE `entry`=11415;
UPDATE `quest_template` SET `PrevQuestId`=11415 WHERE `entry`=11417;
UPDATE `quest_template` SET `PrevQuestId`=11417 WHERE `entry`=11324;
UPDATE `quest_template` SET `PrevQuestId`=11275 WHERE `entry`=11350;
UPDATE `quest_template` SET `PrevQuestId`=11350 WHERE `entry`=11351;
UPDATE `quest_template` SET `PrevQuestId`=11351 WHERE `entry`=11352;
UPDATE `quest_template` SET `PrevQuestId`=11275 WHERE `entry`=11365;
UPDATE `quest_template` SET `PrevQuestId`=11365 WHERE `entry`=11366;
UPDATE `quest_template` SET `PrevQuestId`=11366 WHERE `entry`=11367;
UPDATE `quest_template` SET `PrevQuestId`=11275 WHERE `entry`=11311;
UPDATE `quest_template` SET `PrevQuestId`=11398 WHERE `entry`=11399;
UPDATE `quest_template` SET `PrevQuestId`=11297 WHERE `entry`=11298;
--
UPDATE `quest_template` SET `PrevQuestId`=11329 WHERE `entry`=11302;
UPDATE `quest_template` SET `PrevQuestId`=11313, `NextQuestId`=11319 WHERE `entry`=11314;
UPDATE `quest_template` SET `PrevQuestId`=11313, `NextQuestId`=11316 WHERE `entry`=11315;
UPDATE `quest_template` SET `PrevQuestId`=11314, `NextQuestId`=11428, `ExclusiveGroup`=-11316 WHERE `entry`=11316;
UPDATE `quest_template` SET `PrevQuestId`=11315, `NextQuestId`=11428, `ExclusiveGroup`=-11316 WHERE `entry`=11319;

DELETE FROM `areatrigger_involvedrelation` WHERE `id` IN (171,173,2207,2726,4064,4170,4280,4581,4588,4963,4899,4950,4986,5003);
INSERT INTO `areatrigger_involvedrelation` VALUES (171,273),(173,437),(2207,5156),(2726,6185),(4064,9160),(4170,9400),(4280,9700),(4581,10750),(4588,10772),(4963,11652),(4899,11890),(4950,12036),(4986,12263),(5003,12506);

DELETE FROM `creature_questrelation` WHERE `quest` IN (12470,12483,11867,12068,12121,12190,12238,12526,12697,12706,12715,12738);
INSERT INTO `creature_questrelation` VALUES (27856,12470),(26519,12483),(25809,11867),(26500,12068),(26886,12121),(26519,12190),(26500,12238),(27986,12526),
    (28377,12697),(28377,12706),(28377,12715),(28913,12738);

DELETE FROM `creature_involvedrelation` WHERE `quest` IN (12802,12470,11681,11790,9247,9295,9299,9300,9301,9302,9304,9984,9985,12137,12483,12582,12670,12688,12700,12714,12751);
INSERT INTO `creature_involvedrelation` VALUES (27856,12470),(25785,11681),(16281,9247),(16281,9295),(16281,9299),(16281,9300),(16281,9301),(16281,9302),
    (16281,9304),(18252,9984),(18383,9985),(26886,12137),(26519,12483),(28216,12582),(28377,12670),(27986,12688),(28377,12700),(28907,12714),(28913,12751),(26500,12802);

DELETE FROM `gameobject_questrelation` WHERE `quest` IN (11790,11254,12192,12857,13271,13390);
INSERT INTO `gameobject_questrelation` VALUES (186585,11254),(189990,12192),(191728,12857),(193195,13271),(193195,13390);
DELETE FROM `gameobject_involvedrelation` WHERE `quest` IN (11253,13263,13389);
INSERT INTO `gameobject_involvedrelation` VALUES (186585,11253),(193195,13263),(193195,13389);


-- Gigadriver's DK file
UPDATE `quest_template` SET `prevquestid`='12593' WHERE `entry`='12619';
UPDATE `quest_template` SET `prevquestid`='12619' WHERE `entry`='12842';
UPDATE `quest_template` SET `prevquestid`='12842' WHERE `entry`='12848';
UPDATE `quest_template` SET `prevquestid`='12848' WHERE `entry`='12636';
UPDATE `quest_template` SET `prevquestid`='12636' WHERE `entry`='12641';
UPDATE `quest_template` SET `prevquestid`='12641' WHERE `entry`='12657';
UPDATE `quest_template` SET `prevquestid`='12657' WHERE `entry`='12850';
UPDATE `quest_template` SET `prevquestid`='12850' WHERE `entry`='12670';
UPDATE `quest_template` SET `prevquestid`='12670' WHERE `entry`='12678';
UPDATE `quest_template` SET `prevquestid`='12680' WHERE `entry`='12687';
UPDATE `quest_template` SET `prevquestid`='12697' WHERE `entry`='12698';
UPDATE `quest_template` SET `prevquestid`='12698' WHERE `entry`='12700';
UPDATE `quest_template` SET `prevquestid`='12700' WHERE `entry`='12701';
UPDATE `quest_template` SET `prevquestid`='12701' WHERE `entry`='12706';
UPDATE `quest_template` SET `prevquestid`='12706' WHERE `entry`='12714';
UPDATE `quest_template` SET `prevquestid`='12714' WHERE `entry`='12715';
UPDATE `quest_template` SET `prevquestid`='12715' WHERE `entry`='12719';
UPDATE `quest_template` SET `prevquestid`='12719' WHERE `entry`='12720';
UPDATE `quest_template` SET `prevquestid`='12716' WHERE `entry`='12717';
UPDATE `quest_template` SET `prevquestid`='12723' WHERE `entry`='12724';
UPDATE `quest_template` SET `prevquestid`='12725' WHERE `entry`='12727';
UPDATE `quest_template` SET `prevquestid`='12727' WHERE `entry`='12738';
UPDATE `quest_template` SET `nextquestid`='12751' WHERE `entry` IN ('12739', '12742', '12743', '12744', '12745', '12746', '12747', '12748', '12749', '12750');
UPDATE `quest_template` SET `prevquestid`='12754' WHERE `entry`='12755';
UPDATE `quest_template` SET `prevquestid`='12755' WHERE `entry`='12756';
UPDATE `quest_template` SET `prevquestid`='12756' WHERE `entry`='12757';
UPDATE `quest_template` SET `prevquestid`='12778' WHERE `entry`='12779';
UPDATE `quest_template` SET `prevquestid`='12779' WHERE `entry`='12800';
UPDATE `quest_template` SET `prevquestid`='12801' WHERE `entry`='13165';
UPDATE `quest_template` SET `prevquestid`='13165' WHERE `entry`='13166';

-- SD2
-- EAI

-- Cleanup
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~2056 WHERE `unit_flags`&2048=2048 OR `unit_flags`&8=8;
UPDATE `creature`, `creature_template` SET `creature`.`curhealth`=`creature_template`.`minhealth`,`creature`.`curmana`=`creature_template`.`minmana` WHERE `creature`.`id`=`creature_template`.`entry` and `creature_template`.`RegenHealth` = '1';
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|1 WHERE `QuestFlags`=`QuestFlags`|4096;
DELETE FROM go,gt USING `gameobject` go LEFT JOIN `gameobject_template` gt ON go.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM gi,gt USING `gameobject_involvedrelation` gi LEFT JOIN `gameobject_template` gt ON gi.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM gqr,gt USING `gameobject_questrelation` gqr LEFT JOIN `gameobject_template` gt ON gqr.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM ge,go USING `game_event_gameobject` ge LEFT JOIN `gameobject` go ON ge.`guid`=go.`guid` WHERE go.`guid` IS NULL;
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_movement` WHERE `id` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation` UNION SELECT `id` FROM `creature_involvedrelation`);
DELETE FROM `db_version`;
INSERT IGNORE INTO `db_version` (`version`) VALUES ('UDB 0.11.0 (367) for MaNGOS 7109 with SD2 SQL for rev. 844');
-- END

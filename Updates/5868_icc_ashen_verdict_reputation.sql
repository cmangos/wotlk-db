-- Add missing Icecrown Citadel Ashen Verdict reputation rewards. (-0 / + 144)
-- Edgecases, merge as hackfixes for now: Source: Trinitycore / ACore - probably handled with triggers on encounter end?
-- 36789/valithria-dreamwalker, 38174 Valithria Dreamwalker (1) 
-- 37813/deathbringer-saurfang, 38402 Deathbringer Saurfang (1), 38582 Deathbringer Saurfang (2), 38583 Deathbringer Saurfang (3)
-- Wired 49/50 cases, ignore for now

-- Rimefang heroic template applied to wrong base template
UPDATE `creature_template` SET `DifficultyEntry1` = 0 WHERE `entry` = 36661; -- Icecrown Citadel: Pit of Saron - Rimefang (36661) - boss_rimefang_pos
UPDATE `creature_template` SET `DifficultyEntry1` = 38220 WHERE `entry` = 37533; -- Rimefang -> Rimefang (1) - npc_rimefang_icc
UPDATE `creature_template` SET `MovementType` = 3, `VehicleTemplateId` = 0 WHERE `entry` = 38220; -- Heroic Version

-- Restore Ashen Verdict reputation rewards for ICC bosses and trash.
DELETE FROM `creature_onkill_reputation` WHERE `RewOnKillRepFaction1` = 1156; -- (-0 / + 144)
INSERT INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES
(10404,1156,0,7,0,30,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=10404/pustulating-horror
(38110,1156,0,7,0,30,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=10404/pustulating-horror

(36597,1156,0,7,0,1500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36597/the-lich-king
(39166,1156,0,7,0,1500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36597/the-lich-king
(39167,1156,0,7,0,3000,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36597/the-lich-king - no heroic rep value because nobody kills TLK while still needing rep, needs confirmation
(39168,1156,0,7,0,3000,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36597/the-lich-king

(36612,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36612/lord-marrowgar
(37957,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36612/lord-marrowgar
(37958,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36612/lord-marrowgar
(37959,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36612/lord-marrowgar

(36626,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36626/festergut
(37504,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36626/festergut
(37505,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36626/festergut
(37506,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36626/festergut

(36627,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36627/rotface
(38390,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36627/rotface
(38549,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36627/rotface
(38550,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36627/rotface

(36678,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36678/professor-putricide
(38431,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36678/professor-putricide
(38585,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36678/professor-putricide
(38586,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36678/professor-putricide

(36724,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36724/servant-of-the-throne
(38057,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36724/servant-of-the-throne

(36725,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36725/nerubar-broodkeeper
(38058,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36725/nerubar-broodkeeper

(36805,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36805/deathspeaker-servant
(38075,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36805/deathspeaker-servant

(36807,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36807/deathspeaker-disciple
(38073,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36807/deathspeaker-disciple

(36808,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36808/deathspeaker-zealot
(38076,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36808/deathspeaker-zealot

(36811,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36811/deathspeaker-attendant
(38072,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36811/deathspeaker-attendant

(36829,1156,0,7,0,50,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36829/deathspeaker-high-priest
(38074,1156,0,7,0,50,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36829/deathspeaker-high-priest

(36853,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36853/sindragosa - no heroic rep value because nobody kills TLK while still needing rep, needs confirmation
(38265,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36853/sindragosa
(38266,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36853/sindragosa
(38267,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36853/sindragosa

(36855,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36855/lady-deathwhisper
(38106,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36855/lady-deathwhisper
(38296,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36855/lady-deathwhisper
(38297,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36855/lady-deathwhisper

(36880,1156,0,7,0,50,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36880/decaying-colossus
(37655,1156,0,7,0,50,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36880/decaying-colossus

(37007,1156,0,7,0,50,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37007/deathbound-ward
(38031,1156,0,7,0,50,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37007/deathbound-ward

(37011,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37011/the-damned
(38061,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37011/the-damned

(37012,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37012/ancient-skeletal-soldier
(38059,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37012/ancient-skeletal-soldier

(37022,1156,0,7,0,30,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37022/blighted-abomination
(38108,1156,0,7,0,30,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37022/blighted-abomination

(37023,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37023/plague-scientist
(38062,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37023/plague-scientist

(37025,1156,0,7,0,150,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37025/stinky
(38064,1156,0,7,0,150,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37025/stinky

(37038,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37038/vengeful-fleshreaper
(38063,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37038/vengeful-fleshreaper

(37098,1156,0,7,0,50,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37098/valkyr-herald
(38418,1156,0,7,0,50,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37098/valkyr-herald

(37126,1156,0,7,0,450,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37126/sister-svalna
(38258,1156,0,7,0,450,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37126/sister-svalna

(37217,1156,0,7,0,150,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37217/precious
(38103,1156,0,7,0,150,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37217/precious

(37228,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37228/frostwarden-warrior
(38134,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37228/frostwarden-warrior

(37229,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37229/frostwarden-sorceress
(38137,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37229/frostwarden-sorceress

(37230,1156,0,7,0,50,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37230/spire-frostwyrm
(38444,1156,0,7,0,50,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37230/spire-frostwyrm

(37232,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37232/nerubar-broodling
(38362,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37232/nerubar-broodling

(37501,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37501/nerubar-champion
(38197,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37501/nerubar-champion

(37502,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37502/nerubar-webweaver
(38198,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37502/nerubar-webweaver

(37531,1156,0,7,0,50,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37531/frostwarden-handler
(38139,1156,0,7,0,50,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37531/frostwarden-handler

(37532,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37532/frostwing-whelp
(38151,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37532/frostwing-whelp

(37533,1156,0,7,0,150,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37533/rimefang
(38220,1156,0,7,0,150,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37533/rimefang

(37534,1156,0,7,0,150,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37534/spinestalker
(38219,1156,0,7,0,150,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37534/spinestalker

(37544,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37544/spire-gargoyle
(38481,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37544/spire-gargoyle

(37545,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37545/spire-minion
(38445,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37545/spire-minion

(37546,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37546/frenzied-abomination
(38446,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37546/frenzied-abomination

(37571,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37571/darkfallen-advisor
(38098,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37571/darkfallen-advisor

(37595,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37595/darkfallen-blood-knight
(38100,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37595/darkfallen-blood-knight

(37662,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37662/darkfallen-commander
(38102,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37662/darkfallen-commander

(37663,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37663/darkfallen-noble
(38480,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37663/darkfallen-noble

(37664,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37664/darkfallen-archmage
(38099,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37664/darkfallen-archmage

(37665,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37665/darkfallen-lieutenant
(38101,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37665/darkfallen-lieutenant

(37666,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37666/darkfallen-tactician
(38479,1156,0,7,0,15,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37666/darkfallen-tactician

(37955,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37955/blood-queen-lanathel - heroic 2x
(38434,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37955/blood-queen-lanathel
(38435,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37955/blood-queen-lanathel
(38436,1156,0,7,0,500,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37955/blood-queen-lanathel

(37970,1156,0,7,0,83,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37970/prince-valanar
(38401,1156,0,7,0,83,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37970/prince-valanar
(38784,1156,0,7,0,165,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37970/prince-valanar
(38785,1156,0,7,0,165,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37970/prince-valanar

(37972,1156,0,7,0,83,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37972/prince-keleseth
(38399,1156,0,7,0,83,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37972/prince-keleseth
(38769,1156,0,7,0,165,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37972/prince-keleseth
(38770,1156,0,7,0,165,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37972/prince-keleseth

-- https://www.wowhead.com/wotlk/npc=37973/prince-taldaram shows its possible for 165, so it does not show, becaues the people are already exalted at the point.
(37973,1156,0,7,0,83,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37973/prince-taldaram
(38400,1156,0,7,0,83,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37973/prince-taldaram
(38771,1156,0,7,0,165,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37973/prince-taldaram
(38772,1156,0,7,0,165,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37973/prince-taldaram

(38104,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=38104/plagued-zombie
(38105,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=38104/plagued-zombie

(38490,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=38490/rotting-frost-giant
(38494,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=38494/rotting-frost-giant

-- Shadowmourne Q?
(37127,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37127/ymirjar-frostbinder
(38126,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37127/ymirjar-frostbinder
(37132,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37132/ymirjar-battle-maiden
(38132,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37132/ymirjar-battle-maiden
(37133,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37133/ymirjar-warlord
(38133,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37133/ymirjar-warlord
(37134,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37134/ymirjar-huntress
(38131,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37134/ymirjar-huntress
(38125,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=38125/ymirjar-deathbringer
(38130,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=38125/ymirjar-deathbringer
(38184,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=38184/corrupted-ymirjar
(38185,1156,0,7,0,2,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=38184/corrupted-ymirjar

-- unclear diff
(36789,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=36789/valithria-dreamwalker
(38174,1156,0,7,0,500,0,0,0,0), -- 38174 Valithria Dreamwalker (1)

(37813,1156,0,7,0,250,0,0,0,0), -- https://www.wowhead.com/wotlk/npc=37813/deathbringer-saurfang
(38402,1156,0,7,0,250,0,0,0,0), -- 38402 Deathbringer Saurfang (1)
(38582,1156,0,7,0,500,0,0,0,0), -- 38582 Deathbringer Saurfang (2)
(38583,1156,0,7,0,500,0,0,0,0); -- 38583 Deathbringer Saurfang (3)
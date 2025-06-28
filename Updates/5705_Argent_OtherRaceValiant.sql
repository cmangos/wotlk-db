-- ----------------------------
-- Other Race Valiant after Champion reached
-- ----------------------------

-- ally
-- q.13593 'Valiant Of Stormwind'
-- q.13703 'Valiant Of Ironforge'
-- q.13704 'Valiant Of Gnomeregan'
-- q.13705 'Valiant Of Exodar'
-- q.13706 'Valiant Of Darnassus'
-- horde
-- q.13707 'Valiant Of Orgrimmar'
-- q.13708 'Valiant Of Sen'jin'
-- q.13709 'Valiant Of Thunder Bluff'
-- q.13710 'Valiant Of Undercity'
-- q.13711 'Valiant Of Silvermoon'
-- special quest is used for condition (q available only if not in players log)
-- also other quests should dissapear when one is accepted
UPDATE quest_template SET RequiredCondition = 21022 WHERE entry = 13593; -- q.13593 'Valiant Of Stormwind'
UPDATE quest_template SET RequiredCondition = 21024 WHERE entry = 13703; -- q.13703 'Valiant Of Ironforge'
UPDATE quest_template SET RequiredCondition = 21026 WHERE entry = 13704; -- q.13704 'Valiant Of Gnomeregan
UPDATE quest_template SET RequiredCondition = 21028 WHERE entry = 13705; -- q.13705 'Valiant Of Exodar'
UPDATE quest_template SET RequiredCondition = 21030 WHERE entry = 13706; -- q.13706 'Valiant Of Darnassus'
UPDATE quest_template SET RequiredCondition = 21032 WHERE entry = 13707; -- q.13707 'Valiant Of Orgrimmar'
UPDATE quest_template SET RequiredCondition = 21034 WHERE entry = 13708; -- q.13708 'Valiant Of Sen'jin'
UPDATE quest_template SET RequiredCondition = 21036 WHERE entry = 13709; -- q.13709 'Valiant Of Thunder Bluff'
UPDATE quest_template SET RequiredCondition = 21038 WHERE entry = 13710; -- q.13710 'Valiant Of Undercity'
UPDATE quest_template SET RequiredCondition = 21040 WHERE entry = 13711; -- q.13711 'Valiant Of Silvermoon'
DELETE FROM conditions WHERE condition_entry BETWEEN 21009 AND 21040;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- ally
(21009,9,13593,0,0,0,1,''),
(21010,9,13703,0,0,0,1,''),
(21011,9,13704,0,0,0,1,''),
(21012,9,13705,0,0,0,1,''),
(21013,9,13706,0,0,0,1,''),
-- horde
(21014,9,13707,0,0,0,1,''),
(21015,9,13708,0,0,0,1,''),
(21016,9,13709,0,0,0,1,''),
(21017,9,13710,0,0,0,1,''),
(21018,9,13711,0,0,0,1,''),
-- special quest
(21019,8,13686,0,0,0,1,''), -- ally
(21020,8,13687,0,0,0,1,''), -- horde
-- quests:
-- ally
-- q.13593 'Valiant Of Stormwind'
(21021,-1,21013,21012,21011,21010,0,''),
(21022,-1,21021,21019,0,0,0,''),
-- q.13703 'Valiant Of Ironforge'
(21023,-1,21013,21012,21011,21009,0,''),
(21024,-1,21023,21019,0,0,0,''),
-- q.13704 'Valiant Of Gnomeregan'
(21025,-1,21013,21012,21010,21009,0,''),
(21026,-1,21025,21019,0,0,0,''),
-- q.13705 'Valiant Of Exodar'
(21027,-1,21013,21011,21010,21009,0,''),
(21028,-1,21027,21019,0,0,0,''),
-- q.13706 'Valiant Of Darnassus'
(21029,-1,21012,21011,21010,21009,0,''),
(21030,-1,21029,21019,0,0,0,''),
-- horde
-- q.13707 'Valiant Of Orgrimmar'
(21031,-1,21018,21017,21016,21015,0,''),
(21032,-1,21031,21020,0,0,0,''),
-- q.13708 'Valiant Of Sen'jin'
(21033,-1,21018,21017,21016,21014,0,''),
(21034,-1,21033,21020,0,0,0,''),
-- q.13709 'Valiant Of Thunder Bluff'
(21035,-1,21018,21017,21015,21014,0,''),
(21036,-1,21035,21020,0,0,0,''),
-- q.13710 'Valiant Of Undercity'
(21037,-1,21018,21016,21015,21014,0,''),
(21038,-1,21037,21020,0,0,0,''),
-- q.13711 'Valiant Of Silvermoon'
(21039,-1,21017,21016,21015,21014,0,''),
(21040,-1,21039,21020,0,0,0,'');

-- Quests: The Valiant's Charge
-- shouldnt have race restrictions, but must have conditions to prevent few available at same time
-- q.13718 'The Valiant's Charge' - Stormwind
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21043 WHERE entry = 13718;
-- q.13714 'The Valiant's Charge' - Ironforge
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21044 WHERE entry = 13714;
-- q.13715 'The Valiant's Charge' - Gnomeregan
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21045 WHERE entry = 13715;
-- q.13716 'The Valiant's Charge' - Exodar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21046 WHERE entry = 13716;
-- q.13717 'The Valiant's Charge' - Darnassus
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21047 WHERE entry = 13717;
-- q.13697 'The Valiant's Charge' - Orgrimmar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21048 WHERE entry = 13697;
-- q.13719 'The Valiant's Charge' - Sen'jin
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21049 WHERE entry = 13719;
-- q.13720 'The Valiant's Charge' - Thunder Blu
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21050 WHERE entry = 13720;
-- q.13721 'The Valiant's Charge' - Undercity
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21051 WHERE entry = 13721;
-- q.13722 'The Valiant's Charge' - Silvermoon
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21052 WHERE entry = 13722;
DELETE FROM conditions WHERE condition_entry BETWEEN 21041 AND 21052;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- special quest
(21041,8,13686,0,0,0,0,''), -- ally
(21042,8,13687,0,0,0,0,''), -- horde
-- q.13718 'The Valiant's Charge' - Stormwind
(21043,-1,21041,20957,0,0,0,''),
-- q.13714 'The Valiant's Charge' - Ironforge
(21044,-1,21041,20953,0,0,0,''),
-- q.13715 'The Valiant's Charge' - Gnomeregan
(21045,-1,21041,20961,0,0,0,''),
-- q.13716 'The Valiant's Charge' - Exodar
(21046,-1,21041,20945,0,0,0,''),
-- q.13717 'The Valiant's Charge' - Darnassus
(21047,-1,21041,20949,0,0,0,''),
-- q.13697 'The Valiant's Charge' - Orgrimmar
(21048,-1,21042,20385,0,0,0,''),
-- q.13719 'The Valiant's Charge' - Sen'jin
(21049,-1,21042,20397,0,0,0,''),
-- q.13720 'The Valiant's Charge' - Thunder Bluff
(21050,-1,21042,20393,0,0,0,''),
-- q.13721 'The Valiant's Charge' - Undercity
(21051,-1,21042,20864,0,0,0,''),
-- q.13722 'The Valiant's Charge' - Silvermoon
(21052,-1,21042,20389,0,0,0,'');

-- all Valiant Daily quests should also be available for other Races 
-- Quests: 'A Blade Fit For A Champion'
-- q.13603 - stormwind
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21055 WHERE entry = 13603;
-- q.13741 - Ironforge
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21058 WHERE entry = 13741;
-- q.13757 - Darnassus
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21067 WHERE entry = 13757;
-- q.13746 - Gnomeregan
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21061 WHERE entry = 13746;
-- q.13752 - Exodar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21064 WHERE entry = 13752;
-- q.13778 - undercity
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21082 WHERE entry = 13778;
-- q.13762 - orgrimmar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21070 WHERE entry = 13762;
-- q.13773 - Thunder Bluff
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21076 WHERE entry = 13773;
-- q.13768 - Darkspear
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21073 WHERE entry = 13768;
-- q.13783 - Silvermoon
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21079 WHERE entry = 13783;

-- Quests: 'A Worthy Weapon'
-- q.13600 - stormwind
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21055 WHERE entry = 13600;
-- q.13742 - Ironforge
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21058 WHERE entry = 13742;
-- q.13758 - Darnassus
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21067 WHERE entry = 13758;
-- q.13747 - Gnomeregan
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21061 WHERE entry = 13747;
-- q.13753 - Exodar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21064 WHERE entry = 13753;
-- q.13779 - undercity
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21082 WHERE entry = 13779;
-- q.13763 - orgrimmar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21070 WHERE entry = 13763;
-- q.13774 - Thunder Bluff
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21076 WHERE entry = 13774;
-- q.13769 - Darkspear
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21073 WHERE entry = 13769;
-- q.13784 - Silvermoon
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21079 WHERE entry = 13784;

-- Quests: 'The Edge Of Winter'
-- q.13616 - stormwind
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21055 WHERE entry = 13616;
-- q.13743 - Ironforge
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21058 WHERE entry = 13743;
-- q.13759 - Darnassus
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21067 WHERE entry = 13759;
-- q.13748 - Gnomeregan
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21061 WHERE entry = 13748;
-- q.13754 - Exodar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21064 WHERE entry = 13754;
-- q.13780 - undercity
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21082 WHERE entry = 13780;
-- q.13764 - orgrimmar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21070 WHERE entry = 13764;
-- q.13775 - Thunder Bluff
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21076 WHERE entry = 13775;
-- q.13770 - Darkspear
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21073 WHERE entry = 13770;
-- q.13785 - Silvermoon
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21079 WHERE entry = 13785;

-- Quests: 'A Valiant's Field Training'
-- q.13592 - stormwind
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21055 WHERE entry = 13592;
-- q.13744 - Ironforge
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21058 WHERE entry = 13744;
-- q.13760 - Darnassus
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21067 WHERE entry = 13760;
-- q.13749 - Gnomeregan
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21061 WHERE entry = 13749;
-- q.13755 - Exodar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21064 WHERE entry = 13755;
-- q.13781 - undercity
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21082 WHERE entry = 13781;
-- q.13765 - orgrimmar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21070 WHERE entry = 13765;
-- q.13776 - Thunder Bluff
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21076 WHERE entry = 13776;
-- q.13771 - Darkspear
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21073 WHERE entry = 13771;
-- q.13786 - Silvermoon
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21079 WHERE entry = 13786;

-- Quests: 'At The Enemy's Gates'
-- q.13847 - stormwind
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21055 WHERE entry = 13847;
-- q.13851 - Ironforge
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21058 WHERE entry = 13851;
-- q.13855 - Darnassus
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21067 WHERE entry = 13855;
-- q.13852 - Gnomeregan
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21061 WHERE entry = 13852;
-- q.13854 - Exodar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21064 WHERE entry = 13854;
-- q.13860 - undercity
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21082 WHERE entry = 13860;
-- q.13856 - orgrimmar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21070 WHERE entry = 13856;
-- q.13858 - Thunder Bluff
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21076 WHERE entry = 13858;
-- q.13857 - Darkspear
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21073 WHERE entry = 13857;
-- q.13859 - Silvermoon
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21079 WHERE entry = 13859;

-- Quests: 'The Grand Melee'
-- q.13665 - stormwind
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21055 WHERE entry = 13665;
-- q.13745 - Ironforge
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21058 WHERE entry = 13745;
-- q.13761 - Darnassus
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21067 WHERE entry = 13761;
-- q.13750 - Gnomeregan
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21061 WHERE entry = 13750;
-- q.13756 - Exodar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21064 WHERE entry = 13756;
-- q.13782 - undercity
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21082 WHERE entry = 13782;
-- q.13767 - orgrimmar
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21070 WHERE entry = 13767;
-- q.13777 - Thunder Bluff
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21076 WHERE entry = 13777;
-- q.13772 - Darkspear
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21073 WHERE entry = 13772;
-- q.13787 - Silvermoon
UPDATE quest_template SET RequiredRaces = 0, RequiredCondition = 21079 WHERE entry = 13787;
DELETE FROM conditions WHERE condition_entry BETWEEN 21053 AND 21082;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- Stormwind
(21053,-1,20962,20954,835,0,0,''), -- human native
(21054,-1,20962,20955,816,0,0,''), -- other ally races
(21055,-2,21054,21053,0,0,0,''),
-- Ironforge
(21056,-1,20963,20950,837,0,0,''), -- dwarf native
(21057,-1,20963,20951,824,0,0,''), -- other ally races
(21058,-2,21057,21056,0,0,0,''),
-- Gnomeregan
(21059,-1,20964,20958,841,0,0,''), -- dwarf native
(21060,-1,20964,20959,823,0,0,''), -- other ally races
(21061,-2,21060,21059,0,0,0,''),
-- Exodar
(21062,-1,20965,20939,844,0,0,''), -- Draenei native
(21063,-1,20965,20943,818,0,0,''), -- other ally races
(21064,-2,21063,21062,0,0,0,''),
-- Darnassian
(21065,-1,20966,20946,838,0,0,''), -- Night Elf native
(21066,-1,20966,20947,822,0,0,''), -- other ally races
(21067,-2,21066,21065,0,0,0,''),
-- Orgrimmar
(21068,-1,20967,20382,836,0,0,''), -- Orc native
(21069,-1,20967,20383,815,0,0,''), -- other horde races
(21070,-2,21069,21068,0,0,0,''),
-- Darkspear
(21071,-1,20968,20394,842,0,0,''), -- Troll native
(21072,-1,20968,20395,819,0,0,''), -- other horde races
(21073,-2,21072,21071,0,0,0,''),
-- Thunder Bluff
(21074,-1,20969,20390,840,0,0,''), -- Tauren native
(21075,-1,20969,20391,817,0,0,''), -- other horde races
(21076,-2,21075,21074,0,0,0,''),
-- Silvermoon
(21077,-1,20970,20386,843,0,0,''), -- BElf native
(21078,-1,20970,20387,820,0,0,''), -- other horde races
(21079,-2,21078,21077,0,0,0,''),
-- Forsaken
(21080,-1,20971,20398,839,0,0,''), -- Undead native
(21081,-1,20971,20399,821,0,0,''), -- other horde races
(21082,-2,21081,21080,0,0,0,'');

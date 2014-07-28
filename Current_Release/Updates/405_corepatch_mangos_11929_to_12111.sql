-- 11940
ALTER TABLE db_version CHANGE COLUMN required_11926_01_mangos_creature_template required_11940_01_mangos_creature_movement_scripts bit;


ALTER TABLE creature_movement_scripts ADD COLUMN temp MEDIUMINT(8) DEFAULT 0 AFTER command;

-- Move datalong4 -> 2, 3 -> 4, 2 -> 3 (right shift)
UPDATE creature_movement_scripts SET temp=datalong4 WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);
UPDATE creature_movement_scripts SET datalong4=datalong3, datalong3=datalong2, datalong2=temp WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);

ALTER TABLE creature_movement_scripts CHANGE COLUMN datalong3 buddy_entry MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE creature_movement_scripts CHANGE COLUMN datalong4 search_radius MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';

UPDATE creature_movement_scripts SET temp=0;

/* Chat*/
UPDATE creature_movement_scripts SET temp=temp | 0x04 WHERE command=0 AND (data_flags & 0x02) > 0; -- target self
UPDATE creature_movement_scripts SET temp=temp | 0x01 WHERE command=0 AND (data_flags & 0x04) > 0; -- buddy as target
UPDATE creature_movement_scripts SET temp=temp | 0x10 WHERE command=0 AND (data_flags & 0x01) > 0; -- will produce error
-- Note that old flag 0x01 // flag_target_player_as_source     0x01 could not be converted automatically, need to check every script

/* Emote*/
UPDATE creature_movement_scripts SET temp=temp | 0x02 WHERE command=1 AND (data_flags & 0x01 > 0) AND buddy_entry = 0; -- reverse order if no buddy defined
/*Summon */
UPDATE creature_movement_scripts SET temp=temp | 0x08 WHERE command=10 AND (data_flags & 0x01 > 0); -- Summon as active
/* Remove Aura */
UPDATE creature_movement_scripts SET temp=0x02 WHERE command=14 AND datalong2=1;
UPDATE creature_movement_scripts SET datalong2=0 WHERE command=14;
/* Cast */
UPDATE creature_movement_scripts SET temp=temp | 0x08 WHERE command=15 AND (datalong2 & 0x04 > 0); -- cast triggered
UPDATE creature_movement_scripts SET temp=temp | 0x04 WHERE command=15 AND datalong2=0x01; -- s->t
UPDATE creature_movement_scripts SET temp=temp | 0x06 WHERE command=15 AND datalong2=0x02; -- t->t
UPDATE creature_movement_scripts SET temp=temp | 0x02 WHERE command=15 AND datalong2=0x03; -- t->s
UPDATE creature_movement_scripts SET datalong2=0 WHERE command=15;
/* change faction */
UPDATE creature_movement_scripts SET datalong2=data_flags WHERE command=22;
/* morph/ mount */
UPDATE creature_movement_scripts SET temp=temp | 0x08 WHERE command IN (23, 24) AND (data_flags & 0x01 > 0); -- Summon as active
/* attack start */
UPDATE creature_movement_scripts SET temp=temp | 0x03 WHERE command=26 AND data_flags=0x02; -- b->s
UPDATE creature_movement_scripts SET temp=temp | 0x01 WHERE command=26 AND data_flags=0x04 AND buddy_entry!=0; -- s->b/t
UPDATE creature_movement_scripts SET temp=temp | 0x14 WHERE command=26 AND data_flags=0x06 AND buddy_entry!=0; -- s->s -- Throw error, this would be unreasonable if buddy defined
UPDATE creature_movement_scripts SET temp=temp | 0x04 WHERE command=26 AND data_flags=0x06 AND buddy_entry=0; -- s->s
/* stand state */
UPDATE creature_movement_scripts SET temp=temp | 0x02 WHERE command=28 AND (data_flags & 0x01 > 0) AND buddy_entry=0;
/* change npc flag */
UPDATE creature_movement_scripts SET datalong2=data_flags WHERE command=29;

UPDATE creature_movement_scripts SET data_flags=temp;

ALTER TABLE creature_movement_scripts DROP COLUMN temp;

ALTER TABLE db_version CHANGE COLUMN required_11940_01_mangos_creature_movement_scripts required_11940_02_mangos_event_scripts bit;


ALTER TABLE event_scripts ADD COLUMN temp MEDIUMINT(8) DEFAULT 0 AFTER command;

-- Move datalong4 -> 2, 3 -> 4, 2 -> 3 (right shift)
UPDATE event_scripts SET temp=datalong4 WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);
UPDATE event_scripts SET datalong4=datalong3, datalong3=datalong2, datalong2=temp WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);

ALTER TABLE event_scripts CHANGE COLUMN datalong3 buddy_entry MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE event_scripts CHANGE COLUMN datalong4 search_radius MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';

UPDATE event_scripts SET temp=0;

/* Chat*/
UPDATE event_scripts SET temp=temp | 0x04 WHERE command=0 AND (data_flags & 0x02) > 0; -- target self
UPDATE event_scripts SET temp=temp | 0x01 WHERE command=0 AND (data_flags & 0x04) > 0; -- buddy as target
UPDATE event_scripts SET temp=temp | 0x10 WHERE command=0 AND (data_flags & 0x01) > 0; -- will produce error
-- Note that old flag 0x01 // flag_target_player_as_source     0x01 could not be converted automatically, need to check every script

/* Emote*/
UPDATE event_scripts SET temp=temp | 0x02 WHERE command=1 AND (data_flags & 0x01 > 0) AND buddy_entry = 0; -- reverse order if no buddy defined
/*Summon */
UPDATE event_scripts SET temp=temp | 0x08 WHERE command=10 AND (data_flags & 0x01 > 0); -- Summon as active
/* Remove Aura */
UPDATE event_scripts SET temp=0x02 WHERE command=14 AND datalong2=1;
UPDATE event_scripts SET datalong2=0 WHERE command=14;
/* Cast */
UPDATE event_scripts SET temp=temp | 0x08 WHERE command=15 AND (datalong2 & 0x04 > 0); -- cast triggered
UPDATE event_scripts SET temp=temp | 0x04 WHERE command=15 AND datalong2=0x01; -- s->t
UPDATE event_scripts SET temp=temp | 0x06 WHERE command=15 AND datalong2=0x02; -- t->t
UPDATE event_scripts SET temp=temp | 0x02 WHERE command=15 AND datalong2=0x03; -- t->s
UPDATE event_scripts SET datalong2=0 WHERE command=15;
/* change faction */
UPDATE event_scripts SET datalong2=data_flags WHERE command=22;
/* morph/ mount */
UPDATE event_scripts SET temp=temp | 0x08 WHERE command IN (23, 24) AND (data_flags & 0x01 > 0); -- Summon as active
/* attack start */
UPDATE event_scripts SET temp=temp | 0x03 WHERE command=26 AND data_flags=0x02; -- b->s
UPDATE event_scripts SET temp=temp | 0x01 WHERE command=26 AND data_flags=0x04 AND buddy_entry!=0; -- s->b/t
UPDATE event_scripts SET temp=temp | 0x14 WHERE command=26 AND data_flags=0x06 AND buddy_entry!=0; -- s->s -- Throw error, this would be unreasonable if buddy defined
UPDATE event_scripts SET temp=temp | 0x04 WHERE command=26 AND data_flags=0x06 AND buddy_entry=0; -- s->s
/* stand state */
UPDATE event_scripts SET temp=temp | 0x02 WHERE command=28 AND (data_flags & 0x01 > 0) AND buddy_entry=0;
/* change npc flag */
UPDATE event_scripts SET datalong2=data_flags WHERE command=29;

UPDATE event_scripts SET data_flags=temp;

ALTER TABLE event_scripts DROP COLUMN temp;
ALTER TABLE db_version CHANGE COLUMN required_11940_02_mangos_event_scripts required_11940_03_mangos_gameobject_scripts bit;


ALTER TABLE gameobject_scripts ADD COLUMN temp MEDIUMINT(8) DEFAULT 0 AFTER command;

-- Move datalong4 -> 2, 3 -> 4, 2 -> 3 (right shift)
UPDATE gameobject_scripts SET temp=datalong4 WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);
UPDATE gameobject_scripts SET datalong4=datalong3, datalong3=datalong2, datalong2=temp WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);

ALTER TABLE gameobject_scripts CHANGE COLUMN datalong3 buddy_entry MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE gameobject_scripts CHANGE COLUMN datalong4 search_radius MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';

UPDATE gameobject_scripts SET temp=0;

/* Chat*/
UPDATE gameobject_scripts SET temp=temp | 0x04 WHERE command=0 AND (data_flags & 0x02) > 0; -- target self
UPDATE gameobject_scripts SET temp=temp | 0x01 WHERE command=0 AND (data_flags & 0x04) > 0; -- buddy as target
UPDATE gameobject_scripts SET temp=temp | 0x10 WHERE command=0 AND (data_flags & 0x01) > 0; -- will produce error
-- Note that old flag 0x01 // flag_target_player_as_source     0x01 could not be converted automatically, need to check every script

/* Emote*/
UPDATE gameobject_scripts SET temp=temp | 0x02 WHERE command=1 AND (data_flags & 0x01 > 0) AND buddy_entry = 0; -- reverse order if no buddy defined
/*Summon */
UPDATE gameobject_scripts SET temp=temp | 0x08 WHERE command=10 AND (data_flags & 0x01 > 0); -- Summon as active
/* Remove Aura */
UPDATE gameobject_scripts SET temp=0x02 WHERE command=14 AND datalong2=1;
UPDATE gameobject_scripts SET datalong2=0 WHERE command=14;
/* Cast */
UPDATE gameobject_scripts SET temp=temp | 0x08 WHERE command=15 AND (datalong2 & 0x04 > 0); -- cast triggered
UPDATE gameobject_scripts SET temp=temp | 0x04 WHERE command=15 AND datalong2=0x01; -- s->t
UPDATE gameobject_scripts SET temp=temp | 0x06 WHERE command=15 AND datalong2=0x02; -- t->t
UPDATE gameobject_scripts SET temp=temp | 0x02 WHERE command=15 AND datalong2=0x03; -- t->s
UPDATE gameobject_scripts SET datalong2=0 WHERE command=15;
/* change faction */
UPDATE gameobject_scripts SET datalong2=data_flags WHERE command=22;
/* morph/ mount */
UPDATE gameobject_scripts SET temp=temp | 0x08 WHERE command IN (23, 24) AND (data_flags & 0x01 > 0); -- Summon as active
/* attack start */
UPDATE gameobject_scripts SET temp=temp | 0x03 WHERE command=26 AND data_flags=0x02; -- b->s
UPDATE gameobject_scripts SET temp=temp | 0x01 WHERE command=26 AND data_flags=0x04 AND buddy_entry!=0; -- s->b/t
UPDATE gameobject_scripts SET temp=temp | 0x14 WHERE command=26 AND data_flags=0x06 AND buddy_entry!=0; -- s->s -- Throw error, this would be unreasonable if buddy defined
UPDATE gameobject_scripts SET temp=temp | 0x04 WHERE command=26 AND data_flags=0x06 AND buddy_entry=0; -- s->s
/* stand state */
UPDATE gameobject_scripts SET temp=temp | 0x02 WHERE command=28 AND (data_flags & 0x01 > 0) AND buddy_entry=0;
/* change npc flag */
UPDATE gameobject_scripts SET datalong2=data_flags WHERE command=29;

UPDATE gameobject_scripts SET data_flags=temp;

ALTER TABLE gameobject_scripts DROP COLUMN temp;
ALTER TABLE db_version CHANGE COLUMN required_11940_03_mangos_gameobject_scripts required_11940_04_mangos_gossip_scripts bit;


ALTER TABLE gossip_scripts ADD COLUMN temp MEDIUMINT(8) DEFAULT 0 AFTER command;

-- Move datalong4 -> 2, 3 -> 4, 2 -> 3 (right shift)
UPDATE gossip_scripts SET temp=datalong4 WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);
UPDATE gossip_scripts SET datalong4=datalong3, datalong3=datalong2, datalong2=temp WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);

ALTER TABLE gossip_scripts CHANGE COLUMN datalong3 buddy_entry MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE gossip_scripts CHANGE COLUMN datalong4 search_radius MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';

UPDATE gossip_scripts SET temp=0;

/* Chat*/
UPDATE gossip_scripts SET temp=temp | 0x04 WHERE command=0 AND (data_flags & 0x02) > 0; -- target self
UPDATE gossip_scripts SET temp=temp | 0x01 WHERE command=0 AND (data_flags & 0x04) > 0; -- buddy as target
UPDATE gossip_scripts SET temp=temp | 0x10 WHERE command=0 AND (data_flags & 0x01) > 0; -- will produce error
-- Note that old flag 0x01 // flag_target_player_as_source     0x01 could not be converted automatically, need to check every script

/* Emote*/
UPDATE gossip_scripts SET temp=temp | 0x02 WHERE command=1 AND (data_flags & 0x01 > 0) AND buddy_entry = 0; -- reverse order if no buddy defined
/*Summon */
UPDATE gossip_scripts SET temp=temp | 0x08 WHERE command=10 AND (data_flags & 0x01 > 0); -- Summon as active
/* Remove Aura */
UPDATE gossip_scripts SET temp=0x02 WHERE command=14 AND datalong2=1;
UPDATE gossip_scripts SET datalong2=0 WHERE command=14;
/* Cast */
UPDATE gossip_scripts SET temp=temp | 0x08 WHERE command=15 AND (datalong2 & 0x04 > 0); -- cast triggered
UPDATE gossip_scripts SET temp=temp | 0x04 WHERE command=15 AND datalong2=0x01; -- s->t
UPDATE gossip_scripts SET temp=temp | 0x06 WHERE command=15 AND datalong2=0x02; -- t->t
UPDATE gossip_scripts SET temp=temp | 0x02 WHERE command=15 AND datalong2=0x03; -- t->s
UPDATE gossip_scripts SET datalong2=0 WHERE command=15;
/* change faction */
UPDATE gossip_scripts SET datalong2=data_flags WHERE command=22;
/* morph/ mount */
UPDATE gossip_scripts SET temp=temp | 0x08 WHERE command IN (23, 24) AND (data_flags & 0x01 > 0); -- Summon as active
/* attack start */
UPDATE gossip_scripts SET temp=temp | 0x03 WHERE command=26 AND data_flags=0x02; -- b->s
UPDATE gossip_scripts SET temp=temp | 0x01 WHERE command=26 AND data_flags=0x04 AND buddy_entry!=0; -- s->b/t
UPDATE gossip_scripts SET temp=temp | 0x14 WHERE command=26 AND data_flags=0x06 AND buddy_entry!=0; -- s->s -- Throw error, this would be unreasonable if buddy defined
UPDATE gossip_scripts SET temp=temp | 0x04 WHERE command=26 AND data_flags=0x06 AND buddy_entry=0; -- s->s
/* stand state */
UPDATE gossip_scripts SET temp=temp | 0x02 WHERE command=28 AND (data_flags & 0x01 > 0) AND buddy_entry=0;
/* change npc flag */
UPDATE gossip_scripts SET datalong2=data_flags WHERE command=29;

UPDATE gossip_scripts SET data_flags=temp;

ALTER TABLE gossip_scripts DROP COLUMN temp;
ALTER TABLE db_version CHANGE COLUMN required_11940_04_mangos_gossip_scripts required_11940_05_mangos_quest_end_scripts bit;


ALTER TABLE quest_end_scripts ADD COLUMN temp MEDIUMINT(8) DEFAULT 0 AFTER command;

-- Move datalong4 -> 2, 3 -> 4, 2 -> 3 (right shift)
UPDATE quest_end_scripts SET temp=datalong4 WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);
UPDATE quest_end_scripts SET datalong4=datalong3, datalong3=datalong2, datalong2=temp WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);

ALTER TABLE quest_end_scripts CHANGE COLUMN datalong3 buddy_entry MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE quest_end_scripts CHANGE COLUMN datalong4 search_radius MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';

UPDATE quest_end_scripts SET temp=0;

/* Chat*/
UPDATE quest_end_scripts SET temp=temp | 0x04 WHERE command=0 AND (data_flags & 0x02) > 0; -- target self
UPDATE quest_end_scripts SET temp=temp | 0x01 WHERE command=0 AND (data_flags & 0x04) > 0; -- buddy as target
UPDATE quest_end_scripts SET temp=temp | 0x10 WHERE command=0 AND (data_flags & 0x01) > 0; -- will produce error
-- Note that old flag 0x01 // flag_target_player_as_source     0x01 could not be converted automatically, need to check every script

/* Emote*/
UPDATE quest_end_scripts SET temp=temp | 0x02 WHERE command=1 AND (data_flags & 0x01 > 0) AND buddy_entry = 0; -- reverse order if no buddy defined
/*Summon */
UPDATE quest_end_scripts SET temp=temp | 0x08 WHERE command=10 AND (data_flags & 0x01 > 0); -- Summon as active
/* Remove Aura */
UPDATE quest_end_scripts SET temp=0x02 WHERE command=14 AND datalong2=1;
UPDATE quest_end_scripts SET datalong2=0 WHERE command=14;
/* Cast */
UPDATE quest_end_scripts SET temp=temp | 0x08 WHERE command=15 AND (datalong2 & 0x04 > 0); -- cast triggered
UPDATE quest_end_scripts SET temp=temp | 0x04 WHERE command=15 AND datalong2=0x01; -- s->t
UPDATE quest_end_scripts SET temp=temp | 0x06 WHERE command=15 AND datalong2=0x02; -- t->t
UPDATE quest_end_scripts SET temp=temp | 0x02 WHERE command=15 AND datalong2=0x03; -- t->s
UPDATE quest_end_scripts SET datalong2=0 WHERE command=15;
/* change faction */
UPDATE quest_end_scripts SET datalong2=data_flags WHERE command=22;
/* morph/ mount */
UPDATE quest_end_scripts SET temp=temp | 0x08 WHERE command IN (23, 24) AND (data_flags & 0x01 > 0); -- Summon as active
/* attack start */
UPDATE quest_end_scripts SET temp=temp | 0x03 WHERE command=26 AND data_flags=0x02; -- b->s
UPDATE quest_end_scripts SET temp=temp | 0x01 WHERE command=26 AND data_flags=0x04 AND buddy_entry!=0; -- s->b/t
UPDATE quest_end_scripts SET temp=temp | 0x14 WHERE command=26 AND data_flags=0x06 AND buddy_entry!=0; -- s->s -- Throw error, this would be unreasonable if buddy defined
UPDATE quest_end_scripts SET temp=temp | 0x04 WHERE command=26 AND data_flags=0x06 AND buddy_entry=0; -- s->s
/* stand state */
UPDATE quest_end_scripts SET temp=temp | 0x02 WHERE command=28 AND (data_flags & 0x01 > 0) AND buddy_entry=0;
/* change npc flag */
UPDATE quest_end_scripts SET datalong2=data_flags WHERE command=29;

UPDATE quest_end_scripts SET data_flags=temp;

ALTER TABLE quest_end_scripts DROP COLUMN temp;
ALTER TABLE db_version CHANGE COLUMN required_11940_05_mangos_quest_end_scripts required_11940_06_mangos_quest_start_scripts bit;


ALTER TABLE quest_start_scripts ADD COLUMN temp MEDIUMINT(8) DEFAULT 0 AFTER command;

-- Move datalong4 -> 2, 3 -> 4, 2 -> 3 (right shift)
UPDATE quest_start_scripts SET temp=datalong4 WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);
UPDATE quest_start_scripts SET datalong4=datalong3, datalong3=datalong2, datalong2=temp WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);

ALTER TABLE quest_start_scripts CHANGE COLUMN datalong3 buddy_entry MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE quest_start_scripts CHANGE COLUMN datalong4 search_radius MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';

UPDATE quest_start_scripts SET temp=0;

/* Chat*/
UPDATE quest_start_scripts SET temp=temp | 0x04 WHERE command=0 AND (data_flags & 0x02) > 0; -- target self
UPDATE quest_start_scripts SET temp=temp | 0x01 WHERE command=0 AND (data_flags & 0x04) > 0; -- buddy as target
UPDATE quest_start_scripts SET temp=temp | 0x10 WHERE command=0 AND (data_flags & 0x01) > 0; -- will produce error
-- Note that old flag 0x01 // flag_target_player_as_source     0x01 could not be converted automatically, need to check every script

/* Emote*/
UPDATE quest_start_scripts SET temp=temp | 0x02 WHERE command=1 AND (data_flags & 0x01 > 0) AND buddy_entry = 0; -- reverse order if no buddy defined
/*Summon */
UPDATE quest_start_scripts SET temp=temp | 0x08 WHERE command=10 AND (data_flags & 0x01 > 0); -- Summon as active
/* Remove Aura */
UPDATE quest_start_scripts SET temp=0x02 WHERE command=14 AND datalong2=1;
UPDATE quest_start_scripts SET datalong2=0 WHERE command=14;
/* Cast */
UPDATE quest_start_scripts SET temp=temp | 0x08 WHERE command=15 AND (datalong2 & 0x04 > 0); -- cast triggered
UPDATE quest_start_scripts SET temp=temp | 0x04 WHERE command=15 AND datalong2=0x01; -- s->t
UPDATE quest_start_scripts SET temp=temp | 0x06 WHERE command=15 AND datalong2=0x02; -- t->t
UPDATE quest_start_scripts SET temp=temp | 0x02 WHERE command=15 AND datalong2=0x03; -- t->s
UPDATE quest_start_scripts SET datalong2=0 WHERE command=15;
/* change faction */
UPDATE quest_start_scripts SET datalong2=data_flags WHERE command=22;
/* morph/ mount */
UPDATE quest_start_scripts SET temp=temp | 0x08 WHERE command IN (23, 24) AND (data_flags & 0x01 > 0); -- Summon as active
/* attack start */
UPDATE quest_start_scripts SET temp=temp | 0x03 WHERE command=26 AND data_flags=0x02; -- b->s
UPDATE quest_start_scripts SET temp=temp | 0x01 WHERE command=26 AND data_flags=0x04 AND buddy_entry!=0; -- s->b/t
UPDATE quest_start_scripts SET temp=temp | 0x14 WHERE command=26 AND data_flags=0x06 AND buddy_entry!=0; -- s->s -- Throw error, this would be unreasonable if buddy defined
UPDATE quest_start_scripts SET temp=temp | 0x04 WHERE command=26 AND data_flags=0x06 AND buddy_entry=0; -- s->s
/* stand state */
UPDATE quest_start_scripts SET temp=temp | 0x02 WHERE command=28 AND (data_flags & 0x01 > 0) AND buddy_entry=0;
/* change npc flag */
UPDATE quest_start_scripts SET datalong2=data_flags WHERE command=29;

UPDATE quest_start_scripts SET data_flags=temp;

ALTER TABLE quest_start_scripts DROP COLUMN temp;
ALTER TABLE db_version CHANGE COLUMN required_11940_06_mangos_quest_start_scripts required_11940_07_mangos_spell_scripts bit;


ALTER TABLE spell_scripts ADD COLUMN temp MEDIUMINT(8) DEFAULT 0 AFTER command;

-- Move datalong4 -> 2, 3 -> 4, 2 -> 3 (right shift)
UPDATE spell_scripts SET temp=datalong4 WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);
UPDATE spell_scripts SET datalong4=datalong3, datalong3=datalong2, datalong2=temp WHERE command IN (0, 1, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);

ALTER TABLE spell_scripts CHANGE COLUMN datalong3 buddy_entry MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE spell_scripts CHANGE COLUMN datalong4 search_radius MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';

UPDATE spell_scripts SET temp=0;

/* Chat*/
UPDATE spell_scripts SET temp=temp | 0x04 WHERE command=0 AND (data_flags & 0x02) > 0; -- target self
UPDATE spell_scripts SET temp=temp | 0x01 WHERE command=0 AND (data_flags & 0x04) > 0; -- buddy as target
UPDATE spell_scripts SET temp=temp | 0x10 WHERE command=0 AND (data_flags & 0x01) > 0; -- will produce error
-- Note that old flag 0x01 // flag_target_player_as_source     0x01 could not be converted automatically, need to check every script

/* Emote*/
UPDATE spell_scripts SET temp=temp | 0x02 WHERE command=1 AND (data_flags & 0x01 > 0) AND buddy_entry = 0; -- reverse order if no buddy defined
/*Summon */
UPDATE spell_scripts SET temp=temp | 0x08 WHERE command=10 AND (data_flags & 0x01 > 0); -- Summon as active
/* Remove Aura */
UPDATE spell_scripts SET temp=0x02 WHERE command=14 AND datalong2=1;
UPDATE spell_scripts SET datalong2=0 WHERE command=14;
/* Cast */
UPDATE spell_scripts SET temp=temp | 0x08 WHERE command=15 AND (datalong2 & 0x04 > 0); -- cast triggered
UPDATE spell_scripts SET temp=temp | 0x04 WHERE command=15 AND datalong2=0x01; -- s->t
UPDATE spell_scripts SET temp=temp | 0x06 WHERE command=15 AND datalong2=0x02; -- t->t
UPDATE spell_scripts SET temp=temp | 0x02 WHERE command=15 AND datalong2=0x03; -- t->s
UPDATE spell_scripts SET datalong2=0 WHERE command=15;
/* change faction */
UPDATE spell_scripts SET datalong2=data_flags WHERE command=22;
/* morph/ mount */
UPDATE spell_scripts SET temp=temp | 0x08 WHERE command IN (23, 24) AND (data_flags & 0x01 > 0); -- Summon as active
/* attack start */
UPDATE spell_scripts SET temp=temp | 0x03 WHERE command=26 AND data_flags=0x02; -- b->s
UPDATE spell_scripts SET temp=temp | 0x01 WHERE command=26 AND data_flags=0x04 AND buddy_entry!=0; -- s->b/t
UPDATE spell_scripts SET temp=temp | 0x14 WHERE command=26 AND data_flags=0x06 AND buddy_entry!=0; -- s->s -- Throw error, this would be unreasonable if buddy defined
UPDATE spell_scripts SET temp=temp | 0x04 WHERE command=26 AND data_flags=0x06 AND buddy_entry=0; -- s->s
/* stand state */
UPDATE spell_scripts SET temp=temp | 0x02 WHERE command=28 AND (data_flags & 0x01 > 0) AND buddy_entry=0;
/* change npc flag */
UPDATE spell_scripts SET datalong2=data_flags WHERE command=29;

UPDATE spell_scripts SET data_flags=temp;

ALTER TABLE spell_scripts DROP COLUMN temp;

-- 11947
ALTER TABLE db_version CHANGE COLUMN required_11940_07_mangos_spell_scripts required_11947_01_mangos_dbscripts bit;

-- Update teleport
UPDATE creature_movement_scripts SET data_flags=data_flags|8 WHERE command=3 AND datalong2=0 AND (x!=0 AND y!=0 AND z!=0);
UPDATE event_scripts SET data_flags=data_flags|8 WHERE command=3 AND datalong2=0 AND (x!=0 AND y!=0 AND z!=0);
UPDATE gameobject_scripts SET data_flags=data_flags|8 WHERE command=3 AND datalong2=0 AND (x!=0 AND y!=0 AND z!=0);
UPDATE gossip_scripts SET data_flags=data_flags|8 WHERE command=3 AND datalong2=0 AND (x!=0 AND y!=0 AND z!=0);
UPDATE quest_end_scripts SET data_flags=data_flags|8 WHERE command=3 AND datalong2=0 AND (x!=0 AND y!=0 AND z!=0);
UPDATE quest_start_scripts SET data_flags=data_flags|8 WHERE command=3 AND datalong2=0 AND (x!=0 AND y!=0 AND z!=0);
UPDATE spell_scripts SET data_flags=data_flags|8 WHERE command=3 AND datalong2=0 AND (x!=0 AND y!=0 AND z!=0);

-- Set all move commands to default creature speed
UPDATE creature_movement_scripts SET datalong2=0 WHERE command=3;
UPDATE event_scripts SET datalong2=0 WHERE command=3;
UPDATE gameobject_scripts SET datalong2=0 WHERE command=3;
UPDATE gossip_scripts SET datalong2=0 WHERE command=3;
UPDATE quest_end_scripts SET datalong2=0 WHERE command=3;
UPDATE quest_start_scripts SET datalong2=0 WHERE command=3;
UPDATE spell_scripts SET datalong2=0 WHERE command=3;

-- 11953
ALTER TABLE db_version CHANGE COLUMN required_11947_01_mangos_dbscripts required_11953_01_mangos_playercreateinfo_spell bit;

DELETE FROM playercreateinfo_spell WHERE Spell=21009;
INSERT INTO playercreateinfo_spell (race,class,Spell,Note) VALUES
(4,6,21009,'Elusiveness'),
(4,11,21009,'Elusiveness');

-- 11955
ALTER TABLE db_version CHANGE COLUMN required_11953_01_mangos_playercreateinfo_spell required_11955_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (555,556);

ALTER TABLE db_version CHANGE COLUMN required_11955_01_mangos_mangos_string required_11955_02_mangos_command bit;

DELETE FROM command WHERE name LIKE 'hover';

-- 11958
ALTER TABLE db_version CHANGE COLUMN required_11955_02_mangos_command required_11958_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry=817;
INSERT INTO mangos_string VALUES (817,'Warning: You\'ve entered a no-fly zone and are about to be dismounted!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 11964
ALTER TABLE db_version CHANGE COLUMN required_11958_01_mangos_mangos_string required_11964_01_mangos_conditions bit;

DROP TABLE IF EXISTS `conditions`;
CREATE TABLE `conditions` (
  `condition_entry` mediumint(8) unsigned NOT NULL auto_increment COMMENT 'Identifier',
  `type` tinyint(3) signed NOT NULL DEFAULT '0' COMMENT 'Type of the condition',
  `value1` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'data field one for the condition',
  `value2` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'data field two for the condition',
  PRIMARY KEY  (`condition_entry`),
  CONSTRAINT unique_conditions UNIQUE (type,value1,value2)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Condition System';

ALTER TABLE gossip_menu_option ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER cond_3_val_2;
ALTER TABLE gossip_menu ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER cond_2_val_2;

ALTER TABLE reference_loot_template ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER condition_value2;
ALTER TABLE creature_loot_template ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER condition_value2;
ALTER TABLE gameobject_loot_template ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER condition_value2;
ALTER TABLE pickpocketing_loot_template ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER condition_value2;
ALTER TABLE item_loot_template ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER condition_value2;
ALTER TABLE fishing_loot_template ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER condition_value2;
ALTER TABLE skinning_loot_template ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER condition_value2;
ALTER TABLE disenchant_loot_template ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER condition_value2;
ALTER TABLE mail_loot_template ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER condition_value2;
ALTER TABLE prospecting_loot_template ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER condition_value2;
ALTER TABLE spell_loot_template ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER condition_value2;
ALTER TABLE milling_loot_template ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER condition_value2;

-- ATTENTION! SQL-converting removed due to manual fill in updatepack

-- 11968
ALTER TABLE db_version CHANGE COLUMN required_11964_01_mangos_conditions required_11968_01_mangos_creature_linking_template bit;

ALTER TABLE creature_linking_template ADD COLUMN search_range MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0'  AFTER flag;

-- 11985
ALTER TABLE db_version CHANGE COLUMN required_11968_01_mangos_creature_linking_template required_11985_01_mangos_gameobject_template_scripts bit;

--
-- Table structure for table `gameobject_template_scripts`
--

DROP TABLE IF EXISTS `gameobject_template_scripts`;
CREATE TABLE `gameobject_template_scripts` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `buddy_entry` int(10) unsigned NOT NULL default '0',
  `search_radius` int(10) unsigned NOT NULL default '0',
  `data_flags` tinyint(3) unsigned NOT NULL default '0',
  `dataint` int(11) NOT NULL default '0',
  `dataint2` int(11) NOT NULL default '0',
  `dataint3` int(11) NOT NULL default '0',
  `dataint4` int(11) NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0',
  `comments` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gameobject_template_scripts`
--

LOCK TABLES `gameobject_template_scripts` WRITE;
/*!40000 ALTER TABLE `gameobject_template_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_template_scripts` ENABLE KEYS */;
UNLOCK TABLES;

-- 11994
ALTER TABLE db_version CHANGE COLUMN required_11985_01_mangos_gameobject_template_scripts required_11994_01_mangos_creature_linking bit;

--
-- Table structure for table `creature_linking`
--

DROP TABLE IF EXISTS creature_linking;
CREATE TABLE `creature_linking` (
  `guid` int(10) UNSIGNED NOT NULL COMMENT 'creature.guid of the slave mob that is linked',
  `master_guid` int(10) UNSIGNED NOT NULL COMMENT 'master to trigger events',
  `flag` mediumint(8) UNSIGNED NOT NULL COMMENT 'flag - describing what should happen when',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature Linking System';

-- 12000
ALTER TABLE db_version CHANGE COLUMN required_11994_01_mangos_creature_linking required_12000_01_mangos_spell_template bit;

DROP TABLE IF EXISTS `spell_template`;
CREATE TABLE `spell_template` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `proc_flags` int(11) unsigned NOT NULL DEFAULT '0',
  `proc_chance` int(11) unsigned NOT NULL DEFAULT '0',
  `duration_index` int(11) unsigned NOT NULL DEFAULT '0',
  `effect0` int(11) unsigned NOT NULL DEFAULT '0',
  `effect0_implicit_target_a` int(11) unsigned NOT NULL DEFAULT '0',
  `effect0_radius_idx` int(11) unsigned NOT NULL DEFAULT '0',
  `effect0_apply_aura_name` int(11) unsigned NOT NULL DEFAULT '0',
  `effect0_misc_value` int(11) unsigned NOT NULL DEFAULT '0',
  `effect0_trigger_spell` int(11) unsigned NOT NULL DEFAULT '0',
  `comments` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='MaNGOS server side spells';

INSERT INTO spell_template VALUES
-- ID   proc_flags chnce dur  ef0 tarA0 rad  aur  misc    trigger
(21387, 0x00000028,  15,  21,   6,   1,   0,  42, 0,      21388, 'Melt-Weapon trigger aura related used by Ragnaros'),
(62388, 0x00000000, 101,  21,   6,   1,   0,   4, 0,      0,     'Aura required for Demonic Circle 48020');

-- 12012
ALTER TABLE db_version CHANGE COLUMN required_12000_01_mangos_spell_template required_12012_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id IN (23363, 25192);
INSERT INTO spell_template VALUES
(23363, 0x00000000, 101,  21,  76,  18,   0,   0, 179804, 0,     'Summon Drakonid Corpse Trigger'),
(25192, 0x00000000, 101,  21,  76,  18,   0,   0, 180619, 0,     'Summon Ossirian Crystal');

-- 12087
ALTER TABLE db_version CHANGE COLUMN required_12012_01_mangos_spell_template required_12087_01_mangos_mangos_string bit;

UPDATE mangos_string SET content_default='This item(s) has problems with equipping/storing to inventory.' WHERE entry=706;
UPDATE mangos_string SET content_default='Arenas are set to 1v1 for debugging. You cannot join as a group.' WHERE entry=737;
UPDATE mangos_string SET content_default='Account name cannot be longer than 16 characters (client limit), account not created!' WHERE entry=1005;
UPDATE mangos_string SET content_default='Can only quit from a Remote Admin console or the quit command was not entered in full (quit).' WHERE entry=1015;
UPDATE mangos_string SET content_default='ERROR: You can only assign a new name for a single selected character!' WHERE entry=1022;
UPDATE mangos_string SET content_default='Character \'%s\' (GUID: %u Account %u) can\'t be restored: account doesn\'t exist!' WHERE entry=1023;
UPDATE mangos_string SET content_default='Character \'%s\' (GUID: %u Account %u) can\'t be restored: name already in use!' WHERE entry=1025;
UPDATE mangos_string SET content_default='Command can only be called from a Remote Admin console.' WHERE entry=1029;
UPDATE mangos_string SET content_default='Account %s (Id: %u) has been granted %u expansion rights.' WHERE entry=1100;
UPDATE mangos_string SET content_default='Cannot add spawn because no free guids for static spawn in reserved guids range. Server restart is required before command can be used. Also look GuidReserveSize.* config options.' WHERE entry=1503;

ALTER TABLE db_version CHANGE COLUMN required_12087_01_mangos_mangos_string required_12087_02_mangos_command bit;

UPDATE command SET help='Syntax: .honor addkill\r\n\r\nAdd the targeted unit as one of your pvp kills today (you only get honor if it\'s a racial leader or a player)' WHERE name LIKE 'honor addkill';


-- 12091
ALTER TABLE db_version CHANGE COLUMN required_12087_02_mangos_command required_12091_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id IN (26133);
INSERT INTO spell_template VALUES
(26133, 0x00000000, 101,  21,  76,  18,   0,   0, 180795, 0,     'Summon Sandworm Base');

-- 12093
ALTER TABLE db_version CHANGE COLUMN required_12091_01_mangos_spell_template required_12093_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id IN (44920, 44924, 44928, 44932, 45158, 45162, 45166, 45170);
INSERT INTO spell_template VALUES
(44920, 0x00000000, 101,  21,   6,   1,   0,  56, 24941,  0,     'Model - Shattered Sun Marksman - BE Male Tier 4'),
(44924, 0x00000000, 101,  21,   6,   1,   0,  56, 24945,  0,     'Model - Shattered Sun Marksman - BE Female Tier 4'),
(44928, 0x00000000, 101,  21,   6,   1,   0,  56, 24949,  0,     'Model - Shattered Sun Marksman - Draenei Male Tier 4'),
(44932, 0x00000000, 101,  21,   6,   1,   0,  56, 24953,  0,     'Model - Shattered Sun Marksman - Draenei Female Tier 4'),
(45158, 0x00000000, 101,  21,   6,   1,   0,  56, 25119,  0,     'Model - Shattered Sun Warrior - BE Female Tier 4'),
(45162, 0x00000000, 101,  21,   6,   1,   0,  56, 25123,  0,     'Model - Shattered Sun Warrior - BE Male Tier 4'),
(45166, 0x00000000, 101,  21,   6,   1,   0,  56, 25127,  0,     'Model - Shattered Sun Warrior - Draenei Female Tier 4'),
(45170, 0x00000000, 101,  21,   6,   1,   0,  56, 25131,  0,     'Model - Shattered Sun Warrior - Draenei Male Tier 4');

-- 12094
ALTER TABLE db_version CHANGE COLUMN required_12093_01_mangos_spell_template required_12094_01_mangos_creature_template bit;

UPDATE creature_template SET flags_extra=flags_extra|0x800;

-- 12097
ALTER TABLE db_version CHANGE COLUMN required_12094_01_mangos_creature_template required_12097_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry BETWEEN 1600 AND 1636;

INSERT INTO mangos_string VALUES
(1600,'|cffffff00Northpass Tower has been taken by the Horde!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1601,'|cffffff00Northpass Tower has been taken by the Alliance!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1602,'|cffffff00Crown Guard Tower has been taken by the Horde!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1603,'|cffffff00Crown Guard Tower has been taken by the Alliance!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1604,'|cffffff00Eastwall Tower has been taken by the Horde!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1605,'|cffffff00Eastwall Tower has been taken by the Alliance!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1606,'|cffffff00The Plaguewood Tower has been taken by the Horde!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1607,'|cffffff00The Plaguewood Tower has been taken by the Alliance!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1608,'|cffffff00The Overlook has been taken by the Horde!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1609,'|cffffff00The Overlook has been taken by the Alliance!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1610,'|cffffff00The Stadium has been taken by the Horde!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1611,'|cffffff00The Stadium has been taken by the Alliance!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1612,'|cffffff00Broken Hill has been taken by the Horde!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1613,'|cffffff00Broken Hill has been taken by the Alliance!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1614,'|cffffff00The Horde has taken control of the East Beacon!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1615,'|cffffff00The Alliance has taken control of the East Beacon!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1616,'|cffffff00The Horde has taken control of the West Beacon!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1617,'|cffffff00The Alliance has taken control of the West Beacon!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1618,'|cffffff00The Horde has taken control of both beacons!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1619,'|cffffff00The Alliance has taken control of both beacons!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1620,'|cffffff00The Horde Field Scout is now issuing battle standards.|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1621,'|cffffff00The Alliance Field Scout is now issuing battle standards.|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1622,'|cffffff00The Horde has taken control of Twin Spire Ruins!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1623,'|cffffff00The Alliance has taken control of Twin Spire Ruins!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1624,'|cffffff00The Horde has taken control of a Spirit Tower!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1625,'|cffffff00The Alliance has taken control of a Spirit Tower!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1626,'|cffffff00The Horde has lost control of a Spirit Tower!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1627,'|cffffff00The Alliance has lost control of a Spirit Tower!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1628,'|cffffff00The Horde has taken control of The Bone Wastes!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1629,'|cffffff00The Alliance has taken control of The Bone Wastes!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1630,'|cffffff00The Horde is gaining control of Halaa!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1631,'|cffffff00The Alliance is gaining control of Halaa!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1632,'|cffffff00The Horde has taken control of Halaa!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1633,'|cffffff00The Alliance has taken control of Halaa!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1634,'|cffffff00Halaa is defenseless!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1635,'|cffffff00The Horde has collected 200 silithyst!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1636,'|cffffff00The Alliance has collected 200 silithyst!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

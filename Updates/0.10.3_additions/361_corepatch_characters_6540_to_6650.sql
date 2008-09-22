-- 6596_characters_arena_team.sql
ALTER TABLE arena_team CHANGE EmblemStyle _BackgroundColor int(10) unsigned NOT NULL default '0';
ALTER TABLE arena_team CHANGE EmblemColor _EmblemStyle int(10) unsigned NOT NULL default '0';
ALTER TABLE arena_team CHANGE BorderStyle _EmblemColor int(10) unsigned NOT NULL default '0';
ALTER TABLE arena_team CHANGE BorderColor _BorderStyle int(10) unsigned NOT NULL default '0';
ALTER TABLE arena_team CHANGE BackgroundColor _BorderColor int(10) unsigned NOT NULL default '0';
ALTER TABLE arena_team CHANGE _BackgroundColor BackgroundColor int(10) unsigned NOT NULL default '0';
ALTER TABLE arena_team CHANGE _EmblemStyle EmblemStyle int(10) unsigned NOT NULL default '0';
ALTER TABLE arena_team CHANGE _EmblemColor EmblemColor int(10) unsigned NOT NULL default '0';
ALTER TABLE arena_team CHANGE _BorderStyle BorderStyle int(10) unsigned NOT NULL default '0';
ALTER TABLE arena_team CHANGE _BorderColor BorderColor int(10) unsigned NOT NULL default '0';

-- 6598_character_spell.sql
ALTER TABLE `character_spell`
    ADD COLUMN `disabled` tinyint(3) unsigned NOT NULL default '0';

-- 6642_characters_declinedname.sql
ALTER TABLE character_declinedname
  MODIFY COLUMN genitive varchar(15) NOT NULL default '',
  MODIFY COLUMN dative varchar(15) NOT NULL default '',
  MODIFY COLUMN accusative varchar(15) NOT NULL default '',
  MODIFY COLUMN instrumental varchar(15) NOT NULL default '',
  MODIFY COLUMN prepositional varchar(15) NOT NULL default '';

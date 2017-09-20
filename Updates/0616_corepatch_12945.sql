-- We'll fake this update because we'll not add 22MB of data that should only be changed by core devs. That data will be added by install script

ALTER TABLE db_version CHANGE COLUMN required_12944_01_mangos_item_extraflags required_12945_01_mangos_spell_template bit;

DROP TABLE IF EXISTS `spell_template`;

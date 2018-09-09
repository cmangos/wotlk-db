-- Remove 0 set as AIName
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (15554,16166,17290,17296,17431); 

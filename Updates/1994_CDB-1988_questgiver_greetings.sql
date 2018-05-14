-- added for NPC 239
DELETE FROM `questgiver_greeting` WHERE Entry = 239;
INSERT INTO `questgiver_greeting` (`Entry`,`Type`,`text`,`EmoteId`,`EmoteDelay`) VALUES 
(239,0,'Adventure from lands far and near $bMeeting with folks both odd and queer $bBut if of me a question you ask $bYou must first complete a simple task!',0,0);

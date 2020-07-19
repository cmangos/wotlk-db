-- Northrend map: 571 - all dbscripts that contain guid = buddy IN search_radiuss moved to Reserved WoTLK Range 500k+

-- dbscripts_on_relay
SET @D1GUID := 500000;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 7118 WHERE search_radius = 107737 AND data_flags >= 16 AND buddy_entry = 24706;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 7120 WHERE search_radius = 108020 AND data_flags >= 16 AND buddy_entry = 24709;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 1069 WHERE search_radius = 5710919 AND data_flags >= 16 AND buddy_entry = 23033;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 651 WHERE search_radius = 5710922 AND data_flags >= 16 AND buddy_entry = 15214;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 608 WHERE search_radius = 106031 AND data_flags >= 16 AND buddy_entry = 15214;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 669 WHERE search_radius = 5710923 AND data_flags >= 16 AND buddy_entry = 15214;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 648 WHERE search_radius = 5710924 AND data_flags >= 16 AND buddy_entry = 15214;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4474 WHERE search_radius = 5711110 AND data_flags >= 16 AND buddy_entry = 24014;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4444 WHERE search_radius = 5711111 AND data_flags >= 16 AND buddy_entry = 24014;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4445 WHERE search_radius = 5711112 AND data_flags >= 16 AND buddy_entry = 24014;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 3305 WHERE search_radius = 5710783 AND data_flags >= 16 AND buddy_entry = 23842;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 3350 WHERE search_radius = 5710789 AND data_flags >= 16 AND buddy_entry = 23842;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 3298 WHERE search_radius = 5710781 AND data_flags >= 16 AND buddy_entry = 23842;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 3303 WHERE search_radius = 5710786 AND data_flags >= 16 AND buddy_entry = 23842;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 3349 WHERE search_radius = 5710790 AND data_flags >= 16 AND buddy_entry = 23842;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 3300 WHERE search_radius = 5710784 AND data_flags >= 16 AND buddy_entry = 23842;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 3351 WHERE search_radius = 5710787 AND data_flags >= 16 AND buddy_entry = 23842;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 3299 WHERE search_radius = 5710785 AND data_flags >= 16 AND buddy_entry = 23842;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 5079 WHERE search_radius = 100294 AND data_flags >= 16 AND buddy_entry = 24110;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 5106 WHERE search_radius = 100286 AND data_flags >= 16 AND buddy_entry = 24110;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 5108 WHERE search_radius = 100303 AND data_flags >= 16 AND buddy_entry = 24110;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 5111 WHERE search_radius = 100306 AND data_flags >= 16 AND buddy_entry = 24110;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 5138 WHERE search_radius = 100271 AND data_flags >= 16 AND buddy_entry = 24110;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 5110 WHERE search_radius = 100305 AND data_flags >= 16 AND buddy_entry = 24110;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 5080 WHERE search_radius = 100295 AND data_flags >= 16 AND buddy_entry = 24110;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 5133 WHERE search_radius = 100313 AND data_flags >= 16 AND buddy_entry = 24110;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4860 WHERE search_radius = 118691 AND data_flags >= 16 AND buddy_entry = 24050;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4521 WHERE search_radius = 5713148 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4545 WHERE search_radius = 5713149 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4519 WHERE search_radius = 5713150 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4520 WHERE search_radius = 5713151 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4503 WHERE search_radius = 5713152 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4522 WHERE search_radius = 5713153 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4553 WHERE search_radius = 5713166 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4556 WHERE search_radius = 5713167 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4559 WHERE search_radius = 5713168 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4563 WHERE search_radius = 5713169 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4558 WHERE search_radius = 5713170 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4502 WHERE search_radius = 5713171 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4536 WHERE search_radius = 5713180 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4560 WHERE search_radius = 5713181 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4529 WHERE search_radius = 5713182 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4518 WHERE search_radius = 5713183 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4530 WHERE search_radius = 5713184 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4526 WHERE search_radius = 5713185 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4575 WHERE search_radius = 5713193 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4532 WHERE search_radius = 5713194 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4511 WHERE search_radius = 5713195 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4565 WHERE search_radius = 5713196 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4527 WHERE search_radius = 5713197 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4528 WHERE search_radius = 5713198 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4531 WHERE search_radius = 5713205 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4593 WHERE search_radius = 5713206 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4510 WHERE search_radius = 5713207 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4616 WHERE search_radius = 5713208 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4577 WHERE search_radius = 5713209 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4538 WHERE search_radius = 5713210 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4568 WHERE search_radius = 5713218 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4504 WHERE search_radius = 5713219 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4535 WHERE search_radius = 5713220 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4582 WHERE search_radius = 5713221 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4581 WHERE search_radius = 5713223 AND data_flags >= 16 AND buddy_entry = 24021;
UPDATE dbscripts_on_relay SET search_radius := @D1GUID + 4567 WHERE search_radius = 5713222 AND data_flags >= 16 AND buddy_entry = 24021;

-- dbscripts_on_gossip
SET @D2GUID := 500000;
UPDATE dbscripts_on_gossip SET search_radius := @D2GUID + 14107 WHERE search_radius = 5713615 AND data_flags >= 16 AND buddy_entry = 26437;
UPDATE dbscripts_on_gossip SET search_radius := @D2GUID + 14106 WHERE search_radius = 5713616 AND data_flags >= 16 AND buddy_entry = 26437;
UPDATE dbscripts_on_gossip SET search_radius := @D2GUID + 14104 WHERE search_radius = 5713617 AND data_flags >= 16 AND buddy_entry = 26437;
UPDATE dbscripts_on_gossip SET search_radius := @D2GUID + 14101 WHERE search_radius = 5713619 AND data_flags >= 16 AND buddy_entry = 26437;
UPDATE dbscripts_on_gossip SET search_radius := @D2GUID + 14096 WHERE search_radius = 5713622 AND data_flags >= 16 AND buddy_entry = 26437;
UPDATE dbscripts_on_gossip SET search_radius := @D2GUID + 14102 WHERE search_radius = 5713618 AND data_flags >= 16 AND buddy_entry = 26437;
UPDATE dbscripts_on_gossip SET search_radius := @D2GUID + 14103 WHERE search_radius = 5713626 AND data_flags >= 16 AND buddy_entry = 26437;

-- dbscripts_on_quest_start
SET @D3GUID := 500000;
UPDATE dbscripts_on_quest_start SET search_radius := @D3GUID + 10384 WHERE search_radius = 100875 AND data_flags >= 16 AND buddy_entry = 25618;
UPDATE dbscripts_on_quest_start SET search_radius := @D3GUID + 19850 WHERE search_radius = 118574 AND data_flags >= 16 AND buddy_entry = 27888;
UPDATE dbscripts_on_quest_start SET search_radius := @D3GUID + 11262 WHERE search_radius = 107998 AND data_flags >= 16 AND buddy_entry = 25732;
UPDATE dbscripts_on_quest_start SET search_radius := @D3GUID + 11263 WHERE search_radius = 108027 AND data_flags >= 16 AND buddy_entry = 25733;
UPDATE dbscripts_on_quest_start SET search_radius := @D3GUID + 11222 WHERE search_radius = 107602 AND data_flags >= 16 AND buddy_entry = 25727;

-- dbscripts_on_quest_end
SET @D4GUID := 500000;
UPDATE dbscripts_on_quest_end SET search_radius := @D4GUID + 5760 WHERE search_radius = 111855 AND data_flags >= 16 AND buddy_entry = 24233;

-- dbscripts_on_spell
SET @D5GUID := 500000;
UPDATE dbscripts_on_spell SET search_radius := @D5GUID + 10276 WHERE search_radius = 138494 AND data_flags >= 16 AND buddy_entry = 25607;

-- dbscripts_on_go_template_use
SET @D6GUID := 500000;
UPDATE dbscripts_on_go_template_use SET search_radius := @D6GUID + 4762 WHERE search_radius = 117706 AND data_flags >= 16 AND buddy_entry = 24035;
UPDATE dbscripts_on_go_template_use SET search_radius := @D6GUID + 4763 WHERE search_radius = 117707 AND data_flags >= 16 AND buddy_entry = 24035;
UPDATE dbscripts_on_go_template_use SET search_radius := @D6GUID + 4786 WHERE search_radius = 117709 AND data_flags >= 16 AND buddy_entry = 24035;
UPDATE dbscripts_on_go_template_use SET search_radius := @D6GUID + 4784 WHERE search_radius = 117711 AND data_flags >= 16 AND buddy_entry = 24035;
UPDATE dbscripts_on_go_template_use SET search_radius := @D6GUID + 4783 WHERE search_radius = 117712 AND data_flags >= 16 AND buddy_entry = 24035;
UPDATE dbscripts_on_go_template_use SET search_radius := @D6GUID + 4751 WHERE search_radius = 117703 AND data_flags >= 16 AND buddy_entry = 24035;
UPDATE dbscripts_on_go_template_use SET search_radius := @D6GUID + 4753 WHERE search_radius = 117702 AND data_flags >= 16 AND buddy_entry = 24035;
UPDATE dbscripts_on_go_template_use SET search_radius := @D6GUID + 7230 WHERE search_radius = 114368 AND data_flags >= 16 AND buddy_entry = 24771;

-- dbscripts_on_event
SET @D7GUID := 500000;
UPDATE dbscripts_on_event SET search_radius := @D7GUID + 6302 WHERE search_radius = 114713 AND data_flags >= 16 AND buddy_entry = 24518;
UPDATE dbscripts_on_event SET search_radius := @D7GUID + 4499 WHERE search_radius = 115879 AND data_flags >= 16 AND buddy_entry = 24019;
UPDATE dbscripts_on_event SET search_radius := @D7GUID + 7247 WHERE search_radius = 115500 AND data_flags >= 16 AND buddy_entry = 24784;
UPDATE dbscripts_on_event SET search_radius := @D7GUID + 6805 WHERE search_radius = 102072 AND data_flags >= 16 AND buddy_entry = 24642;
UPDATE dbscripts_on_event SET search_radius := @D7GUID + 15010 WHERE search_radius = 5712549 AND data_flags >= 16 AND buddy_entry = 26595;
UPDATE dbscripts_on_event SET search_radius := @D7GUID + 15488 WHERE search_radius = 5714033 AND data_flags >= 16 AND buddy_entry = 26656;
UPDATE dbscripts_on_event SET search_radius := @D7GUID + 15489 WHERE search_radius = 5714034 AND data_flags >= 16 AND buddy_entry = 26656;
UPDATE dbscripts_on_event SET search_radius := @D7GUID + 15492 WHERE search_radius = 5714035 AND data_flags >= 16 AND buddy_entry = 26656;
UPDATE dbscripts_on_event SET search_radius := @D7GUID + 15491 WHERE search_radius = 5714036 AND data_flags >= 16 AND buddy_entry = 26656;
UPDATE dbscripts_on_event SET search_radius := @D7GUID + 15490 WHERE search_radius = 5714037 AND data_flags >= 16 AND buddy_entry = 26656;
UPDATE dbscripts_on_event SET search_radius := @D7GUID + 15493 WHERE search_radius = 5714038 AND data_flags >= 16 AND buddy_entry = 26656;
UPDATE dbscripts_on_event SET search_radius := @D7GUID + 15495 WHERE search_radius = 5714039 AND data_flags >= 16 AND buddy_entry = 26656;
UPDATE dbscripts_on_event SET search_radius := @D7GUID + 15494 WHERE search_radius = 5714040 AND data_flags >= 16 AND buddy_entry = 26656;

-- dbscripts_on_creature_death
SET @D8GUID := 500000;
UPDATE dbscripts_on_creature_death SET search_radius := @D8GUID + 650 WHERE search_radius = 5710519 AND data_flags >= 16 AND buddy_entry = 15214;

-- dbscripts_on_creature_movement
SET @D9GUID := 500000;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 22269 WHERE search_radius = 88676 AND data_flags >= 16 AND buddy_entry = 28332;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 22267 WHERE search_radius = 88674 AND data_flags >= 16 AND buddy_entry = 28332;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 9248 WHERE search_radius = 125421 AND data_flags >= 16 AND buddy_entry = 25426;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 8159 WHERE search_radius = 125447 AND data_flags >= 16 AND buddy_entry = 25237;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 8432 WHERE search_radius = 125578 AND data_flags >= 16 AND buddy_entry = 25286;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 18300 WHERE search_radius = 125387 AND data_flags >= 16 AND buddy_entry = 27432;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 17584 WHERE search_radius = 111307 AND data_flags >= 16 AND buddy_entry = 27300;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 10173 WHERE search_radius = 118575 AND data_flags >= 16 AND buddy_entry = 25584;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 11216 WHERE search_radius = 107382 AND data_flags >= 16 AND buddy_entry = 25724;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 8791 WHERE search_radius = 97508 AND data_flags >= 16 AND buddy_entry = 25356;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 11219 WHERE search_radius = 107383 AND data_flags >= 16 AND buddy_entry = 25724;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 11217 WHERE search_radius = 107385 AND data_flags >= 16 AND buddy_entry = 25724;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 11218 WHERE search_radius = 107384 AND data_flags >= 16 AND buddy_entry = 25724;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 10196 WHERE search_radius = 119582 AND data_flags >= 16 AND buddy_entry = 25594;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 10200 WHERE search_radius = 119579 AND data_flags >= 16 AND buddy_entry = 25594;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 10197 WHERE search_radius = 119580 AND data_flags >= 16 AND buddy_entry = 25594;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 10198 WHERE search_radius = 119581 AND data_flags >= 16 AND buddy_entry = 25594;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 17590 WHERE search_radius = 123744 AND data_flags >= 16 AND buddy_entry = 27306;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 17591 WHERE search_radius = 123745 AND data_flags >= 16 AND buddy_entry = 27306;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 17592 WHERE search_radius = 123746 AND data_flags >= 16 AND buddy_entry = 27306;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 4840 WHERE search_radius = 118035 AND data_flags >= 16 AND buddy_entry = 24042;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 4838 WHERE search_radius = 118033 AND data_flags >= 16 AND buddy_entry = 24042;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 4839 WHERE search_radius = 118034 AND data_flags >= 16 AND buddy_entry = 24042;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 4801 WHERE search_radius = 118000 AND data_flags >= 16 AND buddy_entry = 24042;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 8458 WHERE search_radius = 115989 AND data_flags >= 16 AND buddy_entry = 25301;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 8298 WHERE search_radius = 111232 AND data_flags >= 16 AND buddy_entry = 25250;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 8343 WHERE search_radius = 85222 AND data_flags >= 16 AND buddy_entry = 25259;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 8344 WHERE search_radius = 85226 AND data_flags >= 16 AND buddy_entry = 25261;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 8294 WHERE search_radius = 110613 AND data_flags >= 16 AND buddy_entry = 25245;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 15627 WHERE search_radius = 109214 AND data_flags >= 16 AND buddy_entry = 26768;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 15626 WHERE search_radius = 109017 AND data_flags >= 16 AND buddy_entry = 26767;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 7115 WHERE search_radius = 107569 AND data_flags >= 16 AND buddy_entry = 24703;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 7263 WHERE search_radius = 115895 AND data_flags >= 16 AND buddy_entry = 24788;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 7718 WHERE search_radius = 100070 AND data_flags >= 16 AND buddy_entry = 24876;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 7719 WHERE search_radius = 100104 AND data_flags >= 16 AND buddy_entry = 24877;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 7717 WHERE search_radius = 100024 AND data_flags >= 16 AND buddy_entry = 24875;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 7716 WHERE search_radius = 99811 AND data_flags >= 16 AND buddy_entry = 24874;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 8819 WHERE search_radius = 98796 AND data_flags >= 16 AND buddy_entry = 25374;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 15610 WHERE search_radius = 103484 AND data_flags >= 16 AND buddy_entry = 26709;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 6107 WHERE search_radius = 102808 AND data_flags >= 16 AND buddy_entry = 24398;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 2904 WHERE search_radius = 117743 AND data_flags >= 16 AND buddy_entry = 23780;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 5247 WHERE search_radius = 101906 AND data_flags >= 16 AND buddy_entry = 24126;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 15495 WHERE search_radius = 5714039 AND data_flags >= 16 AND buddy_entry = 26656;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 15489 WHERE search_radius = 5714034 AND data_flags >= 16 AND buddy_entry = 26656;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 15490 WHERE search_radius = 5714037 AND data_flags >= 16 AND buddy_entry = 26656;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 15488 WHERE search_radius = 5714033 AND data_flags >= 16 AND buddy_entry = 26656;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 15645 WHERE search_radius = 5714043 AND data_flags >= 16 AND buddy_entry = 26777;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 15644 WHERE search_radius = 5714042 AND data_flags >= 16 AND buddy_entry = 26777;
UPDATE dbscripts_on_creature_movement SET search_radius := @D9GUID + 24735 WHERE search_radius = 5711114 AND data_flags >= 16 AND buddy_entry = 29393;

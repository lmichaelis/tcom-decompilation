const int SMALLTALKFREQ2 = 7;
func void ZS_SMALLTALKPOTIONSELLER() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_SMALLTALKPOTIONSELLER_LOOP() {
    var int TALKTIME3;
    var int TALKTIME2;
    if (NPC_ISONFP(SELF, "SMALLTALK")) {
        if ((NPC_GETSTATETIME(SELF)) >= ((SMALLTALKFREQ2) * (2))) {
            NPC_PERCEIVEALL(SELF);
            if (WLD_DETECTNPC(SELF, -(1), 46695, -(1))) {
                if ((NPC_GETDISTTONPC(SELF, OTHER)) < (PERC_DIST_DIALOG)) {
                    NPC_SETSTATETIME(OTHER, SMALLTALKFREQ2);
                    AI_TURNTONPC(NONE_13802_TRAVELLER, NONE_13803_POTIONSELLER);
                    AI_TURNTONPC(NONE_13803_POTIONSELLER, NONE_13802_TRAVELLER);
                    TALKTIME2 = HLP_RANDOM(3);
                    TALKTIME3 = HLP_RANDOM(3);
                    if (((TALKTIME2) < (2)) && ((EVENTTALKTIME) == (0))) {
                        AI_OUTPUT(NONE_13802_TRAVELLER, HERO, "DIA_TravellerEvent_Potion_03_01");
                        EVENTTALKTIME = 1;
                        PRINTD("Rozmowa: 1");
                    } else if (((TALKTIME3) < (2)) && ((EVENTTALKTIME) == (1))) {
                        AI_OUTPUT(NONE_13803_POTIONSELLER, HERO, "DIA_AlchemicEvent_Potion_03_02");
                        EVENTTALKTIME = 2;
                        PRINTD("Rozmowa: 2");
                    } else if (((TALKTIME2) < (2)) && ((EVENTTALKTIME) == (2))) {
                        AI_OUTPUT(NONE_13802_TRAVELLER, HERO, "DIA_TravellerEvent_Potion_03_03");
                        EVENTTALKTIME = 3;
                        PRINTD("Rozmowa: 3");
                    } else if (((TALKTIME3) < (2)) && ((EVENTTALKTIME) == (3))) {
                        AI_OUTPUT(NONE_13803_POTIONSELLER, HERO, "DIA_AlchemicEvent_Potion_03_04");
                        EVENTTALKTIME = 4;
                        PRINTD("Rozmowa: 4");
                    } else if (((TALKTIME2) < (2)) && ((EVENTTALKTIME) == (4))) {
                        AI_OUTPUT(NONE_13802_TRAVELLER, HERO, "DIA_TravellerEvent_Potion_03_05");
                        EVENTTALKTIME = 5;
                        PRINTD("Rozmowa: 5");
                    } else if (((TALKTIME3) < (2)) && ((EVENTTALKTIME) == (5))) {
                        AI_OUTPUT(NONE_13803_POTIONSELLER, HERO, "DIA_AlchemicEvent_Potion_03_06");
                        EVENTTALKTIME = 6;
                        PRINTD("Rozmowa: 6");
                    } else if (((TALKTIME2) < (2)) && ((EVENTTALKTIME) == (6))) {
                        AI_OUTPUT(NONE_13802_TRAVELLER, HERO, "DIA_TravellerEvent_Potion_03_07");
                        EVENTTALKTIME = 7;
                        PRINTD("Rozmowa: 7");
                    } else if (((TALKTIME3) < (2)) && ((EVENTTALKTIME) == (7))) {
                        AI_OUTPUT(NONE_13803_POTIONSELLER, HERO, "DIA_AlchemicEvent_Potion_03_08");
                        PRINTD("Rozmowa: 8");
                        EVENTTALKTIME = 8;
                    } else if (((TALKTIME2) < (2)) && ((EVENTTALKTIME) == (8))) {
                        AI_OUTPUT(NONE_13802_TRAVELLER, HERO, "DIA_TravellerEvent_Potion_03_09");
                        PRINTD("Rozmowa: 9");
                        EVENTTALKTIME = 9;
                    } else if (((TALKTIME3) < (2)) && ((EVENTTALKTIME) == (9))) {
                        AI_OUTPUT(NONE_13803_POTIONSELLER, HERO, "DIA_AlchemicEvent_Potion_03_10");
                        PRINTD("Rozmowa: 10");
                        EVENTTALKTIME = 10;
                    } else if (((TALKTIME2) < (2)) && ((EVENTTALKTIME) == (10))) {
                        AI_OUTPUT(NONE_13802_TRAVELLER, HERO, "DIA_TravellerEvent_Potion_03_11");
                        PRINTD("Rozmowa: 11");
                        EVENTTALKTIME = 11;
                    } else if (((TALKTIME3) < (2)) && ((EVENTTALKTIME) == (11))) {
                        AI_OUTPUT(NONE_13803_POTIONSELLER, HERO, "DIA_AlchemicEvent_Potion_03_12");
                        PRINTD("Rozmowa: 12");
                        EVENTTALKTIME = 12;
                    } else if (((TALKTIME2) < (2)) && ((EVENTTALKTIME) == (12))) {
                        PRINTD("Koniec rozmowy: 12");
                        EVENTTALKTIME = 13;
                    };
                };
            };
            NPC_SETSTATETIME(SELF, 0);
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "SMALLTALK")) {
        AI_GOTOFP(SELF, "SMALLTALK");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_SMALLTALKPOTIONSELLER_END() {
}


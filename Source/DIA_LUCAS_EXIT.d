instance DIA_LUCAS_EXIT(C_INFO) {
    NPC = 58247;
    NR = 999;
    CONDITION = DIA_LUCAS_EXIT_CONDITION;
    INFORMATION = DIA_LUCAS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LUCAS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LUCAS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LUCAS_HELLO(C_INFO) {
    NPC = 58247;
    NR = 1;
    CONDITION = DIA_LUCAS_HELLO_CONDITION;
    INFORMATION = DIA_LUCAS_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LUCAS_HELLO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q401)) == (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCAS_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Hello_03_01");
    INFO_CLEARCHOICES(81265);
    INFO_ADDCHOICE(81265, "Compared to the city, it's nothing...", 81269);
    INFO_ADDCHOICE(81265, "The walls look impregnable.", 81270);
}

func void DIA_LUCAS_HELLO_GREAT_NEXT() {
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Hello_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Hello_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Hello_Next_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Hello_Next_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Hello_Next_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Hello_Next_03_06");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Hello_Next_03_07");
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(81265);
}

func void DIA_LUCAS_HELLO_NOTHING() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucas_Hello_Nothing_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Hello_Nothing_03_02");
    DIA_LUCAS_HELLO_GREAT_NEXT();
}

func void DIA_LUCAS_HELLO_GREAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucas_Hello_Great_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Hello_Great_03_02");
    DIA_LUCAS_HELLO_GREAT_NEXT();
}

instance DIA_LUCAS_SQ404_START(C_INFO) {
    NPC = 58247;
    NR = 1;
    CONDITION = DIA_LUCAS_SQ404_START_CONDITION;
    INFORMATION = DIA_LUCAS_SQ404_START_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'll look for the workers and the gearwheel.";
}

func int DIA_LUCAS_SQ404_START_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 81265)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCAS_SQ404_START_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucas_SQ404_Start_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_SQ404_Start_03_02");
    LOG_CREATETOPIC(TOPIC_SQ404, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ404), TOPIC_SQ404, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ404, LOG_SQ404_START);
    AI_FUNCTION(SELF, 63728);
}

instance DIA_LUCAS_ABOUTPLACE(C_INFO) {
    NPC = 58247;
    NR = 2;
    CONDITION = DIA_LUCAS_ABOUTPLACE_CONDITION;
    INFORMATION = DIA_LUCAS_ABOUTPLACE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What can you tell me about this place?";
}

func int DIA_LUCAS_ABOUTPLACE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 81265)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCAS_ABOUTPLACE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucas_AboutPlace_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_AboutPlace_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_AboutPlace_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_AboutPlace_13_03");
}

instance DIA_LUCAS_SQ404_FINISH(C_INFO) {
    NPC = 58247;
    NR = 1;
    CONDITION = DIA_LUCAS_SQ404_FINISH_CONDITION;
    INFORMATION = DIA_LUCAS_SQ404_FINISH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I found the gearwheel and your workers.";
}

func int DIA_LUCAS_SQ404_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ404)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 37306)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCAS_SQ404_FINISH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucas_SQ404_Finish_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_SQ404_Finish_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lucas_SQ404_Finish_15_03");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_SQ404_Finish_03_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_SQ404_Finish_03_05");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_SQ404_Finish_03_06");
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_SQ404, LOG_SQ404_FINISH);
    LOG_SETSTATUS(_@(MIS_SQ404), TOPIC_SQ404, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_SQ404_FINISH);
    CREATEINVITEMS(SELF, 34203, SQ404_REWARD);
    B_GIVEINVITEMS(SELF, OTHER, 34203, SQ404_REWARD);
    CREATEINVITEMS(SELF, 33678, 2);
    NPC_REMOVEINVITEMS(SELF, 37306, 1);
}

instance DIA_LUCAS_SEARCHING(C_INFO) {
    NPC = 58247;
    NR = 1;
    CONDITION = DIA_LUCAS_SEARCHING_CONDITION;
    INFORMATION = DIA_LUCAS_SEARCHING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You know Henk and Legrif?";
}

func int DIA_LUCAS_SEARCHING_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q402)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 81528))) && ((NPC_GETDISTTOWP(SELF, "WOLFSDEN_TAVERN_CHAIR02")) <= (5000))) {
        if ((Q402_FOUNDVARHALANDLEGRIF) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCAS_SEARCHING_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucas_Searching_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Searching_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lucas_Searching_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Searching_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Lucas_Searching_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Searching_03_06");
    AI_LOGENTRY(TOPIC_Q402, LOG_Q402_LUCASVARHALINFO);
    AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Searching_03_07");
    AI_LOGENTRY(TOPIC_Q402, LOG_Q402_LUCASLEGRIFINFO);
    AI_OUTPUT(OTHER, SELF, "DIA_Lucas_Searching_15_08");
}

instance DIA_LUCAS_AMBIENT(C_INFO) {
    NPC = 58247;
    NR = 850;
    CONDITION = DIA_LUCAS_AMBIENT_CONDITION;
    INFORMATION = DIA_LUCAS_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What's up?";
}

func int DIA_LUCAS_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 81265)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCAS_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucas_Ambient_15_01");
    if (((LOG_GETSTATUS(MIS_SQ404)) != (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_SQ404)) != (LOG_RUNNING))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Ambient_03_02");
    };
    if ((LOG_GETSTATUS(MIS_SQ404)) == (LOG_RUNNING)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Ambient_03_03");
    };
    if ((LOG_GETSTATUS(MIS_SQ404)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lucas_Ambient_03_04");
    };
}

instance DIA_LUCAS_PICKPOCKET(C_INFO) {
    NPC = 58247;
    NR = 900;
    CONDITION = DIA_LUCAS_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LUCAS_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_LUCAS_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCAS_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(81286);
    INFO_ADDCHOICE(81286, DIALOG_BACK, 81290);
    INFO_ADDCHOICE(81286, DIALOG_PICKPOCKET, 81289);
}

func void DIA_LUCAS_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(81286);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(81286);
}

func void DIA_LUCAS_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(81286);
}

instance DIA_LUCAS_SELLHORN(C_INFO) {
    NPC = 58247;
    NR = 770;
    CONDITION = DIA_LUCAS_SELLHORN_CONDITION;
    INFORMATION = DIA_LUCAS_SELLHORN_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I have everything you need. (Sell horns)";
}

var int LUCASNEEDHORN_SHADOW_ENOUGH;
var int LUCASNEEDHORN_OLDSHADOW_ENOUGH;
var int LUCASNEEDHORN_DRAGON_ENOUGH;
var int LUCASNEEDHORN_SHADOW_COUNT;
var int LUCASNEEDHORN_OLDSHADOW_COUNT;
var int LUCASNEEDHORN_DRAGON_COUNT;
func int DIA_LUCAS_SELLHORN_CONDITION() {
    if ((LUCASWANTSHORN) == (TRUE)) {
        if ((((LUCASNEEDHORN_SHADOW_ENOUGH) == (FALSE)) || ((LUCASNEEDHORN_OLDSHADOW_ENOUGH) == (FALSE))) || ((LUCASNEEDHORN_DRAGON_ENOUGH) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int LUCAS_HORNINSTANCE;
var int LUCAS_HORNVALUE;
func void DIA_LUCAS_SELLHORN_CHOICES() {
    LUCAS_HORNINSTANCE = -(1);
    LUCAS_HORNVALUE = 0;
    if ((((LUCASNEEDHORN_SHADOW_ENOUGH) == (TRUE)) && ((LUCASNEEDHORN_OLDSHADOW_ENOUGH) == (TRUE))) && ((LUCASNEEDHORN_DRAGON_ENOUGH) == (TRUE))) {
        INFO_CLEARCHOICES(81291);
    };
    INFO_CLEARCHOICES(81291);
    INFO_ADDCHOICE(81291, DIALOG_BACK, 81306);
    if (((NPC_HASITEMS(OTHER, 33868)) >= (1)) && ((LUCASNEEDHORN_SHADOW_ENOUGH) == (FALSE))) {
        INFO_ADDCHOICE(81291, THROPHYNAME_SHADOWHORN, 81307);
    };
    if (((NPC_HASITEMS(OTHER, 35358)) >= (1)) && ((LUCASNEEDHORN_OLDSHADOW_ENOUGH) == (FALSE))) {
        INFO_ADDCHOICE(81291, THROPHYNAME_OLDSHADOWHORN, 81308);
    };
    if (((NPC_HASITEMS(OTHER, 33861)) >= (1)) && ((LUCASNEEDHORN_DRAGON_ENOUGH) == (FALSE))) {
        INFO_ADDCHOICE(81291, THROPHYNAME_DRGSNAPPERHORN, 81309);
    };
}

func void DIA_LUCAS_SELLHORN_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_GiveItem3");
    DIA_LUCAS_SELLHORN_CHOICES();
}

func void DIA_LUCAS_SELLHORN_AMMOUNT() {
    var string ALL_STRING;
    var int MAX;
    INFO_CLEARCHOICES(81291);
    MAX = NPC_HASITEMS(HERO, LUCAS_HORNINSTANCE);
    ALL_STRING = CS4(DIALOG_ALL, " (", I2S(MAX), ")");
    INFO_ADDCHOICE(81291, ALL_STRING, 81310);
    INFO_ADDCHOICE(81291, CHOICE_NUMBER_5, 81312);
    INFO_ADDCHOICE(81291, CHOICE_NUMBER_1, 81314);
    INFO_ADDCHOICE(81291, DIALOG_BACK, 81301);
}

func void DIA_LUCAS_SELLHORN_BACK() {
    INFO_CLEARCHOICES(81291);
}

func void DIA_LUCAS_SELLHORN_SHADOW() {
    LUCAS_HORNINSTANCE = 33868;
    LUCAS_HORNVALUE = VALUE_SHADOWHORN;
    DIA_LUCAS_SELLHORN_AMMOUNT();
}

func void DIA_LUCAS_SELLHORN_OLDSHADOW() {
    LUCAS_HORNINSTANCE = 35358;
    LUCAS_HORNVALUE = VALUE_OLDSHADOWHORN;
    DIA_LUCAS_SELLHORN_AMMOUNT();
}

func void DIA_LUCAS_SELLHORN_DRAGON() {
    LUCAS_HORNINSTANCE = 33861;
    LUCAS_HORNVALUE = VALUE_DRGSNAPPERHORN;
    DIA_LUCAS_SELLHORN_AMMOUNT();
}

func void DIA_LUCAS_SELLHORN_ALL() {
    var int MAX;
    if ((NPC_HASITEMS(OTHER, LUCAS_HORNINSTANCE)) >= (1)) {
        MAX = NPC_HASITEMS(HERO, LUCAS_HORNINSTANCE);
        NPC_REMOVEINVITEMS(SELF, LUCAS_HORNINSTANCE, MAX);
        CREATEINVITEMS(SELF, 34203, (MAX) * (LUCAS_HORNVALUE));
        B_GIVEINVITEMS(SELF, OTHER, 34203, (MAX) * (LUCAS_HORNVALUE));
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, LUCAS_HORNINSTANCE, MAX);
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        if ((LUCAS_HORNINSTANCE) == (33861)) {
            LUCASNEEDHORN_DRAGON_COUNT = (LUCASNEEDHORN_DRAGON_COUNT) + (MAX);
            if ((LUCASNEEDHORN_DRAGON_COUNT) >= (2)) {
                LUCASNEEDHORN_DRAGON_ENOUGH = TRUE;
                if ((LUCASNEEDHORN_DRAGON_COUNT) > (2)) {
                    AI_FUNCTION(SELF, 81315);
                };
            };
        } else if ((LUCAS_HORNINSTANCE) == (35358)) {
            LUCASNEEDHORN_OLDSHADOW_COUNT = (LUCASNEEDHORN_OLDSHADOW_COUNT) + (MAX);
            if ((LUCASNEEDHORN_OLDSHADOW_COUNT) >= (2)) {
                LUCASNEEDHORN_OLDSHADOW_ENOUGH = TRUE;
                if ((LUCASNEEDHORN_OLDSHADOW_COUNT) > (2)) {
                    AI_FUNCTION(SELF, 81316);
                };
            };
        } else if ((LUCAS_HORNINSTANCE) == (33868)) {
            LUCASNEEDHORN_SHADOW_COUNT = (LUCASNEEDHORN_SHADOW_COUNT) + (MAX);
            if ((LUCASNEEDHORN_SHADOW_COUNT) >= (2)) {
                LUCASNEEDHORN_SHADOW_ENOUGH = TRUE;
                if ((LUCASNEEDHORN_SHADOW_COUNT) > (2)) {
                    AI_FUNCTION(SELF, 81317);
                };
            };
        };
        DIA_LUCAS_SELLHORN_CHOICES();
    };
    DIA_LUCAS_SELLHORN_CHOICES();
}

func void DIA_LUCAS_SELLHORN_5() {
    var int MAX;
    if ((NPC_HASITEMS(OTHER, LUCAS_HORNINSTANCE)) >= (5)) {
        NPC_REMOVEINVITEMS(SELF, LUCAS_HORNINSTANCE, 5);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, LUCAS_HORNINSTANCE, 5);
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 34203, (5) * (LUCAS_HORNVALUE));
        if ((LUCAS_HORNINSTANCE) == (33861)) {
            LUCASNEEDHORN_DRAGON_COUNT = (LUCASNEEDHORN_DRAGON_COUNT) + (5);
            if ((LUCASNEEDHORN_DRAGON_COUNT) >= (2)) {
                LUCASNEEDHORN_DRAGON_ENOUGH = TRUE;
                if ((LUCASNEEDHORN_DRAGON_COUNT) > (2)) {
                    AI_FUNCTION(SELF, 81315);
                };
            };
        } else if ((LUCAS_HORNINSTANCE) == (35358)) {
            LUCASNEEDHORN_OLDSHADOW_COUNT = (LUCASNEEDHORN_OLDSHADOW_COUNT) + (5);
            if ((LUCASNEEDHORN_OLDSHADOW_COUNT) >= (2)) {
                LUCASNEEDHORN_OLDSHADOW_ENOUGH = TRUE;
                if ((LUCASNEEDHORN_OLDSHADOW_COUNT) > (2)) {
                    AI_FUNCTION(SELF, 81316);
                };
            };
        } else if ((LUCAS_HORNINSTANCE) == (33868)) {
            LUCASNEEDHORN_SHADOW_COUNT = (LUCASNEEDHORN_SHADOW_COUNT) + (5);
            if ((LUCASNEEDHORN_SHADOW_COUNT) >= (2)) {
                LUCASNEEDHORN_SHADOW_ENOUGH = TRUE;
                if ((LUCASNEEDHORN_SHADOW_COUNT) > (2)) {
                    AI_FUNCTION(SELF, 81317);
                };
            };
        };
        if (((((LUCAS_HORNINSTANCE) == (33868)) && ((LUCASNEEDHORN_SHADOW_ENOUGH) == (FALSE))) || (((LUCAS_HORNINSTANCE) == (35358)) && ((LUCASNEEDHORN_OLDSHADOW_ENOUGH) == (FALSE)))) || (((LUCAS_HORNINSTANCE) == (33861)) && ((LUCASNEEDHORN_DRAGON_ENOUGH) == (FALSE)))) {
            DIA_LUCAS_SELLHORN_AMMOUNT();
        } else {
            DIA_LUCAS_SELLHORN_CHOICES();
        };
    };
    if (((NPC_HASITEMS(OTHER, LUCAS_HORNINSTANCE)) >= (1)) && ((NPC_HASITEMS(OTHER, LUCAS_HORNINSTANCE)) < (5))) {
        MAX = NPC_HASITEMS(HERO, LUCAS_HORNINSTANCE);
        NPC_REMOVEINVITEMS(SELF, LUCAS_HORNINSTANCE, MAX);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, LUCAS_HORNINSTANCE, MAX);
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 34203, (MAX) * (LUCAS_HORNVALUE));
        if ((LUCAS_HORNINSTANCE) == (33861)) {
            LUCASNEEDHORN_DRAGON_COUNT = (LUCASNEEDHORN_DRAGON_COUNT) + (MAX);
            if ((LUCASNEEDHORN_DRAGON_COUNT) >= (2)) {
                LUCASNEEDHORN_DRAGON_ENOUGH = TRUE;
                if ((LUCASNEEDHORN_DRAGON_COUNT) > (2)) {
                    AI_FUNCTION(SELF, 81315);
                };
            };
        } else if ((LUCAS_HORNINSTANCE) == (35358)) {
            LUCASNEEDHORN_OLDSHADOW_COUNT = (LUCASNEEDHORN_OLDSHADOW_COUNT) + (MAX);
            if ((LUCASNEEDHORN_OLDSHADOW_COUNT) >= (2)) {
                LUCASNEEDHORN_OLDSHADOW_ENOUGH = TRUE;
                if ((LUCASNEEDHORN_OLDSHADOW_COUNT) > (2)) {
                    AI_FUNCTION(SELF, 81316);
                };
            };
        } else if ((LUCAS_HORNINSTANCE) == (33868)) {
            LUCASNEEDHORN_SHADOW_COUNT = (LUCASNEEDHORN_SHADOW_COUNT) + (MAX);
            if ((LUCASNEEDHORN_SHADOW_COUNT) >= (2)) {
                LUCASNEEDHORN_SHADOW_ENOUGH = TRUE;
                if ((LUCASNEEDHORN_SHADOW_COUNT) > (2)) {
                    AI_FUNCTION(SELF, 81317);
                };
            };
        };
        if (((((LUCAS_HORNINSTANCE) == (33868)) && ((LUCASNEEDHORN_SHADOW_ENOUGH) == (FALSE))) || (((LUCAS_HORNINSTANCE) == (35358)) && ((LUCASNEEDHORN_OLDSHADOW_ENOUGH) == (FALSE)))) || (((LUCAS_HORNINSTANCE) == (33861)) && ((LUCASNEEDHORN_DRAGON_ENOUGH) == (FALSE)))) {
            DIA_LUCAS_SELLHORN_AMMOUNT();
        } else {
            DIA_LUCAS_SELLHORN_CHOICES();
        };
    };
    if ((NPC_HASITEMS(OTHER, LUCAS_HORNINSTANCE)) == (0)) {
        DIA_LUCAS_SELLHORN_CHOICES();
    };
}

func void DIA_LUCAS_SELLHORN_1() {
    if ((NPC_HASITEMS(OTHER, LUCAS_HORNINSTANCE)) >= (1)) {
        NPC_REMOVEINVITEMS(SELF, LUCAS_HORNINSTANCE, 1);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, LUCAS_HORNINSTANCE, 1);
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 34203, LUCAS_HORNVALUE);
        if ((LUCAS_HORNINSTANCE) == (33861)) {
            LUCASNEEDHORN_DRAGON_COUNT = (LUCASNEEDHORN_DRAGON_COUNT) + (1);
            if ((LUCASNEEDHORN_DRAGON_COUNT) >= (2)) {
                LUCASNEEDHORN_DRAGON_ENOUGH = TRUE;
                if ((LUCASNEEDHORN_DRAGON_COUNT) > (2)) {
                    AI_FUNCTION(SELF, 81315);
                };
            };
        } else if ((LUCAS_HORNINSTANCE) == (35358)) {
            LUCASNEEDHORN_OLDSHADOW_COUNT = (LUCASNEEDHORN_OLDSHADOW_COUNT) + (1);
            if ((LUCASNEEDHORN_OLDSHADOW_COUNT) >= (2)) {
                LUCASNEEDHORN_OLDSHADOW_ENOUGH = TRUE;
                if ((LUCASNEEDHORN_OLDSHADOW_COUNT) > (2)) {
                    AI_FUNCTION(SELF, 81316);
                };
            };
        } else if ((LUCAS_HORNINSTANCE) == (33868)) {
            LUCASNEEDHORN_SHADOW_COUNT = (LUCASNEEDHORN_SHADOW_COUNT) + (1);
            if ((LUCASNEEDHORN_SHADOW_COUNT) >= (2)) {
                LUCASNEEDHORN_SHADOW_ENOUGH = TRUE;
                if ((LUCASNEEDHORN_SHADOW_COUNT) > (2)) {
                    AI_FUNCTION(SELF, 81317);
                };
            };
        };
        if (((((LUCAS_HORNINSTANCE) == (33868)) && ((LUCASNEEDHORN_SHADOW_ENOUGH) == (FALSE))) || (((LUCAS_HORNINSTANCE) == (35358)) && ((LUCASNEEDHORN_OLDSHADOW_ENOUGH) == (FALSE)))) || (((LUCAS_HORNINSTANCE) == (33861)) && ((LUCASNEEDHORN_DRAGON_ENOUGH) == (FALSE)))) {
            DIA_LUCAS_SELLHORN_AMMOUNT();
        } else {
            DIA_LUCAS_SELLHORN_CHOICES();
        };
    };
    if ((NPC_HASITEMS(OTHER, LUCAS_HORNINSTANCE)) == (0)) {
        DIA_LUCAS_SELLHORN_CHOICES();
    };
}

func void LUCAS_GIVEBACKSTUFF_DRAGON() {
    CREATEINVITEMS(DJG_10001_LUCAS, 33861, (LUCASNEEDHORN_DRAGON_COUNT) - (2));
    NPC_REMOVEINVITEMS(DJG_10001_LUCAS, 34203, (VALUE_DRGSNAPPERHORN) * ((LUCASNEEDHORN_DRAGON_COUNT) - (2)));
    PRINTSCREENS(PRINT_LUCASHORN, -(1), -(1), FONT_SCREENSMALL, 4);
    B_GIVEINVITEMS(HERO, DJG_10001_LUCAS, 34203, (VALUE_DRGSNAPPERHORN) * ((LUCASNEEDHORN_DRAGON_COUNT) - (2)));
}

func void LUCAS_GIVEBACKSTUFF_OLDSHADOW() {
    CREATEINVITEMS(DJG_10001_LUCAS, 35358, (LUCASNEEDHORN_OLDSHADOW_COUNT) - (2));
    NPC_REMOVEINVITEMS(DJG_10001_LUCAS, 34203, (VALUE_OLDSHADOWHORN) * ((LUCASNEEDHORN_OLDSHADOW_COUNT) - (2)));
    PRINTSCREENS(PRINT_LUCASHORN, -(1), -(1), FONT_SCREENSMALL, 4);
    B_GIVEINVITEMS(HERO, DJG_10001_LUCAS, 34203, (VALUE_OLDSHADOWHORN) * ((LUCASNEEDHORN_OLDSHADOW_COUNT) - (2)));
}

func void LUCAS_GIVEBACKSTUFF_SHADOW() {
    CREATEINVITEMS(DJG_10001_LUCAS, 33868, (LUCASNEEDHORN_SHADOW_COUNT) - (2));
    NPC_REMOVEINVITEMS(DJG_10001_LUCAS, 34203, (VALUE_SHADOWHORN) * ((LUCASNEEDHORN_SHADOW_COUNT) - (2)));
    PRINTSCREENS(PRINT_LUCASHORN, -(1), -(1), FONT_SCREENSMALL, 4);
    B_GIVEINVITEMS(HERO, DJG_10001_LUCAS, 34203, (VALUE_SHADOWHORN) * ((LUCASNEEDHORN_SHADOW_COUNT) - (2)));
}

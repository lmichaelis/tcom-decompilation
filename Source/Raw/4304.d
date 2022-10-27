instance DIA_BUTCHER_EXIT(C_INFO) {
    NPC = 0xe0f2;
    NR = 999;
    CONDITION = DIA_BUTCHER_EXIT_CONDITION;
    INFORMATION = DIA_BUTCHER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BUTCHER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BUTCHER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_REMY_HELLO(C_INFO) {
    NPC = 0xe0f2;
    NR = 1;
    CONDITION = DIA_REMY_HELLO_CONDITION;
    INFORMATION = DIA_REMY_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_REMY_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_REMY_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_HELLO_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_HELLO_714_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_HELLO_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_HELLO_714_04");
}

instance DIA_REMY_MOOD(C_INFO) {
    NPC = 0xe0f2;
    NR = 10;
    CONDITION = DIA_REMY_MOOD_CONDITION;
    INFORMATION = DIA_REMY_MOOD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I see you're not in a good mood.";
}

func int DIA_REMY_MOOD_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x15a4f)) && ((KAPITEL) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REMY_MOOD_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Mood_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_714_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_714_03");
    INFO_CLEARCHOICES(0x15a52);
    INFO_ADDCHOICE(0x15a52, "What's your problem with us?", 0x15a56);
    INFO_ADDCHOICE(0x15a52, "Nobody's making you work for us.", 0x15a57);
}

func void DIA_REMY_MOOD_CHOICE() {
    INFO_CLEARCHOICES(0x15a52);
    INFO_ADDCHOICE(0x15a52, "Say again, because I don't think I heard you.", 0x15a5a);
    INFO_ADDCHOICE(0x15a52, "I have to go now.", 0x15a5c);
}

func void DIA_REMY_MOOD_PROBLEM() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Mood_Problem_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_Problem_714_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_Problem_714_03");
    INFO_CLEARCHOICES(0x15a52);
    INFO_ADDCHOICE(0x15a52, "You would have done the same in our place.", 0x15a58);
    INFO_ADDCHOICE(0x15a52, "We did not choose our fate.", 0x15a59);
}

func void DIA_REMY_MOOD_NOONE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Mood_NoOne_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_NoOne_714_02");
    DIA_REMY_MOOD_CHOICE();
}

func void DIA_REMY_MOOD_PROBLEM_SAME() {
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Mood_Same_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_Same_714_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_Same_714_03");
    DIA_REMY_MOOD_CHOICE();
}

func void DIA_REMY_MOOD_PROBLEM_NOCHOICE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Mood_NoChoice_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_NoChoice_714_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_NoChoice_714_03");
    DIA_REMY_MOOD_CHOICE();
}

func void DIA_REMY_MOOD_NOONE_REPEAT() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Mood_Repeat_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_Repeat_714_02");
    INFO_ADDCHOICE(0x15a52, "Looks like I'll have to teach you some manners.", 0x15a5d);
}

func void DIA_REMY_MOOD_END() {
    INFO_CLEARCHOICES(0x15a52);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_REMY_MOOD_NOONE_LEAVE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Mood_Leave_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_Leave_714_02");
    DIA_REMY_MOOD_END();
}

func void DIA_REMY_MOOD_NOONE_REPEAT_FIGHT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Mood_Fight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_Fight_714_02");
    DIA_REMY_MOOD_END();
}

instance DIA_REMY_WORK(C_INFO) {
    NPC = 0xe0f2;
    NR = 5;
    CONDITION = DIA_REMY_WORK_CONDITION;
    INFORMATION = DIA_REMY_WORK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What is the butcher's job like?";
}

func int DIA_REMY_WORK_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15a4f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REMY_WORK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Work_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Work_714_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Work_714_03");
}

instance DIA_REMY_SQ115_SIRLOIN(C_INFO) {
    NPC = 0xe0f2;
    NR = 1;
    CONDITION = DIA_REMY_SQ115_SIRLOIN_CONDITION;
    INFORMATION = DIA_REMY_SQ115_SIRLOIN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could I buy some meat from you?";
}

func int DIA_REMY_SQ115_SIRLOIN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ115)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x15a4f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REMY_SQ115_SIRLOIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_SQ115_Sirloin_15_01");
    B_SAY(SELF, OTHER, "$NO");
    AI_LOGENTRY(TOPIC_SQ115, LOG_SQ115_REMY_MEAT);
}

instance DIA_REMY_BEEF(C_INFO) {
    NPC = 0xe0f2;
    NR = 1;
    CONDITION = DIA_REMY_BEEF_CONDITION;
    INFORMATION = DIA_REMY_BEEF_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you have a piece of mutton to spare?";
}

func int DIA_REMY_BEEF_CONDITION() {
    if ((((Q104_FABIODEAL) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 0x16466))) && ((LOG_GETSTATUS(MIS_Q104)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REMY_BEEF_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Beef_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Beef_714_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Beef_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Beef_714_04");
    AI_LOGENTRY(TOPIC_Q104, LOG_Q104_BUTCHERBEEFFORFABIO);
    INFO_CLEARCHOICES(0x15a64);
    INFO_ADDCHOICE(0x15a64, "What if I paid you?", 0x15a67);
    INFO_ADDCHOICE(0x15a64, "Why is the herd so small?", 0x15a68);
    INFO_ADDCHOICE(0x15a64, "All right, I won't push it.", 0x15a69);
}

func void DIA_REMY_BEEF_GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Beef_Gold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Beef_Gold_714_02");
}

func void DIA_REMY_BEEF_SMALL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Beef_Small_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Beef_Small_714_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Beef_Small_714_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Beef_Small_714_04");
}

func void DIA_REMY_BEEF_GOODBYE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Beef_Goodbye_15_01");
    INFO_CLEARCHOICES(0x15a64);
}

instance DIA_REMY_AMBIENT(C_INFO) {
    NPC = 0xe0f2;
    NR = 950;
    CONDITION = DIA_REMY_AMBIENT_CONDITION;
    INFORMATION = DIA_REMY_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_REMY_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15a5e)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REMY_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Ambient_15_01");
    if ((SELF.AIVAR[0]) == (FIGHT_LOST)) {
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Remy_Ambient_714_06");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Remy_Ambient_714_07");
        };
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Remy_Ambient_714_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Remy_Ambient_714_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Remy_Ambient_714_04");
        if (NPC_KNOWSINFO(OTHER, 0x1568f)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Remy_Ambient_714_05");
        };
    };
    AI_RESETFACEANI(SELF);
}

instance DIA_REMY_TRADE(C_INFO) {
    NPC = 0xe0f2;
    NR = 800;
    CONDITION = DIA_REMY_TRADE_CONDITION;
    INFORMATION = DIA_REMY_TRADE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Show me your wares.";
    TRADE = TRUE;
}

func int DIA_REMY_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15a4f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REMY_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade2");
    TRADER_LOGENTRY_REMY();
    B_GIVETRADEINV(SELF);
}

instance DIA_REMY_PICKPOCKET(C_INFO) {
    NPC = 0xe0f2;
    NR = 900;
    CONDITION = DIA_REMY_PICKPOCKET_CONDITION;
    INFORMATION = DIA_REMY_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_REMY_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REMY_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x15a70);
    INFO_ADDCHOICE(0x15a70, DIALOG_BACK, 0x15a74);
    INFO_ADDCHOICE(0x15a70, DIALOG_PICKPOCKET, 0x15a73);
}

func void DIA_REMY_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        CREATEINVITEMS(SELF, 0x8e3b, 2);
        B_GIVEINVITEMS(SELF, OTHER, 0x8e3b, 2);
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x15a70);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x15a70);
}

func void DIA_REMY_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x15a70);
}

instance DIA_REMY_SELLMEAT(C_INFO) {
    NPC = 0xe0f2;
    NR = 770;
    CONDITION = DIA_REMY_SELLMEAT_CONDITION;
    INFORMATION = DIA_REMY_SELLMEAT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I have everything you need. (Sell meat)";
}

var int REMYNEEDMEAT_MOLERAT_ENOUGH = 0;
var int REMYNEEDMEAT_WOLF_ENOUGH = 0;
var int REMYNEEDMEAT_SCAVENGER_ENOUGH = 0;
var int REMYNEEDMEAT_MOLERAT_COUNT = 0;
var int REMYNEEDMEAT_WOLF_COUNT = 0;
var int REMYNEEDMEAT_SCAVENGER_COUNT = 0;
func int DIA_REMY_SELLMEAT_CONDITION() {
    if ((SILBACH_NEWS_REMY) == (TRUE)) {
        if ((((REMYNEEDMEAT_MOLERAT_ENOUGH) == (FALSE)) || ((REMYNEEDMEAT_WOLF_ENOUGH) == (FALSE))) || ((REMYNEEDMEAT_SCAVENGER_ENOUGH) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int REMY_MEATINSTANCE = 0;
var int REMY_MEATVALUE = 0;
func void DIA_REMY_SELLMEAT_CHOICES() {
    REMY_MEATINSTANCE = -(1);
    REMY_MEATVALUE = 0;
    if ((((REMYNEEDMEAT_MOLERAT_ENOUGH) == (TRUE)) && ((REMYNEEDMEAT_WOLF_ENOUGH) == (TRUE))) && ((REMYNEEDMEAT_SCAVENGER_ENOUGH) == (TRUE))) {
        INFO_CLEARCHOICES(0x15a75);
    };
    INFO_CLEARCHOICES(0x15a75);
    INFO_ADDCHOICE(0x15a75, DIALOG_BACK, 0x15a84);
    if (((NPC_HASITEMS(OTHER, 0x8e3f)) >= (1)) && ((REMYNEEDMEAT_MOLERAT_ENOUGH) == (FALSE))) {
        INFO_ADDCHOICE(0x15a75, FOODNAME_MOLERATRAW, 0x15a85);
    };
    if (((NPC_HASITEMS(OTHER, 0x8e43)) >= (1)) && ((REMYNEEDMEAT_WOLF_ENOUGH) == (FALSE))) {
        INFO_ADDCHOICE(0x15a75, FOODNAME_WOLFRAW, 0x15a86);
    };
    if (((NPC_HASITEMS(OTHER, 0x8e4b)) >= (1)) && ((REMYNEEDMEAT_SCAVENGER_ENOUGH) == (FALSE))) {
        INFO_ADDCHOICE(0x15a75, FOODNAME_SCAVENGERRAW, 0x15a87);
    };
}

func void DIA_REMY_SELLMEAT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_GiveItem3");
    DIA_REMY_SELLMEAT_CHOICES();
}

func void DIA_REMY_SELLMEAT_AMMOUNT() {
    INFO_CLEARCHOICES(0x15a75);
    MAX = NPC_HASITEMS(HERO, REMY_MEATINSTANCE);
    ALL_STRING = CS4(DIALOG_ALL, " (", I2S(MAX), ")");
    INFO_ADDCHOICE(0x15a75, ALL_STRING, 0x15a88);
    INFO_ADDCHOICE(0x15a75, CHOICE_NUMBER_5, 0x15a8a);
    INFO_ADDCHOICE(0x15a75, CHOICE_NUMBER_1, 0x15a8c);
    INFO_ADDCHOICE(0x15a75, DIALOG_BACK, 0x15a7f);
}

var int DIA_REMY_SELLMEAT_AMMOUNT.MAX = 0;
var string DIA_REMY_SELLMEAT_AMMOUNT.ALL_STRING = "";
func void DIA_REMY_SELLMEAT_BACK() {
    INFO_CLEARCHOICES(0x15a75);
}

func void DIA_REMY_SELLMEAT_MOLERAT() {
    REMY_MEATINSTANCE = 0x8e3f;
    REMY_MEATVALUE = VALUE_MOLERATMEAT_RAW;
    DIA_REMY_SELLMEAT_AMMOUNT();
}

func void DIA_REMY_SELLMEAT_WOLF() {
    REMY_MEATINSTANCE = 0x8e43;
    REMY_MEATVALUE = VALUE_WOLFMEAT_RAW;
    DIA_REMY_SELLMEAT_AMMOUNT();
}

func void DIA_REMY_SELLMEAT_SCAVENGER() {
    REMY_MEATINSTANCE = 0x8e4b;
    REMY_MEATVALUE = VALUE_SCAVENGERMEAT_RAW;
    DIA_REMY_SELLMEAT_AMMOUNT();
}

func void DIA_REMY_SELLMEAT_ALL() {
    if ((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) >= (1)) {
        MAX = NPC_HASITEMS(HERO, REMY_MEATINSTANCE);
        B_GIVEINVITEMS(OTHER, SELF, REMY_MEATINSTANCE, MAX);
        CREATEINVITEMS(SELF, 0x859b, (MAX) * (REMY_MEATVALUE));
        B_GIVEINVITEMS(SELF, OTHER, 0x859b, (MAX) * (REMY_MEATVALUE));
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        if ((REMY_MEATINSTANCE) == (0x8e4b)) {
            REMYNEEDMEAT_SCAVENGER_COUNT = (REMYNEEDMEAT_SCAVENGER_COUNT) + (MAX);
            if ((REMYNEEDMEAT_SCAVENGER_COUNT) >= (12)) {
                REMYNEEDMEAT_SCAVENGER_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_SCAVENGER_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x15a8d);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (0x8e43)) {
            REMYNEEDMEAT_WOLF_COUNT = (REMYNEEDMEAT_WOLF_COUNT) + (MAX);
            if ((REMYNEEDMEAT_WOLF_COUNT) >= (12)) {
                REMYNEEDMEAT_WOLF_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_WOLF_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x15a8e);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (0x8e3f)) {
            REMYNEEDMEAT_MOLERAT_COUNT = (REMYNEEDMEAT_MOLERAT_COUNT) + (MAX);
            if ((REMYNEEDMEAT_MOLERAT_COUNT) >= (12)) {
                REMYNEEDMEAT_MOLERAT_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_MOLERAT_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x15a8f);
                };
            };
        };
        DIA_REMY_SELLMEAT_CHOICES();
    };
    DIA_REMY_SELLMEAT_CHOICES();
}

var int DIA_REMY_SELLMEAT_ALL.MAX = 0;
func void DIA_REMY_SELLMEAT_5() {
    if ((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) >= (5)) {
        B_GIVEINVITEMS(OTHER, SELF, REMY_MEATINSTANCE, 5);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 0x859b, (5) * (REMY_MEATVALUE));
        if ((REMY_MEATINSTANCE) == (0x8e4b)) {
            REMYNEEDMEAT_SCAVENGER_COUNT = (REMYNEEDMEAT_SCAVENGER_COUNT) + (5);
            if ((REMYNEEDMEAT_SCAVENGER_COUNT) >= (12)) {
                REMYNEEDMEAT_SCAVENGER_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_SCAVENGER_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x15a8d);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (0x8e43)) {
            REMYNEEDMEAT_WOLF_COUNT = (REMYNEEDMEAT_WOLF_COUNT) + (5);
            if ((REMYNEEDMEAT_WOLF_COUNT) >= (12)) {
                REMYNEEDMEAT_WOLF_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_WOLF_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x15a8e);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (0x8e3f)) {
            REMYNEEDMEAT_MOLERAT_COUNT = (REMYNEEDMEAT_MOLERAT_COUNT) + (5);
            if ((REMYNEEDMEAT_MOLERAT_COUNT) >= (12)) {
                REMYNEEDMEAT_MOLERAT_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_MOLERAT_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x15a8f);
                };
            };
        };
        if (((((REMY_MEATINSTANCE) == (0x8e3f)) && ((REMYNEEDMEAT_MOLERAT_ENOUGH) == (FALSE))) || (((REMY_MEATINSTANCE) == (0x8e43)) && ((REMYNEEDMEAT_WOLF_ENOUGH) == (FALSE)))) || (((REMY_MEATINSTANCE) == (0x8e4b)) && ((REMYNEEDMEAT_SCAVENGER_ENOUGH) == (FALSE)))) {
            DIA_REMY_SELLMEAT_AMMOUNT();
        } else {
            DIA_REMY_SELLMEAT_CHOICES();
        } else {
            /* set_instance(0) */;
        };
    };
    if (((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) >= (1)) && ((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) < (5))) {
        MAX = NPC_HASITEMS(HERO, REMY_MEATINSTANCE);
        B_GIVEINVITEMS(OTHER, SELF, REMY_MEATINSTANCE, MAX);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 0x859b, (MAX) * (REMY_MEATVALUE));
        if ((REMY_MEATINSTANCE) == (0x8e4b)) {
            REMYNEEDMEAT_SCAVENGER_COUNT = (REMYNEEDMEAT_SCAVENGER_COUNT) + (MAX);
            if ((REMYNEEDMEAT_SCAVENGER_COUNT) >= (12)) {
                REMYNEEDMEAT_SCAVENGER_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_SCAVENGER_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x15a8d);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (0x8e43)) {
            REMYNEEDMEAT_WOLF_COUNT = (REMYNEEDMEAT_WOLF_COUNT) + (MAX);
            if ((REMYNEEDMEAT_WOLF_COUNT) >= (12)) {
                REMYNEEDMEAT_WOLF_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_WOLF_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x15a8e);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (0x8e3f)) {
            REMYNEEDMEAT_MOLERAT_COUNT = (REMYNEEDMEAT_MOLERAT_COUNT) + (MAX);
            if ((REMYNEEDMEAT_MOLERAT_COUNT) >= (12)) {
                REMYNEEDMEAT_MOLERAT_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_MOLERAT_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x15a8f);
                };
            };
        };
        if (((((REMY_MEATINSTANCE) == (0x8e3f)) && ((REMYNEEDMEAT_MOLERAT_ENOUGH) == (FALSE))) || (((REMY_MEATINSTANCE) == (0x8e43)) && ((REMYNEEDMEAT_WOLF_ENOUGH) == (FALSE)))) || (((REMY_MEATINSTANCE) == (0x8e4b)) && ((REMYNEEDMEAT_SCAVENGER_ENOUGH) == (FALSE)))) {
            DIA_REMY_SELLMEAT_AMMOUNT();
        } else {
            DIA_REMY_SELLMEAT_CHOICES();
        } else {
            /* set_instance(0) */;
        };
    };
    if ((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) == (0)) {
        DIA_REMY_SELLMEAT_CHOICES();
    };
}

var int DIA_REMY_SELLMEAT_5.MAX = 0;
func void DIA_REMY_SELLMEAT_1() {
    if ((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, REMY_MEATINSTANCE, 1);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 0x859b, REMY_MEATVALUE);
        if ((REMY_MEATINSTANCE) == (0x8e4b)) {
            REMYNEEDMEAT_SCAVENGER_COUNT = (REMYNEEDMEAT_SCAVENGER_COUNT) + (1);
            if ((REMYNEEDMEAT_SCAVENGER_COUNT) >= (12)) {
                REMYNEEDMEAT_SCAVENGER_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_SCAVENGER_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x15a8d);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (0x8e43)) {
            REMYNEEDMEAT_WOLF_COUNT = (REMYNEEDMEAT_WOLF_COUNT) + (1);
            if ((REMYNEEDMEAT_WOLF_COUNT) >= (12)) {
                REMYNEEDMEAT_WOLF_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_WOLF_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x15a8e);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (0x8e3f)) {
            REMYNEEDMEAT_MOLERAT_COUNT = (REMYNEEDMEAT_MOLERAT_COUNT) + (1);
            if ((REMYNEEDMEAT_MOLERAT_COUNT) >= (12)) {
                REMYNEEDMEAT_MOLERAT_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_MOLERAT_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x15a8f);
                };
            };
        };
        if (((((REMY_MEATINSTANCE) == (0x8e3f)) && ((REMYNEEDMEAT_MOLERAT_ENOUGH) == (FALSE))) || (((REMY_MEATINSTANCE) == (0x8e43)) && ((REMYNEEDMEAT_WOLF_ENOUGH) == (FALSE)))) || (((REMY_MEATINSTANCE) == (0x8e4b)) && ((REMYNEEDMEAT_SCAVENGER_ENOUGH) == (FALSE)))) {
            DIA_REMY_SELLMEAT_AMMOUNT();
        } else {
            DIA_REMY_SELLMEAT_CHOICES();
        } else {
            /* set_instance(0) */;
        };
    };
    if ((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) == (0)) {
        DIA_REMY_SELLMEAT_CHOICES();
    };
}

func void REMY_GIVEBACKSTUFF_SCAVENGER() {
    NPC_REMOVEINVITEMS(BAU_714_REMY, 0x859b, (VALUE_SCAVENGERMEAT_RAW) * ((REMYNEEDMEAT_SCAVENGER_COUNT) - (12)));
    PRINTSCREENS(PRINT_REMYMEAT, -(1), -(1), FONT_SCREENSMALL, 4);
    B_GIVEINVITEMS(HERO, BAU_714_REMY, 0x859b, (VALUE_SCAVENGERMEAT_RAW) * ((REMYNEEDMEAT_SCAVENGER_COUNT) - (12)));
}

func void REMY_GIVEBACKSTUFF_WOLF() {
    NPC_REMOVEINVITEMS(BAU_714_REMY, 0x859b, (VALUE_WOLFMEAT_RAW) * ((REMYNEEDMEAT_WOLF_COUNT) - (12)));
    PRINTSCREENS(PRINT_REMYMEAT, -(1), -(1), FONT_SCREENSMALL, 4);
    B_GIVEINVITEMS(HERO, BAU_714_REMY, 0x859b, (VALUE_WOLFMEAT_RAW) * ((REMYNEEDMEAT_WOLF_COUNT) - (12)));
}

func void REMY_GIVEBACKSTUFF_MOLERAT() {
    NPC_REMOVEINVITEMS(BAU_714_REMY, 0x859b, (VALUE_MOLERATMEAT_RAW) * ((REMYNEEDMEAT_MOLERAT_COUNT) - (12)));
    PRINTSCREENS(PRINT_REMYMEAT, -(1), -(1), FONT_SCREENSMALL, 4);
    B_GIVEINVITEMS(HERO, BAU_714_REMY, 0x859b, (VALUE_MOLERATMEAT_RAW) * ((REMYNEEDMEAT_MOLERAT_COUNT) - (12)));
}


instance DIA_BUTCHER_EXIT(C_INFO) {
    NPC = 57586;
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
    NPC = 57586;
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
    NPC = 57586;
    NR = 10;
    CONDITION = DIA_REMY_MOOD_CONDITION;
    INFORMATION = DIA_REMY_MOOD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I see you're not in a good mood.";
}

func int DIA_REMY_MOOD_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 88655)) && ((KAPITEL) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REMY_MOOD_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Mood_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_714_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_714_03");
    INFO_CLEARCHOICES(88658);
    INFO_ADDCHOICE(88658, "What's your problem with us?", 88662);
    INFO_ADDCHOICE(88658, "Nobody's making you work for us.", 88663);
}

func void DIA_REMY_MOOD_CHOICE() {
    INFO_CLEARCHOICES(88658);
    INFO_ADDCHOICE(88658, "Say again, because I don't think I heard you.", 88666);
    INFO_ADDCHOICE(88658, "I have to go now.", 88668);
}

func void DIA_REMY_MOOD_PROBLEM() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Remy_Mood_Problem_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_Problem_714_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Remy_Mood_Problem_714_03");
    INFO_CLEARCHOICES(88658);
    INFO_ADDCHOICE(88658, "You would have done the same in our place.", 88664);
    INFO_ADDCHOICE(88658, "We did not choose our fate.", 88665);
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
    INFO_ADDCHOICE(88658, "Looks like I'll have to teach you some manners.", 88669);
}

func void DIA_REMY_MOOD_END() {
    INFO_CLEARCHOICES(88658);
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
    NPC = 57586;
    NR = 5;
    CONDITION = DIA_REMY_WORK_CONDITION;
    INFORMATION = DIA_REMY_WORK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What is the butcher's job like?";
}

func int DIA_REMY_WORK_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 88655)) {
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
    NPC = 57586;
    NR = 1;
    CONDITION = DIA_REMY_SQ115_SIRLOIN_CONDITION;
    INFORMATION = DIA_REMY_SQ115_SIRLOIN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could I buy some meat from you?";
}

func int DIA_REMY_SQ115_SIRLOIN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ115)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 88655))) {
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
    NPC = 57586;
    NR = 1;
    CONDITION = DIA_REMY_BEEF_CONDITION;
    INFORMATION = DIA_REMY_BEEF_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you have a piece of mutton to spare?";
}

func int DIA_REMY_BEEF_CONDITION() {
    if ((((Q104_FABIODEAL) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 91238))) && ((LOG_GETSTATUS(MIS_Q104)) == (LOG_RUNNING))) {
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
    INFO_CLEARCHOICES(88676);
    INFO_ADDCHOICE(88676, "What if I paid you?", 88679);
    INFO_ADDCHOICE(88676, "Why is the herd so small?", 88680);
    INFO_ADDCHOICE(88676, "All right, I won't push it.", 88681);
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
    INFO_CLEARCHOICES(88676);
}

instance DIA_REMY_AMBIENT(C_INFO) {
    NPC = 57586;
    NR = 950;
    CONDITION = DIA_REMY_AMBIENT_CONDITION;
    INFORMATION = DIA_REMY_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_REMY_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 88670)) {
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
        if (NPC_KNOWSINFO(OTHER, 87695)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Remy_Ambient_714_05");
        };
    };
    AI_RESETFACEANI(SELF);
}

instance DIA_REMY_TRADE(C_INFO) {
    NPC = 57586;
    NR = 800;
    CONDITION = DIA_REMY_TRADE_CONDITION;
    INFORMATION = DIA_REMY_TRADE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Show me your wares.";
    TRADE = TRUE;
}

func int DIA_REMY_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 88655)) {
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
    NPC = 57586;
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
    INFO_CLEARCHOICES(88688);
    INFO_ADDCHOICE(88688, DIALOG_BACK, 88692);
    INFO_ADDCHOICE(88688, DIALOG_PICKPOCKET, 88691);
}

func void DIA_REMY_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        CREATEINVITEMS(SELF, 36411, 2);
        B_GIVEINVITEMS(SELF, OTHER, 36411, 2);
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(88688);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(88688);
}

func void DIA_REMY_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(88688);
}

instance DIA_REMY_SELLMEAT(C_INFO) {
    NPC = 57586;
    NR = 770;
    CONDITION = DIA_REMY_SELLMEAT_CONDITION;
    INFORMATION = DIA_REMY_SELLMEAT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I have everything you need. (Sell meat)";
}

var int REMYNEEDMEAT_MOLERAT_ENOUGH;
var int REMYNEEDMEAT_WOLF_ENOUGH;
var int REMYNEEDMEAT_SCAVENGER_ENOUGH;
var int REMYNEEDMEAT_MOLERAT_COUNT;
var int REMYNEEDMEAT_WOLF_COUNT;
var int REMYNEEDMEAT_SCAVENGER_COUNT;
func int DIA_REMY_SELLMEAT_CONDITION() {
    if ((SILBACH_NEWS_REMY) == (TRUE)) {
        if ((((REMYNEEDMEAT_MOLERAT_ENOUGH) == (FALSE)) || ((REMYNEEDMEAT_WOLF_ENOUGH) == (FALSE))) || ((REMYNEEDMEAT_SCAVENGER_ENOUGH) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int REMY_MEATINSTANCE;
var int REMY_MEATVALUE;
func void DIA_REMY_SELLMEAT_CHOICES() {
    REMY_MEATINSTANCE = -(1);
    REMY_MEATVALUE = 0;
    if ((((REMYNEEDMEAT_MOLERAT_ENOUGH) == (TRUE)) && ((REMYNEEDMEAT_WOLF_ENOUGH) == (TRUE))) && ((REMYNEEDMEAT_SCAVENGER_ENOUGH) == (TRUE))) {
        INFO_CLEARCHOICES(88693);
    };
    INFO_CLEARCHOICES(88693);
    INFO_ADDCHOICE(88693, DIALOG_BACK, 88708);
    if (((NPC_HASITEMS(OTHER, 36415)) >= (1)) && ((REMYNEEDMEAT_MOLERAT_ENOUGH) == (FALSE))) {
        INFO_ADDCHOICE(88693, FOODNAME_MOLERATRAW, 88709);
    };
    if (((NPC_HASITEMS(OTHER, 36419)) >= (1)) && ((REMYNEEDMEAT_WOLF_ENOUGH) == (FALSE))) {
        INFO_ADDCHOICE(88693, FOODNAME_WOLFRAW, 88710);
    };
    if (((NPC_HASITEMS(OTHER, 36427)) >= (1)) && ((REMYNEEDMEAT_SCAVENGER_ENOUGH) == (FALSE))) {
        INFO_ADDCHOICE(88693, FOODNAME_SCAVENGERRAW, 88711);
    };
}

func void DIA_REMY_SELLMEAT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_GiveItem3");
    DIA_REMY_SELLMEAT_CHOICES();
}

func void DIA_REMY_SELLMEAT_AMMOUNT() {
    var string ALL_STRING;
    var int MAX;
    INFO_CLEARCHOICES(88693);
    MAX = NPC_HASITEMS(HERO, REMY_MEATINSTANCE);
    ALL_STRING = CS4(DIALOG_ALL, " (", I2S(MAX), ")");
    INFO_ADDCHOICE(88693, ALL_STRING, 88712);
    INFO_ADDCHOICE(88693, CHOICE_NUMBER_5, 88714);
    INFO_ADDCHOICE(88693, CHOICE_NUMBER_1, 88716);
    INFO_ADDCHOICE(88693, DIALOG_BACK, 88703);
}

func void DIA_REMY_SELLMEAT_BACK() {
    INFO_CLEARCHOICES(88693);
}

func void DIA_REMY_SELLMEAT_MOLERAT() {
    REMY_MEATINSTANCE = 36415;
    REMY_MEATVALUE = VALUE_MOLERATMEAT_RAW;
    DIA_REMY_SELLMEAT_AMMOUNT();
}

func void DIA_REMY_SELLMEAT_WOLF() {
    REMY_MEATINSTANCE = 36419;
    REMY_MEATVALUE = VALUE_WOLFMEAT_RAW;
    DIA_REMY_SELLMEAT_AMMOUNT();
}

func void DIA_REMY_SELLMEAT_SCAVENGER() {
    REMY_MEATINSTANCE = 36427;
    REMY_MEATVALUE = VALUE_SCAVENGERMEAT_RAW;
    DIA_REMY_SELLMEAT_AMMOUNT();
}

func void DIA_REMY_SELLMEAT_ALL() {
    var int MAX;
    if ((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) >= (1)) {
        MAX = NPC_HASITEMS(HERO, REMY_MEATINSTANCE);
        B_GIVEINVITEMS(OTHER, SELF, REMY_MEATINSTANCE, MAX);
        CREATEINVITEMS(SELF, 34203, (MAX) * (REMY_MEATVALUE));
        B_GIVEINVITEMS(SELF, OTHER, 34203, (MAX) * (REMY_MEATVALUE));
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        if ((REMY_MEATINSTANCE) == (36427)) {
            REMYNEEDMEAT_SCAVENGER_COUNT = (REMYNEEDMEAT_SCAVENGER_COUNT) + (MAX);
            if ((REMYNEEDMEAT_SCAVENGER_COUNT) >= (12)) {
                REMYNEEDMEAT_SCAVENGER_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_SCAVENGER_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 88717);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (36419)) {
            REMYNEEDMEAT_WOLF_COUNT = (REMYNEEDMEAT_WOLF_COUNT) + (MAX);
            if ((REMYNEEDMEAT_WOLF_COUNT) >= (12)) {
                REMYNEEDMEAT_WOLF_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_WOLF_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 88718);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (36415)) {
            REMYNEEDMEAT_MOLERAT_COUNT = (REMYNEEDMEAT_MOLERAT_COUNT) + (MAX);
            if ((REMYNEEDMEAT_MOLERAT_COUNT) >= (12)) {
                REMYNEEDMEAT_MOLERAT_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_MOLERAT_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 88719);
                };
            };
        };
        DIA_REMY_SELLMEAT_CHOICES();
    };
    DIA_REMY_SELLMEAT_CHOICES();
}

func void DIA_REMY_SELLMEAT_5() {
    var int MAX;
    if ((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) >= (5)) {
        B_GIVEINVITEMS(OTHER, SELF, REMY_MEATINSTANCE, 5);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 34203, (5) * (REMY_MEATVALUE));
        if ((REMY_MEATINSTANCE) == (36427)) {
            REMYNEEDMEAT_SCAVENGER_COUNT = (REMYNEEDMEAT_SCAVENGER_COUNT) + (5);
            if ((REMYNEEDMEAT_SCAVENGER_COUNT) >= (12)) {
                REMYNEEDMEAT_SCAVENGER_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_SCAVENGER_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 88717);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (36419)) {
            REMYNEEDMEAT_WOLF_COUNT = (REMYNEEDMEAT_WOLF_COUNT) + (5);
            if ((REMYNEEDMEAT_WOLF_COUNT) >= (12)) {
                REMYNEEDMEAT_WOLF_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_WOLF_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 88718);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (36415)) {
            REMYNEEDMEAT_MOLERAT_COUNT = (REMYNEEDMEAT_MOLERAT_COUNT) + (5);
            if ((REMYNEEDMEAT_MOLERAT_COUNT) >= (12)) {
                REMYNEEDMEAT_MOLERAT_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_MOLERAT_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 88719);
                };
            };
        };
        if (((((REMY_MEATINSTANCE) == (36415)) && ((REMYNEEDMEAT_MOLERAT_ENOUGH) == (FALSE))) || (((REMY_MEATINSTANCE) == (36419)) && ((REMYNEEDMEAT_WOLF_ENOUGH) == (FALSE)))) || (((REMY_MEATINSTANCE) == (36427)) && ((REMYNEEDMEAT_SCAVENGER_ENOUGH) == (FALSE)))) {
            DIA_REMY_SELLMEAT_AMMOUNT();
        } else {
            DIA_REMY_SELLMEAT_CHOICES();
        };
    };
    if (((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) >= (1)) && ((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) < (5))) {
        MAX = NPC_HASITEMS(HERO, REMY_MEATINSTANCE);
        B_GIVEINVITEMS(OTHER, SELF, REMY_MEATINSTANCE, MAX);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 34203, (MAX) * (REMY_MEATVALUE));
        if ((REMY_MEATINSTANCE) == (36427)) {
            REMYNEEDMEAT_SCAVENGER_COUNT = (REMYNEEDMEAT_SCAVENGER_COUNT) + (MAX);
            if ((REMYNEEDMEAT_SCAVENGER_COUNT) >= (12)) {
                REMYNEEDMEAT_SCAVENGER_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_SCAVENGER_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 88717);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (36419)) {
            REMYNEEDMEAT_WOLF_COUNT = (REMYNEEDMEAT_WOLF_COUNT) + (MAX);
            if ((REMYNEEDMEAT_WOLF_COUNT) >= (12)) {
                REMYNEEDMEAT_WOLF_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_WOLF_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 88718);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (36415)) {
            REMYNEEDMEAT_MOLERAT_COUNT = (REMYNEEDMEAT_MOLERAT_COUNT) + (MAX);
            if ((REMYNEEDMEAT_MOLERAT_COUNT) >= (12)) {
                REMYNEEDMEAT_MOLERAT_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_MOLERAT_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 88719);
                };
            };
        };
        if (((((REMY_MEATINSTANCE) == (36415)) && ((REMYNEEDMEAT_MOLERAT_ENOUGH) == (FALSE))) || (((REMY_MEATINSTANCE) == (36419)) && ((REMYNEEDMEAT_WOLF_ENOUGH) == (FALSE)))) || (((REMY_MEATINSTANCE) == (36427)) && ((REMYNEEDMEAT_SCAVENGER_ENOUGH) == (FALSE)))) {
            DIA_REMY_SELLMEAT_AMMOUNT();
        } else {
            DIA_REMY_SELLMEAT_CHOICES();
        };
    };
    if ((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) == (0)) {
        DIA_REMY_SELLMEAT_CHOICES();
    };
}

func void DIA_REMY_SELLMEAT_1() {
    if ((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, REMY_MEATINSTANCE, 1);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 34203, REMY_MEATVALUE);
        if ((REMY_MEATINSTANCE) == (36427)) {
            REMYNEEDMEAT_SCAVENGER_COUNT = (REMYNEEDMEAT_SCAVENGER_COUNT) + (1);
            if ((REMYNEEDMEAT_SCAVENGER_COUNT) >= (12)) {
                REMYNEEDMEAT_SCAVENGER_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_SCAVENGER_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 88717);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (36419)) {
            REMYNEEDMEAT_WOLF_COUNT = (REMYNEEDMEAT_WOLF_COUNT) + (1);
            if ((REMYNEEDMEAT_WOLF_COUNT) >= (12)) {
                REMYNEEDMEAT_WOLF_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_WOLF_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 88718);
                };
            };
        } else if ((REMY_MEATINSTANCE) == (36415)) {
            REMYNEEDMEAT_MOLERAT_COUNT = (REMYNEEDMEAT_MOLERAT_COUNT) + (1);
            if ((REMYNEEDMEAT_MOLERAT_COUNT) >= (12)) {
                REMYNEEDMEAT_MOLERAT_ENOUGH = TRUE;
                if ((REMYNEEDMEAT_MOLERAT_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 88719);
                };
            };
        };
        if (((((REMY_MEATINSTANCE) == (36415)) && ((REMYNEEDMEAT_MOLERAT_ENOUGH) == (FALSE))) || (((REMY_MEATINSTANCE) == (36419)) && ((REMYNEEDMEAT_WOLF_ENOUGH) == (FALSE)))) || (((REMY_MEATINSTANCE) == (36427)) && ((REMYNEEDMEAT_SCAVENGER_ENOUGH) == (FALSE)))) {
            DIA_REMY_SELLMEAT_AMMOUNT();
        } else {
            DIA_REMY_SELLMEAT_CHOICES();
        };
    };
    if ((NPC_HASITEMS(OTHER, REMY_MEATINSTANCE)) == (0)) {
        DIA_REMY_SELLMEAT_CHOICES();
    };
}

func void REMY_GIVEBACKSTUFF_SCAVENGER() {
    NPC_REMOVEINVITEMS(BAU_714_REMY, 34203, (VALUE_SCAVENGERMEAT_RAW) * ((REMYNEEDMEAT_SCAVENGER_COUNT) - (12)));
    PRINTSCREENS(PRINT_REMYMEAT, -(1), -(1), FONT_SCREENSMALL, 4);
    B_GIVEINVITEMS(HERO, BAU_714_REMY, 34203, (VALUE_SCAVENGERMEAT_RAW) * ((REMYNEEDMEAT_SCAVENGER_COUNT) - (12)));
}

func void REMY_GIVEBACKSTUFF_WOLF() {
    NPC_REMOVEINVITEMS(BAU_714_REMY, 34203, (VALUE_WOLFMEAT_RAW) * ((REMYNEEDMEAT_WOLF_COUNT) - (12)));
    PRINTSCREENS(PRINT_REMYMEAT, -(1), -(1), FONT_SCREENSMALL, 4);
    B_GIVEINVITEMS(HERO, BAU_714_REMY, 34203, (VALUE_WOLFMEAT_RAW) * ((REMYNEEDMEAT_WOLF_COUNT) - (12)));
}

func void REMY_GIVEBACKSTUFF_MOLERAT() {
    NPC_REMOVEINVITEMS(BAU_714_REMY, 34203, (VALUE_MOLERATMEAT_RAW) * ((REMYNEEDMEAT_MOLERAT_COUNT) - (12)));
    PRINTSCREENS(PRINT_REMYMEAT, -(1), -(1), FONT_SCREENSMALL, 4);
    B_GIVEINVITEMS(HERO, BAU_714_REMY, 34203, (VALUE_MOLERATMEAT_RAW) * ((REMYNEEDMEAT_MOLERAT_COUNT) - (12)));
}

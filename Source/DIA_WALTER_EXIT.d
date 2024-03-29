instance DIA_WALTER_EXIT(C_INFO) {
    NPC = 55178;
    NR = 999;
    CONDITION = DIA_WALTER_EXIT_CONDITION;
    INFORMATION = DIA_WALTER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WALTER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WALTER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WALTER_HELLO(C_INFO) {
    NPC = 55178;
    NR = 1;
    CONDITION = DIA_WALTER_HELLO_CONDITION;
    INFORMATION = DIA_WALTER_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_WALTER_HELLO_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WALTER_HELLO_INFO() {
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Walter_HELLO_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Walter_HELLO_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Walter_HELLO_03_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Walter_HELLO_03_04");
    };
}

instance DIA_WALTER_WHAT(C_INFO) {
    NPC = 55178;
    NR = 10;
    CONDITION = DIA_WALTER_WHAT_CONDITION;
    INFORMATION = DIA_WALTER_WHAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you do here?";
}

func int DIA_WALTER_WHAT_CONDITION() {
    return TRUE;
}

func void DIA_WALTER_WHAT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Walter_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Walter_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Walter_What_03_03");
    TRADER_LOGENTRY_WALTER();
}

instance DIA_WALTER_ALONE(C_INFO) {
    NPC = 55178;
    NR = 10;
    CONDITION = DIA_WALTER_ALONE_CONDITION;
    INFORMATION = DIA_WALTER_ALONE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You work here alone?";
}

func int DIA_WALTER_ALONE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 76498)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WALTER_ALONE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Walter_Alone_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Walter_Alone_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Walter_Alone_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Walter_Alone_03_04");
}

instance DIA_WALTER_BOLT(C_INFO) {
    NPC = 55178;
    NR = 1;
    CONDITION = DIA_WALTER_BOLT_CONDITION;
    INFORMATION = DIA_WALTER_BOLT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need your help with a certain bolthead.";
}

func int DIA_WALTER_BOLT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 37293)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WALTER_BOLT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Walter_Bolt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Walter_Bolt_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Walter_Bolt_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Walter_Bolt_03_04");
    if ((NPC_HASITEMS(SELF, 36067)) == (0)) {
        AI_STOPLOOKAT(SELF);
        CREATEINVITEM(SELF, 36067);
        AI_USEITEMTOSTATE(SELF, 36067, 1);
        AI_WAIT(SELF, 1077936128);
        AI_USEITEMTOSTATE(SELF, 36067, -(1));
        AI_LOOKATNPC(SELF, OTHER);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Walter_Bolt_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Walter_Bolt_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Walter_Bolt_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Walter_Bolt_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Walter_Bolt_03_09");
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_WALTER_BOLT);
}

instance DIA_WALTER_TRADE(C_INFO) {
    NPC = 55178;
    NR = 950;
    CONDITION = DIA_WALTER_TRADE_CONDITION;
    INFORMATION = DIA_WALTER_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Show me your wares.";
}

func int DIA_WALTER_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 76498)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WALTER_TRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Walter_TRADE_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Walter_TRADE_03_02");
    B_GIVETRADEINV(SELF);
}

instance DIA_WALTER_AMBIENT(C_INFO) {
    NPC = 55178;
    NR = 998;
    CONDITION = DIA_WALTER_AMBIENT_CONDITION;
    INFORMATION = DIA_WALTER_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_WALTER_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_WALTER_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Walter_AMBIENT_15_01");
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Walter_AMBIENT_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Walter_AMBIENT_03_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Walter_AMBIENT_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Walter_AMBIENT_03_05");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Walter_AMBIENT_03_06");
    };
}

instance DIA_WALTER_PICKPOCKET(C_INFO) {
    NPC = 55178;
    NR = 900;
    CONDITION = DIA_WALTER_PICKPOCKET_CONDITION;
    INFORMATION = DIA_WALTER_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_WALTER_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WALTER_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(76513);
    INFO_ADDCHOICE(76513, DIALOG_BACK, 76517);
    INFO_ADDCHOICE(76513, DIALOG_PICKPOCKET, 76516);
}

func void DIA_WALTER_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 34228, 3);
        B_GIVEINVITEMS(SELF, OTHER, 34228, 3);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(76513);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(76513);
}

func void DIA_WALTER_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(76513);
}

instance DIA_WALTER_SELLIRON(C_INFO) {
    NPC = 55178;
    NR = 770;
    CONDITION = DIA_WALTER_SELLIRON_CONDITION;
    INFORMATION = DIA_WALTER_SELLIRON_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I have everything you need. (Sell the iron)";
}

var int WALTERNEEDIRON_ENOUGH;
var int WALTERNEEDIRON_COUNT;
func int DIA_WALTER_SELLIRON_CONDITION() {
    if (((SHOWNEWS_SELL_IRON) == (TRUE)) && ((WALTERNEEDIRON_ENOUGH) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int WALTER_IRONINSTANCE;
var int WALTER_IRONVALUE;
func void DIA_WALTER_SELLIRON_CHOICES() {
    var string ALL_STRING;
    var int MAX;
    WALTER_IRONINSTANCE = 35980;
    WALTER_IRONVALUE = VALUE_IRON;
    INFO_CLEARCHOICES(76518);
    MAX = NPC_HASITEMS(HERO, WALTER_IRONINSTANCE);
    ALL_STRING = CS4(DIALOG_ALL, " (", I2S(MAX), ")");
    INFO_ADDCHOICE(76518, ALL_STRING, 76529);
    INFO_ADDCHOICE(76518, CHOICE_NUMBER_5, 76531);
    INFO_ADDCHOICE(76518, CHOICE_NUMBER_1, 76533);
    INFO_ADDCHOICE(76518, DIALOG_BACK, 76528);
}

func void DIA_WALTER_SELLIRON_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_GiveItem3");
    DIA_WALTER_SELLIRON_CHOICES();
}

func void DIA_WALTER_SELLIRON_BACK() {
    WALTER_IRONINSTANCE = -(1);
    WALTER_IRONVALUE = 0;
    INFO_CLEARCHOICES(76518);
}

func void DIA_WALTER_SELLIRON_ALL() {
    var int MAX;
    if ((NPC_HASITEMS(OTHER, WALTER_IRONINSTANCE)) >= (1)) {
        MAX = NPC_HASITEMS(HERO, WALTER_IRONINSTANCE);
        B_GIVEINVITEMS(OTHER, SELF, WALTER_IRONINSTANCE, MAX);
        CREATEINVITEMS(SELF, 34203, (MAX) * (WALTER_IRONVALUE));
        B_GIVEINVITEMS(SELF, OTHER, 34203, (MAX) * (WALTER_IRONVALUE));
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        if ((WALTER_IRONINSTANCE) == (35980)) {
            WALTERNEEDIRON_COUNT = (WALTERNEEDIRON_COUNT) + (MAX);
            if ((WALTERNEEDIRON_COUNT) >= (25)) {
                WALTERNEEDIRON_ENOUGH = TRUE;
                if ((WALTERNEEDIRON_COUNT) > (25)) {
                    AI_FUNCTION(SELF, 76534);
                };
            };
        };
        if (((WALTER_IRONINSTANCE) == (35980)) && ((WALTERNEEDIRON_ENOUGH) == (FALSE))) {
            DIA_WALTER_SELLIRON_CHOICES();
        } else {
            DIA_WALTER_SELLIRON_BACK();
        };
    };
    DIA_WALTER_SELLIRON_BACK();
    B_SAY(SELF, OTHER, "$NOITEMS");
}

func void DIA_WALTER_SELLIRON_5() {
    var int MAX;
    if ((NPC_HASITEMS(OTHER, WALTER_IRONINSTANCE)) >= (5)) {
        B_GIVEINVITEMS(OTHER, SELF, WALTER_IRONINSTANCE, 5);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 34203, (5) * (WALTER_IRONVALUE));
        if ((WALTER_IRONINSTANCE) == (35980)) {
            WALTERNEEDIRON_COUNT = (WALTERNEEDIRON_COUNT) + (5);
            if ((WALTERNEEDIRON_COUNT) >= (25)) {
                WALTERNEEDIRON_ENOUGH = TRUE;
                if ((WALTERNEEDIRON_COUNT) > (25)) {
                    AI_FUNCTION(SELF, 76534);
                };
            };
        };
        if (((WALTER_IRONINSTANCE) == (35980)) && ((WALTERNEEDIRON_ENOUGH) == (FALSE))) {
            DIA_WALTER_SELLIRON_CHOICES();
        } else {
            DIA_WALTER_SELLIRON_BACK();
        };
    };
    if (((NPC_HASITEMS(OTHER, WALTER_IRONINSTANCE)) >= (1)) && ((NPC_HASITEMS(OTHER, WALTER_IRONINSTANCE)) < (5))) {
        MAX = NPC_HASITEMS(HERO, WALTER_IRONINSTANCE);
        B_GIVEINVITEMS(OTHER, SELF, WALTER_IRONINSTANCE, MAX);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 34203, (MAX) * (WALTER_IRONVALUE));
        if ((WALTER_IRONINSTANCE) == (35980)) {
            WALTERNEEDIRON_COUNT = (WALTERNEEDIRON_COUNT) + (MAX);
            if ((WALTERNEEDIRON_COUNT) >= (25)) {
                WALTERNEEDIRON_ENOUGH = TRUE;
                if ((WALTERNEEDIRON_COUNT) > (25)) {
                    AI_FUNCTION(SELF, 76534);
                };
            };
        };
        if (((WALTER_IRONINSTANCE) == (35980)) && ((WALTERNEEDIRON_ENOUGH) == (FALSE))) {
            DIA_WALTER_SELLIRON_CHOICES();
        } else {
            DIA_WALTER_SELLIRON_BACK();
        };
    };
    if ((NPC_HASITEMS(OTHER, WALTER_IRONINSTANCE)) == (0)) {
        DIA_WALTER_SELLIRON_BACK();
        B_SAY(SELF, OTHER, "$NOITEMS");
    };
}

func void DIA_WALTER_SELLIRON_1() {
    if ((NPC_HASITEMS(OTHER, WALTER_IRONINSTANCE)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, WALTER_IRONINSTANCE, 1);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 34203, WALTER_IRONVALUE);
        if ((WALTER_IRONINSTANCE) == (35980)) {
            WALTERNEEDIRON_COUNT = (WALTERNEEDIRON_COUNT) + (1);
            if ((WALTERNEEDIRON_COUNT) >= (25)) {
                WALTERNEEDIRON_ENOUGH = TRUE;
                if ((WALTERNEEDIRON_COUNT) > (25)) {
                    AI_FUNCTION(SELF, 76534);
                };
            };
        };
        if (((WALTER_IRONINSTANCE) == (35980)) && ((WALTERNEEDIRON_ENOUGH) == (FALSE))) {
            DIA_WALTER_SELLIRON_CHOICES();
        } else {
            DIA_WALTER_SELLIRON_BACK();
        };
    };
    if ((NPC_HASITEMS(OTHER, WALTER_IRONINSTANCE)) == (0)) {
        DIA_WALTER_SELLIRON_BACK();
        B_SAY(SELF, OTHER, "$NOITEMS");
    };
}

func void WALTER_GIVEBACKSTUFF_IRON() {
    NPC_REMOVEINVITEMS(VLK_6415_WALTER, 34203, (VALUE_IRON) * ((WALTERNEEDIRON_COUNT) - (25)));
    PRINTSCREENS(PRINT_WALTERIRON, -(1), -(1), FONT_SCREENSMALL, 4);
    B_GIVEINVITEMS(HERO, VLK_6415_WALTER, 34203, (VALUE_IRON) * ((WALTERNEEDIRON_COUNT) - (25)));
}


instance DIA_THAMIL_EXIT(C_INFO) {
    NPC = 53816;
    NR = 999;
    CONDITION = DIA_THAMIL_EXIT_CONDITION;
    INFORMATION = DIA_THAMIL_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_THAMIL_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_THAMIL_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_THAMIL_HELLO(C_INFO) {
    NPC = 53816;
    NR = 1;
    CONDITION = DIA_THAMIL_HELLO_CONDITION;
    INFORMATION = DIA_THAMIL_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_THAMIL_HELLO_CONDITION() {
    if (((NPC_ISINSTATE(SELF, 61599)) && (!(NPC_KNOWSINFO(OTHER, 77019)))) || (((NPC_ISINSTATE(SELF, 61599)) && (NPC_KNOWSINFO(OTHER, 77019))) && ((THAMIL_CANTRADE) == (TRUE)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THAMIL_HELLO_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Thamil_HELLO_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Thamil_HELLO_03_02");
    };
}

instance DIA_THAMIL_HOUSE(C_INFO) {
    NPC = 53816;
    NR = 10;
    CONDITION = DIA_THAMIL_HOUSE_CONDITION;
    INFORMATION = DIA_THAMIL_HOUSE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You have a pretty nice house.";
}

func int DIA_THAMIL_HOUSE_CONDITION() {
    return TRUE;
}

func void DIA_THAMIL_HOUSE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thamil_House_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thamil_House_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Thamil_House_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Thamil_House_03_04");
}

instance DIA_THAMIL_GOLDSMITH(C_INFO) {
    NPC = 53816;
    NR = 10;
    CONDITION = DIA_THAMIL_GOLDSMITH_CONDITION;
    INFORMATION = DIA_THAMIL_GOLDSMITH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Are you a goldsmith?";
}

func int DIA_THAMIL_GOLDSMITH_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 77013)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THAMIL_GOLDSMITH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thamil_Goldsmith_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thamil_Goldsmith_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Thamil_Goldsmith_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Thamil_Goldsmith_03_04");
}

instance DIA_THAMIL_HAVE(C_INFO) {
    NPC = 53816;
    NR = 10;
    CONDITION = DIA_THAMIL_HAVE_CONDITION;
    INFORMATION = DIA_THAMIL_HAVE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you have in stock?";
}

func int DIA_THAMIL_HAVE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 77016)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int THAMIL_CANTRADE;
func void DIA_THAMIL_HAVE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thamil_Have_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thamil_Have_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Thamil_Have_03_03");
    INFO_CLEARCHOICES(77019);
    INFO_ADDCHOICE(77019, "Special orders?", 77024);
}

func void DIA_THAMIL_TRADEENABLE() {
    AI_OUTPUT(SELF, OTHER, "DIA_Thamil_Have_Special_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Thamil_Have_Special_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Thamil_Have_Special_03_06");
    THAMIL_CANTRADE = TRUE;
}

func void DIA_THAMIL_HAVE_SPECIAL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thamil_Have_Special_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thamil_Have_Special_03_02");
    if ((((NPC_HASITEMS(OTHER, 34206)) >= (1)) || ((NPC_HASITEMS(OTHER, 34212)) >= (1))) || ((NPC_HASITEMS(OTHER, 34203)) >= (THAMIL_GOLDTOIMPRESS))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Thamil_Have_Special_03_03");
        DIA_THAMIL_TRADEENABLE();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Thamil_Have_Special_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Thamil_Have_Special_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Thamil_Have_Special_03_09");
    TRADER_LOGENTRY_SUSANNE();
    INFO_CLEARCHOICES(77019);
}

instance DIA_THAMIL_CANTRADE(C_INFO) {
    NPC = 53816;
    NR = 1;
    CONDITION = DIA_THAMIL_CANTRADE_CONDITION;
    INFORMATION = DIA_THAMIL_CANTRADE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_THAMIL_CANTRADE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 77019)) && ((THAMIL_CANTRADE) == (FALSE))) {
        if ((((NPC_HASITEMS(OTHER, 34206)) >= (1)) || ((NPC_HASITEMS(OTHER, 34212)) >= (1))) || ((NPC_HASITEMS(OTHER, 34203)) >= (THAMIL_GOLDTOIMPRESS))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_THAMIL_CANTRADE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Thamil_CanTrade_03_01");
    DIA_THAMIL_TRADEENABLE();
}

instance DIA_THAMIL_TRADE(C_INFO) {
    NPC = 53816;
    NR = 950;
    CONDITION = DIA_THAMIL_TRADE_CONDITION;
    INFORMATION = DIA_THAMIL_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Show me your special offer.";
}

func int DIA_THAMIL_TRADE_CONDITION() {
    if ((THAMIL_CANTRADE) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THAMIL_TRADE_INFO() {
    NPC_INITAMBIENTS(SELF, 3);
    AI_OUTPUT(OTHER, SELF, "DIA_Thamil_TRADE_15_01");
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Thamil_TRADE_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Thamil_TRADE_03_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Thamil_TRADE_03_04");
    };
    B_GIVETRADEINV(SELF);
}

instance DIA_THAMIL_AMBIENT(C_INFO) {
    NPC = 53816;
    NR = 850;
    CONDITION = DIA_THAMIL_AMBIENT_CONDITION;
    INFORMATION = DIA_THAMIL_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_THAMIL_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 77016)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THAMIL_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    NPC_INITAMBIENTS(SELF, 1);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Thamil_Ambient_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Thamil_Ambient_03_05");
    };
}

instance DIA_THAMIL_PICKPOCKET(C_INFO) {
    NPC = 53816;
    NR = 900;
    CONDITION = DIA_THAMIL_PICKPOCKET_CONDITION;
    INFORMATION = DIA_THAMIL_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120_FEMALE;
}

func int DIA_THAMIL_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THAMIL_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(77034);
    INFO_ADDCHOICE(77034, DIALOG_BACK, 77038);
    INFO_ADDCHOICE(77034, DIALOG_PICKPOCKET, 77037);
}

func void DIA_THAMIL_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 33660, 4);
        B_GIVEINVITEMS(SELF, OTHER, 33660, 4);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(77034);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(77034);
}

func void DIA_THAMIL_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(77034);
}


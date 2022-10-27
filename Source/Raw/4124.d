instance DIA_GRETEL_EXIT(C_INFO) {
    NPC = 0xe3d1;
    NR = 999;
    CONDITION = DIA_GRETEL_EXIT_CONDITION;
    INFORMATION = DIA_GRETEL_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GRETEL_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GRETEL_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GRETEL_HELLO(C_INFO) {
    NPC = 0xe3d1;
    NR = 1;
    CONDITION = DIA_GRETEL_HELLO_CONDITION;
    INFORMATION = DIA_GRETEL_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GRETEL_HELLO_CONDITION() {
    if (((NPC_GETDISTTOWP(SELF, "WOLFSDEN_TRADER")) <= (850)) || (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GRETEL_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gretel_HELLO_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gretel_HELLO_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gretel_HELLO_03_03");
    LOG_CREATETOPIC(TOPIC_WOLFSDENTRADER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_WOLFSDENTRADER, LOG_TRADER_GRETEL);
}

instance DIA_GRETEL_TRADE(C_INFO) {
    NPC = 0xe3d1;
    NR = 1;
    CONDITION = DIA_GRETEL_TRADE_CONDITION;
    INFORMATION = DIA_GRETEL_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's trade!";
}

func int DIA_GRETEL_TRADE_CONDITION() {
    return TRUE;
}

func void DIA_GRETEL_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gretel_TRADE_03_01");
    B_GIVETRADEINV(SELF);
}

instance DIA_GRETEL_AMBIENT(C_INFO) {
    NPC = 0xe3d1;
    NR = 90;
    CONDITION = DIA_GRETEL_AMBIENT_CONDITION;
    INFORMATION = DIA_GRETEL_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_GRETEL_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_GRETEL_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    NPC_INITAMBIENTS(SELF, 2);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Gretel_Ambient_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Gretel_Ambient_03_02");
    };
}

instance DIA_GRETEL_PICKPOCKET(C_INFO) {
    NPC = 0xe3d1;
    NR = 900;
    CONDITION = DIA_GRETEL_PICKPOCKET_CONDITION;
    INFORMATION = DIA_GRETEL_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120_FEMALE;
}

func int DIA_GRETEL_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GRETEL_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x1415f);
    INFO_ADDCHOICE(0x1415f, DIALOG_BACK, 0x14163);
    INFO_ADDCHOICE(0x1415f, DIALOG_PICKPOCKET, 0x14162);
}

func void DIA_GRETEL_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x1415f);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x1415f);
}

func void DIA_GRETEL_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x1415f);
}


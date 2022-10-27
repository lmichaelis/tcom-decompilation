instance DIA_DORRAN_EXIT(C_INFO) {
    NPC = 0xd727;
    NR = 999;
    CONDITION = DIA_DORRAN_EXIT_CONDITION;
    INFORMATION = DIA_DORRAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_DORRAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_DORRAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_DORRAN_WHO(C_INFO) {
    NPC = 0xd727;
    NR = 1;
    CONDITION = DIA_DORRAN_WHO_CONDITION;
    INFORMATION = DIA_DORRAN_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_DORRAN_WHO_CONDITION() {
    return TRUE;
}

func void DIA_DORRAN_WHO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dorran_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Who_03_03");
}

instance DIA_DORRAN_MAD(C_INFO) {
    NPC = 0xd727;
    NR = 10;
    CONDITION = DIA_DORRAN_MAD_CONDITION;
    INFORMATION = DIA_DORRAN_MAD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Why are you so tense?";
}

func int DIA_DORRAN_MAD_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x124b6)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DORRAN_MAD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dorran_Mad_15_01");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Mad_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Mad_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Dorran_Mad_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Mad_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Mad_03_06");
    INFO_CLEARCHOICES(0x124b9);
    INFO_ADDCHOICE(0x124b9, "So, did they find anything?", 0x124bc);
}

func void DIA_DORRAN_MAD_SOMETHING() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dorran_Mad_Something_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Mad_Something_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Mad_Something_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Mad_Something_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Mad_Something_03_05");
    INFO_CLEARCHOICES(0x124b9);
}

instance DIA_DORRAN_WHATTRADE(C_INFO) {
    NPC = 0xd727;
    NR = 10;
    CONDITION = DIA_DORRAN_WHATTRADE_CONDITION;
    INFORMATION = DIA_DORRAN_WHATTRADE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you trading here?";
}

func int DIA_DORRAN_WHATTRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x124b6)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DORRAN_WHATTRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dorran_WhatTrade_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_WhatTrade_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_WhatTrade_03_03");
    LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_DORRAN);
}

instance DIA_DORRAN_TRADE(C_INFO) {
    NPC = 0xd727;
    NR = 950;
    CONDITION = DIA_DORRAN_TRADE_CONDITION;
    INFORMATION = DIA_DORRAN_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Show me your wares.";
}

func int DIA_DORRAN_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x124bd)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DORRAN_TRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dorran_Trade_15_01");
    B_GIVETRADEINV(SELF);
}

instance DIA_DORRAN_AMBIENT(C_INFO) {
    NPC = 0xd727;
    NR = 850;
    CONDITION = DIA_DORRAN_AMBIENT_CONDITION;
    INFORMATION = DIA_DORRAN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What's new?";
}

func int DIA_DORRAN_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x124b6)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DORRAN_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dorran_Ambient_15_01");
    if ((LOG_GETSTATUS(MIS_Q206)) == (LOG_SUCCESS)) {
        NPC_INITAMBIENTS(SELF, 2);
    };
    NPC_INITAMBIENTS(SELF, 1);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Ambient_03_04");
            AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Ambient_03_05");
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Ambient_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Ambient_03_03");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Ambient_03_06");
    };
}

instance DIA_DORRAN_BOLT(C_INFO) {
    NPC = 0xd727;
    NR = 1;
    CONDITION = DIA_DORRAN_BOLT_CONDITION;
    INFORMATION = DIA_DORRAN_BOLT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know anything about boltheads?";
}

func int DIA_DORRAN_BOLT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x91ad)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DORRAN_BOLT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dorran_Bolt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Bolt_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Bolt_03_03");
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_DORRAN_BOLT);
    AI_OUTPUT(SELF, OTHER, "DIA_Dorran_Bolt_03_04");
}

instance DIA_DORRAN_PICKPOCKET(C_INFO) {
    NPC = 0xd727;
    NR = 900;
    CONDITION = DIA_DORRAN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_DORRAN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_DORRAN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DORRAN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x124c9);
    INFO_ADDCHOICE(0x124c9, DIALOG_BACK, 0x124cd);
    INFO_ADDCHOICE(0x124c9, DIALOG_PICKPOCKET, 0x124cc);
}

func void DIA_DORRAN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x124c9);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x124c9);
}

func void DIA_DORRAN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x124c9);
}


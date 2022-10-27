instance DIA_ELID_EXIT(C_INFO) {
    NPC = 0xcf13;
    NR = 999;
    CONDITION = DIA_ELID_EXIT_CONDITION;
    INFORMATION = DIA_ELID_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ELID_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ELID_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ELID_QM301_THIEFDEAD(C_INFO) {
    NPC = 0xcf13;
    NR = 1;
    CONDITION = DIA_ELID_QM301_THIEFDEAD_CONDITION;
    INFORMATION = DIA_ELID_QM301_THIEFDEAD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ELID_QM301_THIEFDEAD_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM301)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x104b5))) {
        if (((NPC_GETDISTTOWP(NONE_826_ELID, "PARTM2_TRADESMAN_02")) <= (500)) && ((NPC_GETDISTTOWP(MIL_4017_ARWID, "PARTM2_MARKET_01")) <= (500))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ELID_QM301_THIEFDEAD_INFO() {
    TRIA_INVITE(MIL_4017_ARWID);
    TRIA_START();
    AI_STARTFACEANI(SELF, S_SAD, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Elid_QM301_ThiefDead_03_01");
    AI_STARTFACEANI(OTHER, S_SMILE, 0, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Elid_QM301_ThiefDead_15_02");
    AI_STARTFACEANI(SELF, S_WHAT, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Elid_QM301_ThiefDead_03_03");
    if ((NPC_HASITEMS(OTHER, 0x917d)) >= (1)) {
        QM301_ELIDPOCKET = 1;
        AI_STARTFACEANI(SELF, S_SMILE, 0, 1);
        AI_OUTPUT(OTHER, SELF, "DIA_Elid_QM301_ThiefDead_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Elid_QM301_ThiefDead_03_05");
        B_GIVEINVITEMS(OTHER, SELF, 0x917d, 1);
        B_GIVEPLAYERXP(XP_QM301_FOUNDELIDPOCKET);
    };
    AI_STARTFACEANI(OTHER, S_SAD, 0, 1);
    AI_STARTFACEANI(SELF, S_TIRED, 0, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Elid_QM301_ThiefDead_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Elid_QM301_ThiefDead_03_07");
    AI_STARTFACEANI(SELF, S_WHAT, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Elid_QM301_ThiefDead_03_08");
    AI_STARTFACEANI(OTHER, S_SMILE, 0, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Elid_QM301_ThiefDead_15_09");
    AI_STARTFACEANI(SELF, S_SURPRISE, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Elid_QM301_ThiefDead_03_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Elid_QM301_ThiefDead_15_11");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Elid_QM301_ThiefDead_03_12");
    AI_OUTPUT(OTHER, SELF, "DIA_Elid_QM301_ThiefDead_15_13");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Elid_QM301_ThiefDead_03_14");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_QM301, LOG_QM301_ELID_HAPPY);
    TRIA_FINISH();
    AI_FUNCTION(SELF, 0x10e95);
    B_QM301_BRINGBACKHOMELESS();
}

func void ELID_QM301_CHANGERTN() {
    NPC_EXCHANGEROUTINE(MIL_4017_ARWID, START);
    SELF.AIVAR[15] = FALSE;
}

instance DIA_ELID_HELLO(C_INFO) {
    NPC = 0xcf13;
    NR = 1;
    CONDITION = DIA_ELID_HELLO_CONDITION;
    INFORMATION = DIA_ELID_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you do?";
}

func int DIA_ELID_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_ELID_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatIsYourJob");
    AI_OUTPUT(SELF, OTHER, "DIA_Elid_Hello_03_01");
    LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_ELID);
}

instance DIA_ELID_AMBIENT(C_INFO) {
    NPC = 0xcf13;
    NR = 998;
    CONDITION = DIA_ELID_AMBIENT_CONDITION;
    INFORMATION = DIA_ELID_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_ELID_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x10e96)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ELID_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_HowAreYou2");
    if ((LOG_GETSTATUS(MIS_QM301)) != (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Elid_Ambient_03_01");
    };
    if (((LOG_GETSTATUS(MIS_QM301)) == (LOG_SUCCESS)) && ((QM301_ELIDPOCKET) == (1))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Elid_Ambient_03_02");
    };
    if (((LOG_GETSTATUS(MIS_QM301)) == (LOG_SUCCESS)) && ((QM301_ELIDPOCKET) != (1))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Elid_Ambient_03_03");
    };
}

instance DIA_ELID_TRADE(C_INFO) {
    NPC = 0xcf13;
    NR = 800;
    CONDITION = DIA_ELID_TRADE_CONDITION;
    INFORMATION = DIA_ELID_TRADE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Show me your wares.";
    TRADE = TRUE;
}

func int DIA_ELID_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x10e96)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ELID_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade2");
    B_GIVETRADEINV(SELF);
}

instance DIA_ELID_PICKPOCKET(C_INFO) {
    NPC = 0xcf13;
    NR = 900;
    CONDITION = DIA_ELID_PICKPOCKET_CONDITION;
    INFORMATION = DIA_ELID_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_ELID_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ELID_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x10e9f);
    INFO_ADDCHOICE(0x10e9f, DIALOG_BACK, 0x10ea3);
    INFO_ADDCHOICE(0x10e9f, DIALOG_PICKPOCKET, 0x10ea2);
}

func void DIA_ELID_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x10e9f);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x10e9f);
}

func void DIA_ELID_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x10e9f);
}

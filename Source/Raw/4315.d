instance DIA_UWE_EXIT(C_INFO) {
    NPC = 0xe132;
    NR = 999;
    CONDITION = DIA_UWE_EXIT_CONDITION;
    INFORMATION = DIA_UWE_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_UWE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_UWE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_UWE_Q221_HELLO(C_INFO) {
    NPC = 0xe132;
    NR = 1;
    CONDITION = DIA_UWE_Q221_HELLO_CONDITION;
    INFORMATION = DIA_UWE_Q221_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Albyn sent me to help repair the shore.";
}

func int DIA_UWE_Q221_HELLO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int UWE_SQ221_NOWOOD = 0;
func void DIA_UWE_Q221_HELLO_NEXT() {
    UWE_SQ221_NOWOOD = 0;
    SQ221_UWE_WORK = 1;
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Q221_Hello_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Q221_Hello_Next_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Uwe_Q221_Hello_Next_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Q221_Hello_Next_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Q221_Hello_Next_03_05");
    if ((NPC_HASITEMS(OTHER, 0x8585)) == (0)) {
        CREATEINVITEMS(SELF, 0x8585, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8585, 1);
    };
    AI_LOGENTRY(TOPIC_SQ221, LOG_SQ221_UWE_WORK);
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(0x15ca9);
    INFO_CLEARCHOICES(0x15cae);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_UWE_Q221_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Uwe_Q221_Hello_15_01");
    if ((LOG_GETSTATUS(MIS_SQ101)) == (LOG_SUCCESS)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Q221_Hello_03_02");
        AI_OUTPUT(OTHER, SELF, "DIA_Uwe_Q221_Hello_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Q221_Hello_03_04");
        DIA_UWE_Q221_HELLO_NEXT();
    };
    UWE_SQ221_NOWOOD = 1;
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Q221_Hello_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Q221_Hello_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Q221_Hello_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Uwe_Q221_Hello_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Q221_Hello_03_09");
    AI_LOGENTRY(TOPIC_SQ221, LOG_SQ221_UWE_WOODNEEDED);
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(0x15ca9);
    AI_STOPPROCESSINFOS(SELF);
    if ((NPC_KNOWSINFO(OTHER, 0x158a4)) && ((LOG_GETSTATUS(MIS_SQ101)) == (0))) {
        SETDIALOGUETOLDPROPERTY(0x158a4, FALSE);
    };
}

instance DIA_UWE_SQ221_GOTWOOD(C_INFO) {
    NPC = 0xe132;
    NR = 1;
    CONDITION = DIA_UWE_SQ221_GOTWOOD_CONDITION;
    INFORMATION = DIA_UWE_SQ221_GOTWOOD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "We got wood!";
}

func int DIA_UWE_SQ221_GOTWOOD_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_SQ101)) == (LOG_SUCCESS))) && (NPC_KNOWSINFO(OTHER, 0x15ca9))) && ((UWE_SQ221_NOWOOD) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_UWE_SQ221_GOTWOOD_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Uwe_SQ221_GotWood_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_SQ221_GotWood_03_02");
    AI_LOGENTRY(TOPIC_SQ221, LOG_SQ221_UWE_GOTWOOD);
    DIA_UWE_Q221_HELLO_NEXT();
}

instance DIA_UWE_SQ221_AFTERSAW(C_INFO) {
    NPC = 0xe132;
    NR = 1;
    CONDITION = DIA_UWE_SQ221_AFTERSAW_CONDITION;
    INFORMATION = DIA_UWE_SQ221_AFTERSAW_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_UWE_SQ221_AFTERSAW_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) && ((SQ221_UWE_WORK) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_UWE_SQ221_AFTERSAW_INFO() {
    LOG_CREATETOPIC(TOPIC_SQ221, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ221), TOPIC_SQ221, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ221, LOG_SQ221_START);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_SQ221_AfterSaw_03_01");
    AI_LOGENTRY(TOPIC_SQ221, LOG_SQ221_UWE_BRIDGE);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "SQ221_GUIDE");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_UWE_SQ221_REPAIRBRIDGE(C_INFO) {
    NPC = 0xe132;
    NR = 1;
    CONDITION = DIA_UWE_SQ221_REPAIRBRIDGE_CONDITION;
    INFORMATION = DIA_UWE_SQ221_REPAIRBRIDGE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_UWE_SQ221_REPAIRBRIDGE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x15cb1))) && ((NPC_GETDISTTOWP(SELF, "PART_13_NAV_76")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_UWE_SQ221_REPAIRBRIDGE_INFO() {
    SQ221_UWE_PREPAREWORK();
    SELF.AIVAR[15] = FALSE;
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_SQ221_RepairBridge_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_SQ221_RepairBridge_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_SQ221_RepairBridge_03_03");
    if ((NPC_HASITEMS(OTHER, 0x8582)) == (0)) {
        CREATEINVITEMS(SELF, 0x8582, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8582, 1);
    };
    AI_LOGENTRY(TOPIC_SQ221, LOG_SQ221_UWE_TIMETOWORK);
    NPC_EXCHANGEROUTINE(SELF, "SQ221_BRIDGE");
    INFO_CLEARCHOICES(0x15cb4);
    INFO_ADDCHOICE(0x15cb4, "Maybe you can fix them?", 0x15cb7);
    INFO_ADDCHOICE(0x15cb4, "I'll take care of it!", 0x15cb8);
}

func void DIA_UWE_SQ221_REPAIRBRIDGE_YOU() {
    AI_OUTPUT(OTHER, SELF, "DIA_Uwe_SQ221_RepairBridge_You_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_SQ221_RepairBridge_You_03_02");
    INFO_CLEARCHOICES(0x15cb4);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_UWE_SQ221_REPAIRBRIDGE_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Uwe_SQ221_RepairBridge_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_SQ221_RepairBridge_Yes_03_02");
    INFO_CLEARCHOICES(0x15cb4);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_UWE_SQ221_AFTERBRIDGE(C_INFO) {
    NPC = 0xe132;
    NR = 1;
    CONDITION = DIA_UWE_SQ221_AFTERBRIDGE_CONDITION;
    INFORMATION = DIA_UWE_SQ221_AFTERBRIDGE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Will it hold this shore?";
}

func int DIA_UWE_SQ221_AFTERBRIDGE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) && ((SQ221_UWE_WORK) == (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_UWE_SQ221_AFTERBRIDGE_INFO() {
    SQ221_UWEDONE = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Uwe_SQ221_AfterBridge_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_SQ221_AfterBridge_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_SQ221_AfterBridge_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_SQ221_AfterBridge_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_SQ221_AfterBridge_03_05");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ221, LOG_SQ221_UWE_BRIDGEDONE);
    NPC_EXCHANGEROUTINE(SELF, START);
}

instance DIA_UWE_Q504_FEEL(C_INFO) {
    NPC = 0xe132;
    NR = 90;
    CONDITION = DIA_UWE_Q504_FEEL_CONDITION;
    INFORMATION = DIA_UWE_Q504_FEEL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the morale?";
}

func int DIA_UWE_Q504_FEEL_CONDITION() {
    if ((((NPC_GETDISTTOWP(SELF, "PART5_WORKERSCAMP_TABLE")) <= (0x7d0)) && ((Q504_TAKEWORKERS) == (2))) && ((Q504_UWEVOLFZACKE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_UWE_Q504_FEEL_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale3");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Q504_Feel_03_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_UWE_WHATYADOIN(C_INFO) {
    NPC = 0xe132;
    NR = 1;
    CONDITION = DIA_UWE_WHATYADOIN_CONDITION;
    INFORMATION = DIA_UWE_WHATYADOIN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you do?";
}

func int DIA_UWE_WHATYADOIN_CONDITION() {
    if ((SQ221_UWEQUESTION) == (FALSE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_UWE_WHATYADOIN_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatIsYourJob");
    AI_OUTPUT(SELF, OTHER, "DIA_Uwe_WhatYaDoin_03_02");
}

instance DIA_UWE_AMBIENT(C_INFO) {
    NPC = 0xe132;
    NR = 990;
    CONDITION = DIA_UWE_AMBIENT_CONDITION;
    INFORMATION = DIA_UWE_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_UWE_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x15cbf)) || (NPC_KNOWSINFO(OTHER, 0x15ca9))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_UWE_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if (((!(NPC_KNOWSINFO(OTHER, 0x15ca9))) && ((KAPITEL) != (4))) && ((KAPITEL) != (5))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Ambient_03_01");
    };
    if ((((NPC_KNOWSINFO(OTHER, 0x15ca9)) && (!(NPC_KNOWSINFO(OTHER, 0x15cb9)))) && ((KAPITEL) != (4))) && ((KAPITEL) != (5))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Ambient_03_02");
    };
    if (((NPC_KNOWSINFO(OTHER, 0x15cb9)) && ((KAPITEL) != (4))) && ((KAPITEL) != (5))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Ambient_03_03");
    };
    if ((KAPITEL) >= (4)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Uwe_Ambient_03_04");
    };
}

instance DIA_UWE_TRADE(C_INFO) {
    NPC = 0xe132;
    NR = 800;
    CONDITION = DIA_UWE_TRADE_CONDITION;
    INFORMATION = DIA_UWE_TRADE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Show me your wares.";
    TRADE = TRUE;
}

func int DIA_UWE_TRADE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x15cbf)) || ((SQ221_UWEQUESTION) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_UWE_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade2");
    B_GIVETRADEINV(SELF);
    if ((UWE_TRADE_CHECKINFO) == (FALSE)) {
        UWE_TRADE_CHECKINFO = TRUE;
        LOG_CREATETOPIC(TOPIC_SILBACHTRADER, LOG_NOTE);
        AI_LOGENTRY(TOPIC_SILBACHTRADER, LOG_TRADER_UWE);
    };
}

var int DIA_UWE_TRADE_INFO.UWE_TRADE_CHECKINFO = 0;
instance DIA_UWE_PICKPOCKET(C_INFO) {
    NPC = 0xe132;
    NR = 900;
    CONDITION = DIA_UWE_PICKPOCKET_CONDITION;
    INFORMATION = DIA_UWE_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_UWE_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_UWE_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x15cc9);
    INFO_ADDCHOICE(0x15cc9, DIALOG_BACK, 0x15ccd);
    INFO_ADDCHOICE(0x15cc9, DIALOG_PICKPOCKET, 0x15ccc);
}

func void DIA_UWE_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x84d0, 3);
        B_GIVEINVITEMS(SELF, OTHER, 0x84d0, 3);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x15cc9);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x15cc9);
}

func void DIA_UWE_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x15cc9);
}


instance DIA_VLADAN_EXIT(C_INFO) {
    NPC = 0xd4dc;
    NR = 999;
    CONDITION = DIA_VLADAN_EXIT_CONDITION;
    INFORMATION = DIA_VLADAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VLADAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VLADAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VLADAN_HELLO(C_INFO) {
    NPC = 0xd4dc;
    NR = 1;
    CONDITION = DIA_VLADAN_HELLO_CONDITION;
    INFORMATION = DIA_VLADAN_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_VLADAN_HELLO_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_HELLO_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_HELLO_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_HELLO_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_HELLO_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_HELLO_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_HELLO_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_HELLO_03_07");
}

instance DIA_VLADAN_BUSINESS(C_INFO) {
    NPC = 0xd4dc;
    NR = 2;
    CONDITION = DIA_VLADAN_BUSINESS_CONDITION;
    INFORMATION = DIA_VLADAN_BUSINESS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How's business going?";
}

func int DIA_VLADAN_BUSINESS_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x110df)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_BUSINESS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_Business_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Business_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Business_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Business_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Business_03_05");
}

instance DIA_VLADAN_BROTHEL(C_INFO) {
    NPC = 0xd4dc;
    NR = 3;
    CONDITION = DIA_VLADAN_BROTHEL_CONDITION;
    INFORMATION = DIA_VLADAN_BROTHEL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I thought you were the only owner of the whorehouse.";
}

func int DIA_VLADAN_BROTHEL_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x110e2)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_BROTHEL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_Brothel_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Brothel_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Brothel_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Brothel_03_04");
}

instance DIA_VLADAN_ACCENT(C_INFO) {
    NPC = 0xd4dc;
    NR = 4;
    CONDITION = DIA_VLADAN_ACCENT_CONDITION;
    INFORMATION = DIA_VLADAN_ACCENT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You're not from around here, are you?";
}

func int DIA_VLADAN_ACCENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x110e5)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_ACCENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_Accent_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Accent_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Accent_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Accent_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Accent_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_Accent_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Accent_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Accent_03_08");
}

instance DIA_VLADAN_DARKSIKRETS(C_INFO) {
    NPC = 0xd4dc;
    NR = 5;
    CONDITION = DIA_VLADAN_DARKSIKRETS_CONDITION;
    INFORMATION = DIA_VLADAN_DARKSIKRETS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Where did the name of your business come from?";
}

func int DIA_VLADAN_DARKSIKRETS_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x110df)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_DARKSIKRETS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_DARKSIKRETS_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_DARKSIKRETS_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_DARKSIKRETS_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_DARKSIKRETS_03_04");
}

instance DIA_VLADAN_TRADE(C_INFO) {
    NPC = 0xd4dc;
    NR = 900;
    CONDITION = DIA_VLADAN_TRADE_CONDITION;
    INFORMATION = DIA_VLADAN_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Do you have anything to drink?";
}

func int DIA_VLADAN_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x110df)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_TRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_TRADE_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_TRADE_03_02");
    B_GIVETRADEINV(SELF);
    TRADER_LOGENTRY_VLADA();
}

instance DIA_VLADAN_AMBIENT(C_INFO) {
    NPC = 0xd4dc;
    NR = 850;
    CONDITION = DIA_VLADAN_AMBIENT_CONDITION;
    INFORMATION = DIA_VLADAN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What's new?";
}

func int DIA_VLADAN_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x110df)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_Ambient_15_01");
    if ((LOG_GETSTATUS(MIS_QM304)) == (LOG_RUNNING)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Ambient_03_06");
    };
    if ((KAPITEL) == (2)) {
        NPC_INITAMBIENTS(SELF, 2);
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Vladan_AMB_CH2_03_01");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Ambient_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Ambient_03_03");
        };
    };
    if ((KAPITEL) == (3)) {
        NPC_INITAMBIENTS(SELF, 2);
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Vladan_AMB_CH3_03_02");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Ambient_03_07");
        };
    };
    if ((KAPITEL) == (4)) {
        NPC_INITAMBIENTS(SELF, 2);
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Vladan_AMB_CH4_03_03");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Ambient_03_11");
            AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Ambient_03_12");
        };
    };
    if ((KAPITEL) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vladan_AMB_CH5_03_04");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_AMB_CH2_03_01");
}

instance DIA_VLADAN_CQ003(C_INFO) {
    NPC = 0xd4dc;
    NR = 902;
    CONDITION = DIA_VLADAN_CQ003_CONDITION;
    INFORMATION = DIA_VLADAN_CQ003_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Hi, can we talk business?";
}

func int DIA_VLADAN_CQ003_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_CQ003)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x8e0c)) >= (1))) && (NPC_KNOWSINFO(OTHER, 0x110df))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_CQ003_INFO() {
    B_STANDUP();
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_CQ003_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_CQ003_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_CQ003_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_CQ003_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_CQ003_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_CQ003_15_06");
    B_GIVEINVITEMS(OTHER, SELF, 0x8e0c, 1);
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPLOOKAT(SELF);
    CREATEINVITEM(SELF, 0x8cc9);
    AI_USEITEMTOSTATE(SELF, 0x8cc9, 1);
    AI_WAIT(SELF, 0x40400000);
    AI_USEITEMTOSTATE(SELF, 0x8cc9, -(1));
    AI_WAITTILLEND(SELF, OTHER);
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_CQ003_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_CQ003_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_CQ003_03_09");
    AI_LOGENTRY(TOPIC_CQ003, LOG_CQ003_VLADA);
    CQ003_HAPPYCUSTOMER = (CQ003_HAPPYCUSTOMER) + (2);
    CQ003_HAPPYVLADAN = 1;
    CQ003_TALKED = (CQ003_TALKED) + (1);
    AI_STOPLOOKAT(SELF);
}

instance DIA_VLADAN_FAQ002(C_INFO) {
    NPC = 0xd4dc;
    NR = 1;
    CONDITION = DIA_VLADAN_FAQ002_CONDITION;
    INFORMATION = DIA_VLADAN_FAQ002_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Have you seen a guy here lately with his hair in a ponytail?";
}

func int DIA_VLADAN_FAQ002_CONDITION() {
    if (((LOG_GETSTATUS(MIS_FAQ002)) == (LOG_RUNNING)) && ((FAQ002_INFOFROMORTWIN) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_FAQ002_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_FAQ002_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_FAQ002_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_FAQ002_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_FAQ002_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_FAQ002_03_08");
    AI_LOGENTRY(TOPIC_FAQ002, LOG_FAQ002_VLADAN_KAF);
}

instance DIA_VLADAN_QM304_NUGGET(C_INFO) {
    NPC = 0xd4dc;
    NR = 1;
    CONDITION = DIA_VLADAN_QM304_NUGGET_CONDITION;
    INFORMATION = DIA_VLADAN_QM304_NUGGET_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_VLADAN_QM304_NUGGET_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM304)) == (LOG_RUNNING)) && ((QM304_REFUGEEARENAFIGHT_STATUS) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_QM304_NUGGET_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_QM304_Nugget_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_QM304_Nugget_03_02");
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_QM304_Nugget_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_QM304_Nugget_03_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    CREATEINVITEMS(SELF, 0x859a, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x859a, 1);
    QM304_COUNTHOWMANYNUGGETS();
    AI_LOGENTRY(TOPIC_QM304, LOG_QM304_VLADA);
}

instance DIA_VLADAN_BARNABA(C_INFO) {
    NPC = 0xd4dc;
    NR = 1;
    CONDITION = DIA_VLADAN_BARNABA_CONDITION;
    INFORMATION = DIA_VLADAN_BARNABA_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you kick out clients who mention wives?";
}

func int DIA_VLADAN_BARNABA_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x11e74)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_BARNABA_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_Barnaba_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Barnaba_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Barnaba_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Barnaba_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_Barnaba_03_05");
}

instance DIA_VLADAN_KQ404_HUXLAY(C_INFO) {
    NPC = 0xd4dc;
    NR = 1;
    CONDITION = DIA_VLADAN_KQ404_HUXLAY_CONDITION;
    INFORMATION = DIA_VLADAN_KQ404_HUXLAY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Huxlay is expecting me.";
}

func int DIA_VLADAN_KQ404_HUXLAY_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x100c6))) && (WLD_ISTIME(0, 0, 2, 0))) && ((KQ404_INEXTREMO_BIGCONCERT) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_KQ404_HUXLAY_INFO() {
    KQ404_VLADANCUTSCENEENABLE = 1;
    SELF.AIVAR[15] = TRUE;
    MDL_REMOVEOVERLAYMDS(SELF, HUMANSRELAXEDMDS);
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_KQ404_Huxlay_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_KQ404_Huxlay_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_KQ404_Huxlay_15_03");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_KQ404_Huxlay_03_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_KQ404_Huxlay_03_05");
    AI_LOGENTRY(TOPIC_KQ404, LOG_KQ404_VLADAN_NERVOUS);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "KQ404_BUTTON");
    NONE_922_VLADAN.AIVAR[4] = TRUE;
}

instance DIA_VLADAN_KQ404_HERE(C_INFO) {
    NPC = 0xd4dc;
    NR = 1;
    CONDITION = DIA_VLADAN_KQ404_HERE_CONDITION;
    INFORMATION = DIA_VLADAN_KQ404_HERE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_VLADAN_KQ404_HERE_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0x11100)) && ((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING))) && ((KQ404_VLADANCUTSCENE_DIALOGUE) == (TRUE))) && ((KQ404_INEXTREMO_BIGCONCERT) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_KQ404_HERE_INFO() {
    SELF.AIVAR[15] = FALSE;
    MDL_APPLYOVERLAYMDS(SELF, HUMANSRELAXEDMDS);
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_KQ404_Here_03_01");
    AI_FUNCTION(SELF, 0x11106);
    AI_OUTPUT(OTHER, SELF, "DIA_Vladan_KQ404_Here_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vladan_KQ404_Here_03_03");
    AI_FUNCTION(SELF, 0x11107);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, START);
}

func void KQ404_VLADANCUTSCENE_CAMERA_02() {
    WLD_SENDTRIGGER("KM_BROTHEL_SECRET_03");
    WLD_SENDUNTRIGGER("KM_BROTHEL_SECRET_02");
}

func void VLADAN_KQ404_ENABLECAMERA() {
    HERO.AIVAR[4] = TRUE;
    FF_APPLYONCEEXT(0xf190, 75, 4);
}

instance DIA_VLADAN_PICKPOCKET(C_INFO) {
    NPC = 0xd4dc;
    NR = 900;
    CONDITION = DIA_VLADAN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_VLADAN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_VLADAN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLADAN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x11108);
    INFO_ADDCHOICE(0x11108, DIALOG_BACK, 0x1110c);
    INFO_ADDCHOICE(0x11108, DIALOG_PICKPOCKET, 0x1110b);
}

func void DIA_VLADAN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 0x8e15, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8e15, 1);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x11108);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x11108);
}

func void DIA_VLADAN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x11108);
}

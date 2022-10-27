instance DIA_WOLFSON_EXIT(C_INFO) {
    NPC = 0xe40a;
    NR = 999;
    CONDITION = DIA_WOLFSON_EXIT_CONDITION;
    INFORMATION = DIA_WOLFSON_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WOLFSON_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WOLFSON_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WOLFSON_EVT_HEYYOU(C_INFO) {
    NPC = 0xe40a;
    NR = 1;
    CONDITION = DIA_WOLFSON_EVT_HEYYOU_CONDITION;
    INFORMATION = DIA_WOLFSON_EVT_HEYYOU_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_WOLFSON_EVT_HEYYOU_CONDITION() {
    return TRUE;
}

func void DIA_WOLFSON_EVT_HEYYOU_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon_EVT_HeyYou_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon_EVT_HeyYou_03_02");
}

instance DIA_WOLFSON_EVT_WHAT(C_INFO) {
    NPC = 0xe40a;
    NR = 2;
    CONDITION = DIA_WOLFSON_EVT_WHAT_CONDITION;
    INFORMATION = DIA_WOLFSON_EVT_WHAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What's the matter?";
}

func int DIA_WOLFSON_EVT_WHAT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x141e2)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WOLFSON_EVT_WHAT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_WolfSon_EVT_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon_EVT_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon_EVT_What_03_03");
}

instance DIA_WOLFSON_EVT_TRIALPRE(C_INFO) {
    NPC = 0xe40a;
    NR = 3;
    CONDITION = DIA_WOLFSON_EVT_TRIALPRE_CONDITION;
    INFORMATION = DIA_WOLFSON_EVT_TRIALPRE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Give me that axe.";
}

func int DIA_WOLFSON_EVT_TRIALPRE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x141e5)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WOLFSON_EVT_TRIALPRE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_WolfSon_EVT_TrialPre_15_01");
    CREATEINVITEMS(SELF, 0x9a9d, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x9a9d, 1);
    INFO_CLEARCHOICES(0x141e8);
    INFO_ADDCHOICE(0x141e8, "(Test your strength)", 0x141eb);
}

func void DIA_WOLFSON_EVT_TRIAL() {
    B_STANDUP();
    if ((OTHER.ATTRIBUTE[4]) >= (CONDITION_2HAXEHEAVYEVENT)) {
        B_MARVIN_USEFAKEAXE_WOLFSON();
        AI_WAITTILLEND(SELF, OTHER);
        AI_OUTPUT(SELF, OTHER, "DIA_WolfSon_EVT_Trial_03_01");
        AI_OUTPUT(OTHER, SELF, "DIA_WolfSon_EVT_Trial_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_WolfSon_EVT_Trial_03_03");
        B_GIVEPLAYERXP(XP_WOLFSONAXE_SUCCESS);
        NPC_EXCHANGEROUTINE(SELF, TOT);
    };
    AI_DROPITEM(OTHER, 0x9a9d);
    AI_OUTPUT(OTHER, SELF, "DIA_WolfSon_EVT_Trial_15_04");
    AI_WAIT(SELF, 0x3f800000);
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon_EVT_Trial_03_05");
    AI_TAKEITEM(SELF, ITMW_KM_2H_AXE_HEAVY_EVENT);
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon_EVT_Trial_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon_EVT_Trial_03_07");
    NPC_EXCHANGEROUTINE(SELF, TOT2);
    B_GIVEPLAYERXP(XP_WOLFSONAXE_FAIL);
    CREATEINVITEMS(SELF, 0x8643, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8643, 1);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WOLFSON_AFTEREVENT(C_INFO) {
    NPC = 0xe40a;
    NR = 4;
    CONDITION = DIA_WOLFSON_AFTEREVENT_CONDITION;
    INFORMATION = DIA_WOLFSON_AFTEREVENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_WOLFSON_AFTEREVENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x141e8)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WOLFSON_AFTEREVENT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon_AfterEvent_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

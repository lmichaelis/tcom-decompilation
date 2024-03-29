instance DIA_CHRONICLEMAN_EXIT(C_INFO) {
    NPC = 52290;
    NR = 999;
    CONDITION = DIA_CHRONICLEMAN_EXIT_CONDITION;
    INFORMATION = DIA_CHRONICLEMAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CHRONICLEMAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CHRONICLEMAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CHRONICLEMAN_KM_SUNNYDAY(C_INFO) {
    NPC = 52290;
    NR = 1;
    CONDITION = DIA_CHRONICLEMAN_KM_SUNNYDAY_CONDITION;
    INFORMATION = DIA_CHRONICLEMAN_KM_SUNNYDAY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CHRONICLEMAN_KM_SUNNYDAY_CONDITION() {
    return TRUE;
}

func void DIA_CHRONICLEMAN_KM_SUNNYDAY_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_ChronicleMan_KM_SunnyDay_03_01");
}

instance DIA_CHRONICLEMAN_KM_HELLOCHRONICLES(C_INFO) {
    NPC = 52290;
    NR = 2;
    CONDITION = DIA_CHRONICLEMAN_KM_HELLOCHRONICLES_CONDITION;
    INFORMATION = DIA_CHRONICLEMAN_KM_HELLOCHRONICLES_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What makes you so happy?";
}

func int DIA_CHRONICLEMAN_KM_HELLOCHRONICLES_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 73311)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CHRONICLEMAN_KM_HELLOCHRONICLES_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_ChronicleMan_KM_HelloChronicles_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_ChronicleMan_KM_HelloChronicles_03_02");
}

instance DIA_CHRONICLEMAN_KM_ABOUTKM(C_INFO) {
    NPC = 52290;
    NR = 1;
    CONDITION = DIA_CHRONICLEMAN_KM_ABOUTKM_CONDITION;
    INFORMATION = DIA_CHRONICLEMAN_KM_ABOUTKM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "And what did you create?";
}

func int DIA_CHRONICLEMAN_KM_ABOUTKM_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 73314)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CHRONICLEMAN_KM_ABOUTKM_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_ChronicleMan_KM_AboutKM_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_ChronicleMan_KM_AboutKM_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_ChronicleMan_KM_AboutKM_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_ChronicleMan_KM_AboutKM_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_ChronicleMan_KM_AboutKM_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_ChronicleMan_KM_AboutKM_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_ChronicleMan_KM_AboutKM_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_ChronicleMan_KM_AboutKM_03_08");
}

instance DIA_CHRONICLEMAN_GIVEMEKM(C_INFO) {
    NPC = 52290;
    NR = 2;
    CONDITION = DIA_CHRONICLEMAN_GIVEMEKM_CONDITION;
    INFORMATION = DIA_CHRONICLEMAN_GIVEMEKM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can I read these chronicles?";
}

func int DIA_CHRONICLEMAN_GIVEMEKM_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 73317)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CHRONICLEMAN_GIVEMEKM_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_ChronicleMan_GiveMeKM_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_ChronicleMan_GiveMeKM_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_ChronicleMan_GiveMeKM_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_ChronicleMan_GiveMeKM_15_04");
    NPC_EXCHANGEROUTINE(SELF, TOT);
    CREATEINVITEMS(SELF, 39851, 1);
    B_GIVEINVITEMS(SELF, OTHER, 39851, 1);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CHRONICLEMAN_AFTERKM(C_INFO) {
    NPC = 52290;
    NR = 3;
    CONDITION = DIA_CHRONICLEMAN_AFTERKM_CONDITION;
    INFORMATION = DIA_CHRONICLEMAN_AFTERKM_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_CHRONICLEMAN_AFTERKM_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 73320)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CHRONICLEMAN_AFTERKM_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_ChronicleMan_AfterKM_03_01");
    AI_STOPPROCESSINFOS(SELF);
}


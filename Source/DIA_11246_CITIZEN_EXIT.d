instance DIA_11246_CITIZEN_EXIT(C_INFO) {
    NPC = 53230;
    NR = 999;
    CONDITION = DIA_11246_CITIZEN_EXIT_CONDITION;
    INFORMATION = DIA_11246_CITIZEN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_11246_CITIZEN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_11246_CITIZEN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_11246_CITIZEN_HELLO1(C_INFO) {
    NPC = 53230;
    NR = 1;
    CONDITION = DIA_11246_CITIZEN_HELLO1_CONDITION;
    INFORMATION = DIA_11246_CITIZEN_HELLO1_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_11246_CITIZEN_HELLO1_CONDITION() {
    if ((HERO.GUILD) == (GIL_NONE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11246_CITIZEN_HELLO1_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_11246_Citizen_HELLO1_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_11246_Citizen_HELLO1_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_11246_Citizen_HELLO1_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_11246_Citizen_HELLO1_03_04");
    NPC_EXCHANGEROUTINE(SELF, TOT);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_11246_CITIZEN_AMBIENT(C_INFO) {
    NPC = 53230;
    NR = 2;
    CONDITION = DIA_11246_CITIZEN_AMBIENT_CONDITION;
    INFORMATION = DIA_11246_CITIZEN_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_11246_CITIZEN_AMBIENT_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 72295)) && (NPC_ISINSTATE(SELF, 61599))) && ((HERO.GUILD) == (GIL_NONE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11246_CITIZEN_AMBIENT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_11246_Citizen_Ambient_03_01");
    AI_STOPPROCESSINFOS(SELF);
}


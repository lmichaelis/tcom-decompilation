instance DIA_11270_HOBO_EXIT(C_INFO) {
    NPC = 55330;
    NR = 999;
    CONDITION = DIA_11270_HOBO_EXIT_CONDITION;
    INFORMATION = DIA_11270_HOBO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_11270_HOBO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_11270_HOBO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_11270_HOBO_MYHOLE(C_INFO) {
    NPC = 55330;
    NR = 1;
    CONDITION = DIA_11270_HOBO_MYHOLE_CONDITION;
    INFORMATION = DIA_11270_HOBO_MYHOLE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_11270_HOBO_MYHOLE_CONDITION() {
    return TRUE;
}

func void DIA_11270_HOBO_MYHOLE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_11270_Hobo_MyHole_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_11270_Hobo_MyHole_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_11270_HOBO_MYHOLE2(C_INFO) {
    NPC = 55330;
    NR = 2;
    CONDITION = DIA_11270_HOBO_MYHOLE2_CONDITION;
    INFORMATION = DIA_11270_HOBO_MYHOLE2_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_11270_HOBO_MYHOLE2_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 68044)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11270_HOBO_MYHOLE2_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_11270_Hobo_MyHole2_03_01");
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}


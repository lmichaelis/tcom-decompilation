instance DIA_CULUS_V2_EXIT(C_INFO) {
    NPC = 0xd712;
    NR = 999;
    CONDITION = DIA_CULUS_V2_EXIT_CONDITION;
    INFORMATION = DIA_CULUS_V2_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CULUS_V2_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CULUS_V2_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CULUS_V2_DIEDIEDIE(C_INFO) {
    NPC = 0xd712;
    NR = 1;
    CONDITION = DIA_CULUS_V2_DIEDIEDIE_CONDITION;
    INFORMATION = DIA_CULUS_V2_DIEDIEDIE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CULUS_V2_DIEDIEDIE_CONDITION() {
    return TRUE;
}

func void DIA_CULUS_V2_DIEDIEDIE_INFO() {
    NONE_11179_CULUS_V2.FLAGS = 0;
    AI_OUTPUT(SELF, OTHER, "DIA_Culus_V2_DieDieDie_03_01");
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}


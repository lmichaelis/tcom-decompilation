instance DIA_GARD_Q602_EXIT(C_INFO) {
    NPC = 60037;
    NR = 999;
    CONDITION = DIA_GARD_Q602_EXIT_CONDITION;
    INFORMATION = DIA_GARD_Q602_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GARD_Q602_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GARD_Q602_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GARD_Q602_BERSERK(C_INFO) {
    NPC = 60037;
    NR = 1;
    CONDITION = DIA_GARD_Q602_BERSERK_CONDITION;
    INFORMATION = DIA_GARD_Q602_BERSERK_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_GARD_Q602_BERSERK_CONDITION() {
    return TRUE;
}

func void DIA_GARD_Q602_BERSERK_INFO() {
    Q602_GARD_FLEE = 1;
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Q602_BERSERK_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Q602_BERSERK_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Q602_BERSERK_03_03");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q602_FLEE");
    MDL_APPLYOVERLAYMDS(SELF, "HUMANS_SPRINT.MDS");
}


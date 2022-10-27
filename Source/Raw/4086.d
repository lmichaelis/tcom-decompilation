instance DIA_VOLKERGUARD_EXIT(C_INFO) {
    NPC = 0xddcf;
    NR = 999;
    CONDITION = DIA_VOLKERGUARD_EXIT_CONDITION;
    INFORMATION = DIA_VOLKERGUARD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VOLKERGUARD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VOLKERGUARD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VOLKERGUARD_SQ116_WAITASEC(C_INFO) {
    NPC = 0xddcf;
    NR = 1;
    CONDITION = DIA_VOLKERGUARD_SQ116_WAITASEC_CONDITION;
    INFORMATION = DIA_VOLKERGUARD_SQ116_WAITASEC_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_VOLKERGUARD_SQ116_WAITASEC_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0xfe74)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VOLKERGUARD_SQ116_WAITASEC_INFO() {
    SELF.AIVAR[15] = FALSE;
    AI_OUTPUT(SELF, OTHER, "DIA_VolkerGuard_SQ116_WaitASec_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_VolkerGuard_SQ116_WaitASec_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_VolkerGuard_SQ116_WaitASec_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_VolkerGuard_SQ116_WaitASec_03_04");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, TOT);
}

instance DIA_VOLKERGUARD_LEAVEMEALONE(C_INFO) {
    NPC = 0xddcf;
    NR = 1;
    CONDITION = DIA_VOLKERGUARD_LEAVEMEALONE_CONDITION;
    INFORMATION = DIA_VOLKERGUARD_LEAVEMEALONE_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_VOLKERGUARD_LEAVEMEALONE_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((NPC_KNOWSINFO(OTHER, 0xfe74)) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VOLKERGUARD_LEAVEMEALONE_INFO() {
    DIA_IMBUSY_ANGRY();
}


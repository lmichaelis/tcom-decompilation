instance DIA_BANDIT_01_QA305_EXIT(C_INFO) {
    NPC = 55180;
    NR = 999;
    CONDITION = DIA_BANDIT_01_QA305_EXIT_CONDITION;
    INFORMATION = DIA_BANDIT_01_QA305_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BANDIT_01_QA305_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BANDIT_01_QA305_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BANDIT_QA305_FOUND(C_INFO) {
    NPC = 55180;
    NR = 1;
    CONDITION = DIA_BANDIT_QA305_FOUND_CONDITION;
    INFORMATION = DIA_BANDIT_QA305_FOUND_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BANDIT_QA305_FOUND_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 70837))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BANDIT_QA305_FOUND_INFO() {
    SELF.AIVAR[52] = TRUE;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Bandit_QA305_Found_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Bandit_QA305_Found_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Bandit_QA305_Found_03_03");
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}


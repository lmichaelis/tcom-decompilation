instance DIA_POTIONSELLER_EXIT(C_INFO) {
    NPC = 52596;
    NR = 999;
    CONDITION = DIA_POTIONSELLER_EXIT_CONDITION;
    INFORMATION = DIA_POTIONSELLER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_POTIONSELLER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_POTIONSELLER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_POTIONSELLER_NS66(C_INFO) {
    NPC = 52596;
    NR = 1;
    CONDITION = DIA_POTIONSELLER_NS66_CONDITION;
    INFORMATION = DIA_POTIONSELLER_NS66_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_POTIONSELLER_NS66_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_POTIONSELLER_NS66_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_PotionSeller_NS66_03_01");
    AI_STOPPROCESSINFOS(SELF);
}


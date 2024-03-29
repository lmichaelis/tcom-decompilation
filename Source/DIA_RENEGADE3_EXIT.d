instance DIA_RENEGADE3_EXIT(C_INFO) {
    NPC = 56237;
    NR = 999;
    CONDITION = DIA_RENEGADE3_EXIT_CONDITION;
    INFORMATION = DIA_RENEGADE3_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_RENEGADE3_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_RENEGADE3_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_RENEGADE3_AMBIENT(C_INFO) {
    NPC = 56237;
    NR = 6;
    CONDITION = DIA_RENEGADE3_AMBIENT_CONDITION;
    INFORMATION = DIA_RENEGADE3_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_RENEGADE3_AMBIENT_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RENEGADE3_AMBIENT_INFO() {
    DIA_IMBUSY_ANGRY();
}


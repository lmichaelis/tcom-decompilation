instance DIA_MAIWEN_EXIT(C_INFO) {
    NPC = 0xc8c2;
    NR = 999;
    CONDITION = DIA_MAIWEN_EXIT_CONDITION;
    INFORMATION = DIA_MAIWEN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_MAIWEN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_MAIWEN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MAIWEN_Q101_AMBIENT(C_INFO) {
    NPC = 0xc8c2;
    NR = 1;
    CONDITION = DIA_MAIWEN_Q101_AMBIENT_CONDITION;
    INFORMATION = DIA_MAIWEN_Q101_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Hey, how was your trip?";
}

func int DIA_MAIWEN_Q101_AMBIENT_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MAIWEN_Q101_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_Q101_Ambient_15_00");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_Ambient_01_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_Ambient_01_02");
    };
    AI_STOPPROCESSINFOS(SELF);
}

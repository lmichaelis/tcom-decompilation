instance DIA_THULSA_EXIT(C_INFO) {
    NPC = 55068;
    NR = 999;
    CONDITION = DIA_THULSA_EXIT_CONDITION;
    INFORMATION = DIA_THULSA_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_THULSA_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_THULSA_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_THULSA_AMBIENT(C_INFO) {
    NPC = 55068;
    NR = 1;
    CONDITION = DIA_THULSA_AMBIENT_CONDITION;
    INFORMATION = DIA_THULSA_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_THULSA_AMBIENT_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THULSA_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    if ((SQ305_MARVINCANUSEBLAKELEVER) == (2)) {
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Thulsa_Ambient_03_03");
            AI_OUTPUT(SELF, OTHER, "DIA_Thulsa_Ambient_03_04");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Thulsa_Ambient_03_05");
        };
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Thulsa_Ambient_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Thulsa_Ambient_03_02");
    };
    AI_STOPPROCESSINFOS(SELF);
}


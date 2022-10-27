instance DIA_HASMETH_EXIT(C_INFO) {
    NPC = 0xd71a;
    NR = 999;
    CONDITION = DIA_HASMETH_EXIT_CONDITION;
    INFORMATION = DIA_HASMETH_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HASMETH_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HASMETH_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HASMETH_AMBIENT(C_INFO) {
    NPC = 0xd71a;
    NR = 1;
    CONDITION = DIA_HASMETH_AMBIENT_CONDITION;
    INFORMATION = DIA_HASMETH_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HASMETH_AMBIENT_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HASMETH_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    if ((SQ305_MARVINCANUSEBLAKELEVER) == (2)) {
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Hasmeth_AMBIENT_03_01");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Hasmeth_AMBIENT_03_02");
        };
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Hasmeth_AMBIENT_03_03");
            AI_OUTPUT(SELF, OTHER, "DIA_Hasmeth_AMBIENT_03_04");
        } else if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Hasmeth_AMBIENT_03_05");
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Hasmeth_AMBIENT_03_06");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hasmeth_AMBIENT_03_07");
    };
    AI_STOPPROCESSINFOS(SELF);
}


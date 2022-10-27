instance DIA_MALEBATH_EXIT(C_INFO) {
    NPC = 0xd010;
    NR = 999;
    CONDITION = DIA_MALEBATH_EXIT_CONDITION;
    INFORMATION = DIA_MALEBATH_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_MALEBATH_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_MALEBATH_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MALEBATH_HELLO(C_INFO) {
    NPC = 0xd010;
    NR = 1;
    CONDITION = DIA_MALEBATH_HELLO_CONDITION;
    INFORMATION = DIA_MALEBATH_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MALEBATH_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_MALEBATH_AMBIENT_DIALOG() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_MaleBath_Hello_03_02");
}

func void DIA_MALEBATH_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_MaleBath_Hello_03_01");
    DIA_MALEBATH_AMBIENT_DIALOG();
    AI_OUTPUT(SELF, OTHER, "DIA_MaleBath_Hello_03_03");
}

instance DIA_MALEBATH_COST(C_INFO) {
    NPC = 0xd010;
    NR = 1;
    CONDITION = DIA_MALEBATH_COST_CONDITION;
    INFORMATION = DIA_MALEBATH_COST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How much will it cost me?";
}

func int DIA_MALEBATH_COST_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1294e)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MALEBATH_COST_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_MaleBath_Cost_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_MaleBath_Cost_03_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_MaleBath_Cost_03_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_MaleBath_Cost_03_04");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MALEBATH_AMBIENT(C_INFO) {
    NPC = 0xd010;
    NR = 1;
    CONDITION = DIA_MALEBATH_AMBIENT_CONDITION;
    INFORMATION = DIA_MALEBATH_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_MALEBATH_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x12952)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MALEBATH_AMBIENT_INFO() {
    DIA_MALEBATH_AMBIENT_DIALOG();
    AI_STOPPROCESSINFOS(SELF);
}


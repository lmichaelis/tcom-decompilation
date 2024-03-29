instance DIA_BODYGUARD03_EXIT(C_INFO) {
    NPC = 58426;
    NR = 999;
    CONDITION = DIA_BODYGUARD03_EXIT_CONDITION;
    INFORMATION = DIA_BODYGUARD03_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BODYGUARD03_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BODYGUARD03_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BODYGUARD03_GOAWAY(C_INFO) {
    NPC = 58426;
    NR = 1;
    CONDITION = DIA_BODYGUARD03_GOAWAY_CONDITION;
    INFORMATION = DIA_BODYGUARD03_GOAWAY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_BODYGUARD03_GOAWAY_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BODYGUARD03_GOAWAY_INFO() {
    NPC_INITAMBIENTS(SELF, 4);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Bodyguard03_GoAway_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Bodyguard03_GoAway_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Bodyguard03_GoAway_03_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (4)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Bodyguard03_GoAway_03_04");
    };
    AI_STOPPROCESSINFOS(SELF);
}


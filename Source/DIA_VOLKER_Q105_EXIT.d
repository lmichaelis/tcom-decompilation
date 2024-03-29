instance DIA_VOLKER_Q105_EXIT(C_INFO) {
    NPC = 53406;
    NR = 999;
    CONDITION = DIA_VOLKER_Q105_EXIT_CONDITION;
    INFORMATION = DIA_VOLKER_Q105_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VOLKER_Q105_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VOLKER_Q105_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VOLKER_Q105_AMBIENT(C_INFO) {
    NPC = 53406;
    NR = 1;
    CONDITION = DIA_VOLKER_Q105_AMBIENT_CONDITION;
    INFORMATION = DIA_VOLKER_Q105_AMBIENT_INFO;
    IMPORTANT = TRUE;
    PERMANENT = TRUE;
}

func int DIA_VOLKER_Q105_AMBIENT_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VOLKER_Q105_AMBIENT_INFO() {
    var int RANDOM;
    RANDOM = HLP_RANDOM(2);
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    if ((RANDOM) == (0)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q105_Ambient_03_01");
    };
    if ((RANDOM) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q105_Ambient_03_02");
    };
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}


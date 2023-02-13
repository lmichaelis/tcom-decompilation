instance DIA_HOOKER_EXIT_02(C_INFO) {
    NPC = 54752;
    NR = 999;
    CONDITION = DIA_HOOKER_EXIT_02_CONDITION;
    INFORMATION = DIA_HOOKER_EXIT_02_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HOOKER_EXIT_02_CONDITION() {
    return TRUE;
}

func void DIA_HOOKER_EXIT_02_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOOKER_HELLOHOOKER02(C_INFO) {
    NPC = 54752;
    NR = 1;
    CONDITION = DIA_HOOKER_HELLOHOOKER02_CONDITION;
    INFORMATION = DIA_HOOKER_HELLOHOOKER02_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOOKER_HELLOHOOKER02_CONDITION() {
    if ((HERO.GUILD) == (GIL_NONE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOOKER_HELLOHOOKER02_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Hooker_HelloHooker02_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hooker_HelloHooker02_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOOKER_HOOKERAMBIENT02(C_INFO) {
    NPC = 54752;
    NR = 2;
    CONDITION = DIA_HOOKER_HOOKERAMBIENT02_CONDITION;
    INFORMATION = DIA_HOOKER_HOOKERAMBIENT02_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HOOKER_HOOKERAMBIENT02_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 72022)) || ((HERO.GUILD) != (GIL_NONE))) {
        if (NPC_ISINSTATE(SELF, 61599)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOOKER_HOOKERAMBIENT02_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Hooker_HookerAmbient02_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hooker_HookerAmbient02_03_02");
    AI_STOPPROCESSINFOS(SELF);
}


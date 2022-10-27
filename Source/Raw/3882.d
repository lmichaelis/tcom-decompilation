instance DIA_13779_HOBO_EXIT(C_INFO) {
    NPC = 0xcf95;
    NR = 999;
    CONDITION = DIA_13779_HOBO_EXIT_CONDITION;
    INFORMATION = DIA_13779_HOBO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13779_HOBO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13779_HOBO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13779_HOBO_TRAP57(C_INFO) {
    NPC = 0xcf95;
    NR = 1;
    CONDITION = DIA_13779_HOBO_TRAP57_CONDITION;
    INFORMATION = DIA_13779_HOBO_TRAP57_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13779_HOBO_TRAP57_CONDITION() {
    if ((TRAP57_ATTACK) == (FALSE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13779_HOBO_TRAP57_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_13779_Hobo_TRAP57_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13779_Hobo_TRAP57_03_02");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(HERO, 0x171c6);
}


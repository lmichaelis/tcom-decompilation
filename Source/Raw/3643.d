var int SECRET_13337_MILITIAEXP = 0;
instance DIA_13337_MILITIA_EXIT(C_INFO) {
    NPC = 0xcc4f;
    NR = 999;
    CONDITION = DIA_13337_MILITIA_EXIT_CONDITION;
    INFORMATION = DIA_13337_MILITIA_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13337_MILITIA_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13337_MILITIA_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13337_MILITIA_EASTEREGG(C_INFO) {
    NPC = 0xcc4f;
    NR = 1;
    CONDITION = DIA_13337_MILITIA_EASTEREGG_CONDITION;
    INFORMATION = DIA_13337_MILITIA_EASTEREGG_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_13337_MILITIA_EASTEREGG_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13337_MILITIA_EASTEREGG_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_13337_Militia_EasterEgg_03_01");
    if ((SECRET_13337_MILITIAEXP) == (FALSE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_13337_Militia_EasterEgg_03_02");
        B_GIVEPLAYERXP(XP_EVENT_FALLOUT3_EASTEREGG);
        SECRET_13337_MILITIAEXP = TRUE;
    };
    AI_STOPPROCESSINFOS(SELF);
}

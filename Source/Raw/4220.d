instance DIA_WOODCUTTER_SILBACH_EXIT(C_INFO) {
    NPC = 0xe003;
    NR = 999;
    CONDITION = DIA_WOODCUTTER_SILBACH_EXIT_CONDITION;
    INFORMATION = DIA_WOODCUTTER_SILBACH_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WOODCUTTER_SILBACH_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WOODCUTTER_SILBACH_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WOODCUTTER_SILBACH_HELLO(C_INFO) {
    NPC = 0xe003;
    NR = 1;
    CONDITION = DIA_WOODCUTTER_SILBACH_HELLO_CONDITION;
    INFORMATION = DIA_WOODCUTTER_SILBACH_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_WOODCUTTER_SILBACH_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_WOODCUTTER_SILBACH_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_WoodCutter_Silbach_HELLO_03_01");
}

instance DIA_WOODCUTTER_SILBACH_WHAT(C_INFO) {
    NPC = 0xe003;
    NR = 1;
    CONDITION = DIA_WOODCUTTER_SILBACH_WHAT_CONDITION;
    INFORMATION = DIA_WOODCUTTER_SILBACH_WHAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "And what exactly are you doing?";
}

func int DIA_WOODCUTTER_SILBACH_WHAT_CONDITION() {
    return TRUE;
}

func void DIA_WOODCUTTER_SILBACH_WHAT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_WoodCutter_Silbach_What_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_WoodCutter_Silbach_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_WoodCutter_Silbach_What_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_WoodCutter_Silbach_What_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_WoodCutter_Silbach_What_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_WoodCutter_Silbach_What_03_06");
    if ((HERO_HACKCHANCE) != (100)) {
        if ((HERO_HACKCHANCE) < (95)) {
            B_UPGRADE_HERO_HACKCHANCE(5);
        } else {
            B_UPGRADE_HERO_HACKCHANCE((100) - (HERO_HACKCHANCE));
        };
    };
    LOG_CREATETOPIC(TOPIC_EXTRACTION, LOG_NOTE);
    AI_LOGENTRY(TOPIC_EXTRACTION, LOG_WOODCUTTING_INFO);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, TOT);
}

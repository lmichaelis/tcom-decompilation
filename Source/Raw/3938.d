instance DIA_GROEN_EXIT(C_INFO) {
    NPC = 0xd89e;
    NR = 999;
    CONDITION = DIA_GROEN_EXIT_CONDITION;
    INFORMATION = DIA_GROEN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GROEN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GROEN_EXIT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_EXIT_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GROEN_HELLO(C_INFO) {
    NPC = 0xd89e;
    NR = 1;
    CONDITION = DIA_GROEN_HELLO_CONDITION;
    INFORMATION = DIA_GROEN_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GROEN_HELLO_CONDITION() {
    if ((NPC_GETDISTTOWP(SELF, RESERVED_CONST_STRING_76)) <= (0xc80)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GROEN_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_HELLO_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_HELLO_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_HELLO_03_03");
    INFO_CLEARCHOICES(0x12809);
    INFO_ADDCHOICE(0x12809, "I'm not interested.", 0x1280c);
}

func void DIA_GROEN_HELLO_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Groen_HELLO_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_HELLO_No_03_02");
    INFO_CLEARCHOICES(0x12809);
    AI_RESETFACEANI(SELF);
}

instance DIA_GROEN_SQ309(C_INFO) {
    NPC = 0xd89e;
    NR = 1;
    CONDITION = DIA_GROEN_SQ309_CONDITION;
    INFORMATION = DIA_GROEN_SQ309_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Nice stall you got here.";
}

func int DIA_GROEN_SQ309_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ309)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1274d))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GROEN_SQ309_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Groen_SQ309_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_SQ309_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_SQ309_03_03");
    INFO_CLEARCHOICES(0x1280d);
    INFO_ADDCHOICE(0x1280d, "Do you have all the necessary permits?", 0x12812);
    INFO_ADDCHOICE(0x1280d, "How are your goods different from Mailor's?", 0x12810);
}

func void DIA_GROEN_SQ309_DIFFERENCE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Groen_SQ309_Difference_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_SQ309_Difference_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_SQ309_Difference_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Groen_SQ309_Difference_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_SQ309_Difference_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_SQ309_Difference_03_06");
    INFO_ADDCHOICE(0x1280d, "Local artisans, do you have someone specific in mind?", 0x12811);
}

func void DIA_GROEN_SQ309_DIFFERENCE_LOCAL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Groen_SQ309_Local_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_SQ309_Local_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_SQ309_Local_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_SQ309_Local_03_04");
    AI_LOGENTRY(TOPIC_SQ309, LOG_SQ309_GROEN_INFO);
}

func void DIA_GROEN_SQ309_LEGAL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Groen_SQ309_Legal_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_SQ309_Legal_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Mailor_SQ309_15_08");
    B_USEFAKESCROLL_MARVIN();
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_SQ309_Legal_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Groen_SQ309_Legal_03_04");
    AI_LOGENTRY(TOPIC_SQ309, LOG_SQ309_GROEN_DOCS);
}

instance DIA_GROEN_AMBIENT(C_INFO) {
    NPC = 0xd89e;
    NR = 990;
    CONDITION = DIA_GROEN_AMBIENT_CONDITION;
    INFORMATION = DIA_GROEN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What's new?";
}

func int DIA_GROEN_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x12809)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GROEN_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew");
    if (!(NPC_KNOWSINFO(OTHER, 0x1280d))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Groen_Ambient_03_01");
    };
    if (NPC_KNOWSINFO(OTHER, 0x1280d)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Groen_Ambient_03_02");
    };
}

instance DIA_GROEN_PICKPOCKET(C_INFO) {
    NPC = 0xd89e;
    NR = 900;
    CONDITION = DIA_GROEN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_GROEN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_GROEN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GROEN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x12816);
    INFO_ADDCHOICE(0x12816, DIALOG_BACK, 0x1281a);
    INFO_ADDCHOICE(0x12816, DIALOG_PICKPOCKET, 0x12819);
}

func void DIA_GROEN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x12816);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x12816);
}

func void DIA_GROEN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x12816);
}


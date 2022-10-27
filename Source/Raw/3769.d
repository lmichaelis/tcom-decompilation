instance DIA_RAHELA_EXIT(C_INFO) {
    NPC = 0xd4d8;
    NR = 999;
    CONDITION = DIA_RAHELA_EXIT_CONDITION;
    INFORMATION = DIA_RAHELA_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_RAHELA_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_RAHELA_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_RAHELA_HELLO(C_INFO) {
    NPC = 0xd4d8;
    NR = 1;
    CONDITION = DIA_RAHELA_HELLO_CONDITION;
    INFORMATION = DIA_RAHELA_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_RAHELA_HELLO_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((LOG_GETSTATUS(MIS_FAQ002)) != (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAHELA_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_HELLO_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Rahela_HELLO_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_HELLO_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_HELLO_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Rahela_HELLO_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_HELLO_03_06");
}

instance DIA_RAHELA_FIT(C_INFO) {
    NPC = 0xd4d8;
    NR = 90;
    CONDITION = DIA_RAHELA_FIT_CONDITION;
    INFORMATION = DIA_RAHELA_FIT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You don't look like the kind of person who would fit in here.";
}

func int DIA_RAHELA_FIT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x11081)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAHELA_FIT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Rahela_Fit_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Fit_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Rahela_Fit_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Fit_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Fit_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Rahela_Fit_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Fit_03_07");
}

instance DIA_RAHELA_WHO(C_INFO) {
    NPC = 0xd4d8;
    NR = 3;
    CONDITION = DIA_RAHELA_WHO_CONDITION;
    INFORMATION = DIA_RAHELA_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What's your name?";
}

func int DIA_RAHELA_WHO_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x11081)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAHELA_WHO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Rahela_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Who_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Rahela_Who_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Who_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Who_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Rahela_Who_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Who_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Who_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Who_03_09");
}

instance DIA_RAHELA_JOB(C_INFO) {
    NPC = 0xd4d8;
    NR = 4;
    CONDITION = DIA_RAHELA_JOB_CONDITION;
    INFORMATION = DIA_RAHELA_JOB_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How's the work going?";
}

func int DIA_RAHELA_JOB_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x11081)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAHELA_JOB_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Rahela_Job_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Job_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Job_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Rahela_Job_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Job_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Job_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Job_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Rahela_Job_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Job_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_Job_03_10");
}

instance DIA_RAHELA_FAQ002INFORMATION(C_INFO) {
    NPC = 0xd4d8;
    NR = 120;
    CONDITION = DIA_RAHELA_FAQ002INFORMATION_CONDITION;
    INFORMATION = DIA_RAHELA_FAQ002INFORMATION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Was there a boy here recently with his hair in a ponytail?";
}

func int DIA_RAHELA_FAQ002INFORMATION_CONDITION() {
    if (((LOG_GETSTATUS(MIS_FAQ002)) == (LOG_RUNNING)) && ((FAQ002_INFOFROMORTWIN) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAHELA_FAQ002INFORMATION_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Rahela_FAQ002Information_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_FAQ002Information_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Rahela_FAQ002Information_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_FAQ002Information_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_FAQ002Information_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Rahela_FAQ002Information_03_06");
    FAQ002_KATHIATALKABOUTQUESTFAQ002 = TRUE;
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_FAQ002, LOG_FAQ002_RAHELA_KAF);
}

instance DIA_RAHELA_AMBIENT(C_INFO) {
    NPC = 0xd4d8;
    NR = 870;
    CONDITION = DIA_RAHELA_AMBIENT_CONDITION;
    INFORMATION = DIA_RAHELA_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_RAHELA_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1108a)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAHELA_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    B_SAY(SELF, OTHER, "$IMBUSY_CALM");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_RAHELA_PICKPOCKET(C_INFO) {
    NPC = 0xd4d8;
    NR = 900;
    CONDITION = DIA_RAHELA_PICKPOCKET_CONDITION;
    INFORMATION = DIA_RAHELA_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40_FEMALE;
}

func int DIA_RAHELA_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAHELA_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x11093);
    INFO_ADDCHOICE(0x11093, DIALOG_BACK, 0x11097);
    INFO_ADDCHOICE(0x11093, DIALOG_PICKPOCKET, 0x11096);
}

func void DIA_RAHELA_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x11093);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x11093);
}

func void DIA_RAHELA_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x11093);
}

